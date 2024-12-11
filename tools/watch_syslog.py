#!/usr/bin/env python3

# Watch and capture ARI packets from the running idevicesyslog
# You need to have permissions for executing the dumpcap (you have to be part of the "wireshark" group or run this as sudo)
# Inspired / parts from https://github.com/seemoo-lab/internalblue/blob/cd75e8a747873855d4e2b310a2e6f52ae4217400/internalblue/cli.py#L1 (MIT License)

import time
import re
import io
import os
import subprocess
from threading import Timer
import struct
import argparse
from shutil import which

class WatchSyslog:
    def __init__(self):
        self.running = False
        self.wireshark_process = None
        self.syslog_process = None
        self.poll_timer = None
        self.pcap_data_link_type = 147 # Is DLT_USER_0
        self.start_time = time.time()

    def _spawnDeviceSyslog(self):
        if which("idevicesyslog") is None:
            print("idevicesyslog not found!")
            return False

        DEVNULL = open(os.devnull, "wb")

        self.syslog_process = subprocess.Popen(
            'idevicesyslog',
            stdout=subprocess.PIPE,
            stderr=DEVNULL,
        )

        return True

    def _spawnWireshark(self):
        # Global Header Values
        PCAP_GLOBAL_HEADER_FMT = "@ I H H i I I I "
        PCAP_MAGICAL_NUMBER = 2712847316
        PCAP_MJ_VERN_NUMBER = 2
        PCAP_MI_VERN_NUMBER = 4
        PCAP_LOCAL_CORECTIN = 0
        PCAP_ACCUR_TIMSTAMP = 0
        PCAP_MAX_LENGTH_CAP = 65535
        PCAP_DATA_LINK_TYPE = self.pcap_data_link_type

        pcap_header = struct.pack(
            PCAP_GLOBAL_HEADER_FMT,
            PCAP_MAGICAL_NUMBER,
            PCAP_MJ_VERN_NUMBER,
            PCAP_MI_VERN_NUMBER,
            PCAP_LOCAL_CORECTIN,
            PCAP_ACCUR_TIMSTAMP,
            PCAP_MAX_LENGTH_CAP,
            PCAP_DATA_LINK_TYPE,
        )

        DEVNULL = open(os.devnull, "wb")

        # Check if wireshark or wireshark-gtk is installed. If both are
        # present, default to wireshark.
        if os.path.isfile("/usr/bin/wireshark"):
            wireshark_binary = "wireshark"
        elif os.path.isfile("/usr/bin/wireshark-gtk"):
            wireshark_binary = "wireshark-gtk"
        elif os.path.isfile("/Applications/Wireshark.app/Contents/MacOS/Wireshark"):
            wireshark_binary = "/Applications/Wireshark.app/Contents/MacOS/Wireshark"
        else:
            print("Wireshark not found!")
            return False

        self.wireshark_process = subprocess.Popen(
            [wireshark_binary, "-k", "-i", "-"],
            stdin=subprocess.PIPE,
            stderr=DEVNULL,
        )
        self.wireshark_process.stdin.write(pcap_header)

        self.poll_timer = Timer(3, self._pollTimer, ())
        self.poll_timer.start()
        return True

    def _pollTimer(self):
        if self.running and self.wireshark_process is not None:
            if self.wireshark_process.poll() == 0:
                # Process has ended
                print("_pollTimer: Wireshark has terminated")
                self.killMonitor()
                self.wireshark_process = None
            elif self.syslog_process.poll() == 0:
                print("_pollTimer: Syslog has terminated")
                self.killMonitor()
                self.syslog_process = None
            else:
                # schedule new timer
                self.poll_timer = Timer(3, self._pollTimer, ())
                self.poll_timer.start()

    def startMonitor(self):
        if self.running:
            print("Monitor already running!")
            return False

        if self.wireshark_process is None:
            if not self._spawnWireshark():
                print("Unable to start Wireshark.")
                return False

        if self.syslog_process is None:
            if not self._spawnDeviceSyslog():
                print("Unable to start Syslog")
                return False

        self.running = True

        print("Monitor started.")

        for line in io.TextIOWrapper(self.syslog_process.stdout, encoding="utf-8"):
            bincontent = re.search(r".*CommCenter.*Bin=\['(.*)'\]", line)
            if bincontent is not None:
                self.feedWireshark(bincontent.group(1).lower().replace(" ", ""))

        return None

    def feedWireshark(self, data):
        packet = bytes.fromhex(data)
        length = len(packet)
        ts_sec = (
            int(time.time() - self.start_time)
        )  # + timestamp.minute*60 + timestamp.hour*60*60
        ts_usec = int(time.time() * 1000 - self.start_time * 1000)
        pcap_packet = (
                struct.pack("@ I I I I", ts_sec, ts_usec, length, length) + packet
        )
        try:
            self.wireshark_process.stdin.write(pcap_packet)
            self.wireshark_process.stdin.flush()
        except IOError as e:
            print("Monitor: broken pipe. terminate." f"{e}")
            self.killMonitor()

    def stopMonitor(self):
        if not self.running:
            print("Monitor is not running!")
            return False
        self.running = False
        print("Monitor stopped.")
        return None

    def killMonitor(self):
        if self.running:
            self.stopMonitor()
        if self.poll_timer is not None:
            self.poll_timer.cancel()
            self.poll_timer = None
        if self.wireshark_process is not None:
            print("Killing Wireshark process...")
            try:
                self.wireshark_process.terminate()
                self.wireshark_process.wait()
            except OSError:
                print("Error during wireshark process termination")
            self.wireshark_process = None
        if self.syslog_process is not None:
            print("Killing Syslog process...")
            try:
                self.syslog_process.terminate()
                self.syslog_process.wait()
            except OSError:
                print("Error during syslog process termination")
            self.syslog_process = None

# Call script
if __name__ == "__main__":
    arg_parser = argparse.ArgumentParser(description="Attaches to the idevicesyslog and pipes the output to wireshark for live monitoring.")

    args = arg_parser.parse_args()

    watcher = WatchSyslog()

    watcher.startMonitor()

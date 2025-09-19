/**
 * Contains various hooked functions and callbacks used by the python interface.
 * This script will run on the iPhone with Frida and the exported functions are callable via python.
 * 
 * @author Tobias Kröll
 */
class ARIFunctions {
  constructor() {
    // Reusable buffer for the payload we replay
    this.payload_buffer = Memory.alloc(0x8050); //maximum packet length is 0x7fff

    // Print debug messages
    this.print_debug = false;
    // Should the sequence number be automatically corrected?
    this.fix_bb_seq_num = true;
    // Should the script send all ARI messages to python?
    this.catch_msgs = false;

    let libAriServer = Process.getModuleByName('libARIServer.dylib');
    this._ARIServer_base = libAriServer.base;
    this._InboundMsgCb_addr = libAriServer.getExportByName("_ZN9AriHostRt12InboundMsgCBEPhm");
    this._InboundMsgCb = new NativeFunction(this._InboundMsgCb_addr, "int64", [
      "pointer",
      "int64",
    ]);
    this.SendRaw = libAriServer.getExportByName("_ZN9AriHostRt7SendRawEPhjj");
    this.SendRawInternal = libAriServer.getExportByName("_ZN9AriHostRt18sendRawInternal_nlEPhj");
    this.SendRawFunc = new NativeFunction(this.SendRaw, "int64", [
      "pointer",
      "int32",
      "int32",
    ]);

    this.setupInterceptors();
  }

  setupInterceptors() {
    var self = this

    Interceptor.attach(self._InboundMsgCb_addr, {
      onEnter: function(args) {
          if (self.catch_msgs === false) {
            return
          }

          if (self.print_debug) {
            console.log("AriHostRt::InboundMsgCb");
            console.log("seq: " + self.getAriSeqNum());
          }

          var dst = this.context.x0;
          var len = parseInt(this.context.x1);

          var payload_array = dst.readByteArray(len);

          send("ari_inbound_msg_cb", payload_array);
      }
    });

    // We have to attach to the internal function, because otherwise we seem to miss some messages that the syslog still gets.
    // For example the "CsiGetCurrentBootStateReq" message on chip restart is otherwise not intercepted
    Interceptor.attach(self.SendRawInternal, {
      onEnter: function(args) {
          if (self.catch_msgs === false) {
            return
          }

          if (self.print_debug) {
            console.log("AriHostRt::SendRawInternal");
            console.log("seq: " + self.getAriSeqNum());
          }

          var dst = this.context.x1;
          var len = parseInt(this.context.x2);

          var payload_array = dst.readByteArray(len);

          send("ari_send_raw", payload_array);
      }
    });
  }

  preparePayload(payload) {
    const payload_array = [];

    for (var i = 0; i < payload.length; i += 2) {
      payload_array.push(parseInt(payload.substring(i, i + 2), 16));
    }

    if (this.fix_bb_seq_num) {
      if (this._SeqNumVar !== undefined && this._SeqNumVar !== null) {
        var bb_seq_num = this.getAriSeqNum() + 1;

        // Correct the sequence number.
        // We do this here because there are also calls that do not originate from us,
        // so we can only get it correct by fixing sequence numbers for our own calls with
        // the current seq num from the process.
        payload_array[5] =
          (payload_array[5] & 0b00000001) | ((bb_seq_num & 0b00001111111) << 1);
        payload_array[6] =
          (payload_array[6] & 0b11111110) | ((bb_seq_num & 0b00010000000) >> 7);
        payload_array[8] =
          (payload_array[8] & 0b11111000) | ((bb_seq_num & 0b11100000000) >> 8);
      } else {
        console.log("  ! Could not automatically fix sequence number, because no variable address has been set / is available.");
      }
    }

    // Copy to buffer
    Memory.writeByteArray(this.payload_buffer, payload_array);
  }

  sendToCC(payload) {
    this.preparePayload(payload);

    // Log what we fuzz
    if (this.print_debug) {
      console.log(ptr(this.payload_buffer).readByteArray(payload.length / 2));
    }

    // Pass the correct parameters to InboundMsgCb
    this._InboundMsgCb(this.payload_buffer, payload.length / 2);
  }

  sendToBB(payload) {
    this.preparePayload(payload);

    // Log what we inject
    if (this.print_debug) {
      console.log(ptr(this.payload_buffer).readByteArray(payload.length / 2));
    }

    // Pass the correct parameters to SendRaw
    this.SendRawFunc(this.payload_buffer, payload.length / 2, 0x4e20);
  }

  setSymbols(ios_version) {
    if (ios_version == "arm64_13.7") {
      this._GetInstance_result = this._ARIServer_base.add(0x1902f320); // Pointer to the result of AriHostRt::GetInstance(void)::instance for pre-A12 iOS 13.7
      this._SeqNumVar = this._ARIServer_base.add(0x1902f328);

      console.log("  * Set symbols to pre-A12 iOS 13.7");
    } else if (ios_version == "arm64_14.2") {
      this._GetInstance_result = this._ARIServer_base.add(0x16965b70);

      console.log("  * Set symbols to pre-A12 iOS 14.2");
    } else if (ios_version == "arm64_14.3b") {
      this._GetInstance_result = this._ARIServer_base.add(0x174e0fe8);

      console.log("  * Set symbols to pre-A12 iOS 14.3b 18C5054c");
    } else if (ios_version == "arm64_14.3") {
      this._GetInstance_result = this._ARIServer_base.add(0x176ed7a8);
      this._SeqNumVar = this._ARIServer_base.add(0x12645028);

      console.log("  * Set symbols to pre-A12 iOS 14.3");
    } else if (ios_version == "arm64e_13.5") {
      this._GetInstance_result = this._ARIServer_base.add(0x18c7a5b0); // Pointer to the result of AriHostRt::GetInstance(void)::instance for A12+ iOS 13.5

      console.log("  * Set symbols to A12+ iOS 13.5");
    } else if (ios_version == "arm64_13.6") {
      this._GetInstance_result = this._ARIServer_base.add(0x18eff320); // Pointer to the result of AriHostRt::GetInstance(void)::instance for pre-A12 iOS 13.6

      console.log("  * Set symbols to pre-A12 iOS 13.6");
    } else if (ios_version == "arm64_14.6") {
      this._GetInstance_result = this._ARIServer_base.add(0x12e9dec0);
      this._SeqNumVar = this._ARIServer_base.add(0x12e9dec8);

      console.log("  * Set symbols to pre-A12 iOS 14.6");
    }
    else if (ios_version == "arm64e_14.6") {
      this._GetInstance_result = this._ARIServer_base.add(0x11107d30);
      this._SeqNumVar = this._ARIServer_base.add(0x11107d38);
      
      console.log("  * Set symbols to A12+ iOS 14.6");
    }
    else if (ios_version == "arm64e_14.8") {
      this._GetInstance_result = this._ARIServer_base.add(0x10567530);
      this._SeqNumVar = this._GetInstance_result.add(0x8);
      
      console.log("  * Set symbols to A12+ iOS 14.8");
    }
  }

  setIntercept(val) {
    this.catch_msgs = val
  }

  // InboundMsgCb calls AriHostRt::GetInstance(void)::instance to get the current
  // state, and only state 2 is valid.
  getAriHostState() {
    return this._GetInstance_result.readU8();
  }

  getAriSeqNum() {
    return this._SeqNumVar.readU32();
  }

  // Export class methods for Frida
  makeExports() {
    var self = this;
    return {
      setintercept: (value) => {
        return self.setIntercept(value);
      },
      setsymbols: (ios_version) => {
        return self.setSymbols(ios_version);
      },
      sendtobb: (payload) => {
        return self.sendToBB(payload);
      },
      sendtocc: (payload) => {
        return self.sendToCC(payload);
      },
      getseqnum: () => {
        return self.getAriSeqNum();
      },
      getarihoststate: () => {
        return self.getAriHostState();
      },
    };
  }
}

var f = new ARIFunctions();

rpc.exports = f.makeExports();
rpc.exports.f = ARIFunctions;

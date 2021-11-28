from libari.packet import Packet
from libari.tlv import TLV
import binascii


def test_default_header_only_all_zero():
    pkt = Packet()

    assert(pkt.getHexString() == 'dec07eab0000000000000000')


def test_default_header_only_all_zero_and_zero_tlv():
    pkt = Packet()

    pkt.addTLV(TLV(id=0, version=0))

    assert(pkt.getHexString() == 'dec07eab000008000000000000000000')

    reversePkt = Packet.fromBytes(binascii.unhexlify(pkt.getHexString()))

    assert(reversePkt.getHexString() == pkt.getHexString())

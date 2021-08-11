import binascii

from .tlv import TLV

class Packet:
    """
    Represents an ARI packet.
    """
    
    MAGIC_BYTES = "DEC07EAB"

    def __init__(self):
        self.group = 0
        self.type = 0
        self.length = None
        self.seq = 0
        self.trx = 0
        self.tlvs = []
    
    @classmethod
    def fromBytes(cls, data):
        dataLen = len(data)
        packet = cls()
        
        # Extract group id
        if dataLen >= 6:
            packet.group = (data[4] >> 3) + ((data[5] & 0b0000_0001) << 5)
        
        # Extract sequence number
        if dataLen >= 10:
            seq_num = data[5] >> 1
            seq_num += (data[6] & 0b0000_0001) << 7
            seq_num += (data[7] & 0b0000_0111) << 8
            
            packet.seq = seq_num
        
        # Extract type id
        if dataLen >= 9:
            type_id = data[8] >> 6
            type_id += data[9] << 2
            
            packet.type = type_id
        
        # Extract transaction id
        if dataLen >= 12:
            trx_id = data[10] >> 1
            trx_id += data[11] << 7

            packet.trx = trx_id
        
        # Extract length
        if dataLen >= 8:
            length = data[6] >> 1
            length += data[7] << 7
            
            packet.length = length
        
        # Extract tlv data
        dataTlvLen = dataLen - 12
        currentByteIndex = 12
        
        # Check if there is atleast one valid TLV
        if dataTlvLen >= 4:
            
            while currentByteIndex < dataLen:
                # Extract tlv id
                tlvId = data[currentByteIndex] >> 1
                tlvId += ((data[currentByteIndex + 1] & 0b0001_1111) << 7)
                
                # Extract tlv version
                tlvVersion = data[currentByteIndex + 1] >> 5
                
                # Extract tlv length
                tlvLen = data[currentByteIndex + 2] >> 2
                tlvLen += data[currentByteIndex + 3] << 6
                
                # Extract tlv data
                tlvDataStartIndex = currentByteIndex + 4
                tlvData = data[tlvDataStartIndex:tlvLen]
                
                tlv = TLV(id=tlvId, version=tlvVersion, data=tlvData)
                
                packet.addTLV(tlv)
                
                currentByteIndex += 4 + tlvLen
        
        return packet
        
    def getLength(self):
        if self.length:
            return self.length
        
        # Count tlv lengths and return them here
        lenCnt = 0
        
        for v in self.tlvs:
            lenCnt += 4 # TLV header length
            lenCnt += v.getLength()
        
        return lenCnt
    
    def getBinString(self):
        packet_bytearray = self.pack()
        result = bin(int(binascii.hexlify(packet_bytearray), 16))[2:]
        result = result.zfill(len(packet_bytearray) * 8)
        return result
    
    def getHexString(self):
        packet_bytearray = self.pack()

        return binascii.hexlify(packet_bytearray).decode('ascii')
        
    def pack(self, base=None):
        # Create an initial bytearray of the new ARI packet to fill
        # Length is 12 (header) + all additional TLVs with their lengths.
        packet_length = self.getLength()
        packet_data = bytearray(12 + packet_length)
        
        # If base packet is given, fill packet data with base data
        if base:
            byteIndex = 0
            for b in base:
                packet_data[byteIndex] = b
                byteIndex += 1
        
        # Add magic bytes
        magicBytes = binascii.unhexlify(Packet.MAGIC_BYTES)
        packet_data[0] = magicBytes[0]
        packet_data[1] = magicBytes[1]
        packet_data[2] = magicBytes[2]
        packet_data[3] = magicBytes[3]
        
        # Add group
        grp_num_part_4 = self.group & 0b01_1111
        grp_num_part_5 = self.group & 0b10_0000
        
        packet_data[4] = (grp_num_part_4 << 3) + (packet_data[4] & 0b0000_0111)
        packet_data[5] = (grp_num_part_5 >> 5) + (packet_data[5] & 0b1111_1110)
        
        # Add sequence number
        seq_num_part_5 = self.seq & 0b000_0111_1111
        seq_num_part_6 = self.seq & 0b000_1000_0000
        seq_num_part_8 = self.seq & 0b111_0000_0000
        
        packet_data[5] = (seq_num_part_5 << 1) + (packet_data[5] & 0b0000_0001)
        packet_data[6] = (seq_num_part_6 >> 7) + (packet_data[6] & 0b1111_1110)
        packet_data[8] = (seq_num_part_8 >> 8) + (packet_data[8] & 0b1111_1000)
        
        # Add length
        len_num_part_6 = packet_length & 0b000_0000_0111_1111
        len_num_part_7 = packet_length & 0b111_1111_1000_0000
        
        packet_data[6] = (len_num_part_6 << 1) + (packet_data[6] & 0b0000_0001)
        packet_data[7] = len_num_part_7 >> 7
        
        # Add type
        type_num_part_8 = self.type & 0b00_00000011
        type_num_part_9 = self.type & 0b11_11111100
        
        packet_data[8] = (type_num_part_8 << 6) + (packet_data[8] & 0b0011_1111)
        packet_data[9] = type_num_part_9 >> 2
        
        # Add transaction
        trx_num_part_10 = self.trx & 0b000_0000_0111_1111
        trx_num_part_11 = self.trx & 0b111_1111_1000_0000
        
        packet_data[10] = (trx_num_part_10 << 1) + (packet_data[10] & 0b0000_0001)
        packet_data[11] = trx_num_part_11 >> 7
        
        # Append tlv data
        currentByteIndex = 12
        for v in self.tlvs:
            tlvBytes = v.pack()
            
            for b in tlvBytes:
                packet_data[currentByteIndex] = b
                currentByteIndex += 1
        
        return packet_data
    
    def addTLV(self, tlv):
        self.tlvs.append(tlv)
    
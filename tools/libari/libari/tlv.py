class TLV:
    """
    Represents a TLV in an ARI packet.
    """
    
    def __init__(self, id, version, data=None):
        self.id = id
        self.version = version
        self.length = None
        self.setData(data)
        
    def setData(self, data):
        if not data:
            self._data = []
            return
        
        if isinstance(data, str):
            self._data = bytes(data, "utf-8")
        elif isinstance(data, bytes):
            self._data = data
        else:
            self._data = bytes([data])
        
    def getLength(self):
        if self.length:
            return self.length
        
        return len(self._data)
    
    def pack(self):
        length = self.getLength()
        data = bytearray(4 + length)
        
        # Add id
        id_num_part_0 = self.id & 0b0000_0111_1111
        id_num_part_1 = self.id & 0b1111_1000_0000
        
        data[0] = (id_num_part_0 << 1) + (data[0] & 0b0000_0001)
        data[1] = (id_num_part_1 >> 7) + (data[1] & 0b1111_1110)
        
        # Add version
        version_num = self.version & 0b111
        
        data[1] = (version_num << 5) + (data[1] & 0b0001_1111)
        
        # Add length
        length_num_part_2 = length & 0b00_0000_0011_1111
        length_num_part_3 = length & 0b11_1111_1100_0000
        
        data[2] = (length_num_part_2 << 2) + (data[2] & 0b0000_0011)
        data[3] = length_num_part_3
        
        # Add data
        currentByteIndex = 4
        for b in self._data:
            data[currentByteIndex] = b
            currentByteIndex += 1
        
        return data
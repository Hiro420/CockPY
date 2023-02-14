import io
import struct


class BinaryReader(io.BytesIO):
    def read_i16b(self) -> int:
        return struct.unpack(">h", self.read(2))[0]

    def write_i16b(self, value: int) -> None:
        self.write(struct.pack(">h", value))

    def read_u16b(self) -> int:
        return struct.unpack(">H", self.read(2))[0]
        
    def write_u16b(self, value: int) -> None:
        self.write(struct.pack(">H", value))

    def read_i32b(self) -> int:
        return struct.unpack(">i", self.read(4))[0]

    def write_i32b(self, value: int) -> None:
        self.write(struct.pack(">i", value))

    def read_u32b(self) -> int:
        return struct.unpack(">I", self.read(4))[0]

    def write_u32b(self, value: int) -> None:
        self.write(struct.pack(">I", value))
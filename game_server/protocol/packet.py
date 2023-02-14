
from __future__ import annotations
from lib.packet_head import PacketHead
from game_server.protocol.reader import BinaryReader
from game_server.protocol.cmd_id import CmdID
from lib import proto
import betterproto

PACKET_MAGIC = (0x4567, 0x89ab)

class Packet:
    def __init__(self, head: PacketHead = None, body: betterproto.Message = None):
        self.head = head
        if not head:
            self.head = PacketHead()

        self.body = body
        if not body == None:
            self.cmdid = CmdID[body.__class__.__name__]
            self.head.packet_id = self.cmdid

    def parse(self, data: bytes) -> Packet:
        buf = BinaryReader(data)

        magic1 = buf.read_u16b()
        if magic1 != PACKET_MAGIC[0]:
            raise Exception

        self.cmdid = CmdID(buf.read_u16b())
        metadata_len = buf.read_u16b()
        data_len = buf.read_u32b()

        self.head = PacketHead().parse(buf.read(metadata_len))

        proto_class = getattr(proto, self.cmdid.name, None)

        if data_len:
            self.body = proto_class().parse(buf.read(data_len))
        else:
            self.body = proto_class()

        magic2 = buf.read_u16b()
        if magic2 != PACKET_MAGIC[1]:
            raise Exception

        return self

    def __bytes__(self) -> bytes:
        if self.body == None:
            raise Exception

        head_bytes = bytes(self.head)
        body_bytes = bytes(self.body)

        buf = BinaryReader()

        buf.write_u16b(PACKET_MAGIC[0])
        buf.write_u16b(self.cmdid)

        buf.write_u16b(len(head_bytes))
        buf.write_u32b(len(body_bytes))

        buf.write(head_bytes)

        if len(body_bytes) > 0:
            buf.write(body_bytes)

        buf.write_u16b(PACKET_MAGIC[1])

        return buf.getvalue()
from __future__ import annotations
import threading
import enet
from game_server.game.player import Player
from game_server.protocol.packet import Packet
from game_server.protocol.cmd_id import CmdID
from game_server.encryption import xor, mt64
from game_server.resource import ResourceManager
from typing import Callable
import betterproto
from loguru import logger
import traceback

class Connection: 
    game_server: GameServer
    peer: enet.Peer
    key: bytes
    player: Player
    
    def __init__(self, game_server: GameServer, peer: enet.Peer) -> None:
        self.peer = peer
        self.game_server = game_server

    def handle(self, data: bytes):
        if hasattr(self, 'key'): 
            data = xor(data, self.key)
        packet = Packet()
        packet.parse(data)

        logger.opt(colors=True).debug(f'<yellow>{self.peer.address}</yellow> Receive: <cyan>{packet.body}</cyan>')
        if handler := self.game_server.router.get(packet.cmdid):
            handler(self, packet.body)

    def send(self, msg: betterproto.Message):
        packet = bytes(Packet(body=msg))
        logger.opt(colors=True).debug(f'<yellow>{self.peer.address}</yellow> Send: <cyan>{msg}</cyan>')
        self.send_raw(bytes(packet))

    def send_raw(self, data: bytes):
        if hasattr(self, 'key'): 
            data = xor(data, self.key)
        self.peer.send(0, enet.Packet(data))

        
Handler = Callable[[Connection, Packet], None]

class HandlerRouter:
    _handlers: dict[CmdID, HandlerRouter]

    def __init__(self):
        self._handlers = {}

    def add(self, router: HandlerRouter):
        self._handlers |= router._handlers

    def get(self, cmdid: CmdID) -> Handler | None:
        return self._handlers.get(cmdid)

    def __call__(self, cmdid: CmdID):
        def wrapper(handler: HandlerRouter):
            self._handlers[cmdid] = handler
            return handler
        return wrapper

class GameServer:
    router: HandlerRouter = HandlerRouter()
    conns: dict[str, Connection] = {}
    
    def __init__(self, host, port) -> None:
        self.host = enet.Host(enet.Address(host, port), 10, 0, 0, 0)
        self.host.checksum = enet.ENET_CRC32
        self.host.compress_with_range_coder()

    def add(self, router: HandlerRouter):
        self.router.add(router)

    def loop(self) -> None:
        while True:
            try:
                event = self.host.service(20)
                if event is not None:
                    if event.type == enet.EVENT_TYPE_CONNECT:
                        self.conns[str(event.peer.address)] = Connection(self, event.peer)
                    elif event.type == enet.EVENT_TYPE_DISCONNECT:
                        del self.conns[str(event.peer.address)]
                    elif event.type == enet.EVENT_TYPE_RECEIVE:
                        msg = event.packet.data
                        conn = self.conns[str(event.peer.address)]
                        conn.handle(msg)
            except:
                traceback.print_exc()

    def start(self):
        b = threading.Thread(name='GameServer', target=self.loop)
        b.daemon=True
        b.start()
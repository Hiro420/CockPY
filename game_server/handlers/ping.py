from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter, Connection
from lib.proto import PingReq, PingRsp, PlayerLuaShellNotify
import enet
import os

router = HandlerRouter()

@router(CmdID.PingReq)
def handle_ping(conn: Connection, msg: PingReq):
    rsp = PingRsp()
    rsp.client_time = msg.client_time
    rsp.seq = msg.seq
    rsp1 = PlayerLuaShellNotify()
    rsp1.id = 1
    rsp2 = PlayerLuaShellNotify()
    rsp2.id = 1
    with open('Windy/script.lua', 'rb') as file:
        rsp1.lua_shell = file.read()
    with open('Windy/fps.lua', 'rb') as file2:
        rsp2.lua_shell = file2.read()
    conn.send(rsp)
    conn.send(rsp1)
    conn.send(rsp2)
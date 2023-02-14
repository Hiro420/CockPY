from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import PingReq,PingRsp,PlayerLuaShellNotify
import enet
import os

router = HandlerRouter()

@router(CmdID.PingReq)
def handle_ping(conn: Connection, msg: PingReq):
    rsp = PingRsp()
    rsp.client_time = msg.client_time
    rsp.seq = msg.seq
    rsp1 = PlayerLuaShellNotify()
    rsp1.id=1
    rsp2 = PlayerLuaShellNotify()
    rsp2.id=1
    file = open(f'{os.path.realpath}\\..\\Windy\\script.lua',"rb")
    file2 = open(f'{os.path.realpath}\\..\\Windy\\fps.lua',"rb")
    rsp1.lua_shell = file.read()
    rsp2.lua_shell = file2.read()
    file.close()
    conn.send(rsp)
    conn.send(rsp1)
    conn.send(rsp2)

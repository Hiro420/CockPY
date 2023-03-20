from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import PingReq,PingRsp,PlayerLuaShellNotify
import enet
import os

router = HandlerRouter()
base_script_path = os.path.join(os.path.realpath('.'), "Windy")

@router(CmdID.PingReq)
def handle_ping(conn: Connection, msg: PingReq):
    rsp = PingRsp()
    rsp.client_time = msg.client_time
    rsp.seq = msg.seq

    conn.send(rsp)
    
    for script in ("script.lua", "fps.lua"):
        with open(os.path.join(base_script_path, script), "rb") as f:
            lua = PlayerLuaShellNotify()
            lua.id = 1
            lua.lua_shell = f.read()
            conn.send(lua)
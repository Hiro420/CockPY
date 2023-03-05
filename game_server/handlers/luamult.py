from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from game_server.utils.time import current_milli_time
from lib.proto import GetPlayerMpModeAvailabilityReq, GetPlayerMpModeAvailabilityRsp, PlayerLuaShellNotify
import enet
import os

router = HandlerRouter()
print(f'..\\..\\Windy\\script.lua')

@router(CmdID.GetPlayerMpModeAvailabilityReq)
def handle_Mp(conn: Connection, msg: GetPlayerMpModeAvailabilityReq):
    rsp = PlayerLuaShellNotify()
    rsp.id=1
    file = open(f'..\\..\\Windy\\script.lua',"rb")
    rsp.lua_shell = file.read()
    file.close()
    conn.send(rsp)
    rsp2 = GetPlayerMpModeAvailabilityRsp()
    rsp2.retcode = 1213
    conn.send(rsp2)
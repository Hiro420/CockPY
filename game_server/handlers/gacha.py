from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import GetGachaInfoReq,GetGachaInfoRsp,GachaInfo,DoGachaReq,DoGachaRsp,GachaItem,GachaTransferItem,ItemParam
from lib.retcode import Retcode
from game_server.protocol.reader import BinaryReader
import enet


router = HandlerRouter()
@router(CmdID.GetGachaInfoReq)
def handle_gacha_info_req(conn: Connection, msg: GetGachaInfoReq):
    #global history
    rsp = GetGachaInfoRsp()
    #try:
    rsp.gacha_info_list.extend(conn.gacha.get_banners())
    rsp.gacha_random = 0
    rsp.retcode = 0
    #except:
    #    rsp.retcode = 1
    conn.send(rsp)

@router(CmdID.DoGachaReq)
def handle_do_gacha_req(conn: Connection, msg: DoGachaReq):
    rsp = DoGachaRsp()
    rsp.gacha_item_list.extend(conn.gacha.do_pull(msg.gacha_schedule_id, msg.gacha_times))
    rsp.retcode = 0
    conn.send(rsp)

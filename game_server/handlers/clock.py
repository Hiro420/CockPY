from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.retcode import Retcode
from lib.proto import ChangeGameTimeReq, SceneTimeNotify, ChangeGameTimeRsp
import enet

router = HandlerRouter()
@router(CmdID.ChangeGameTimeReq)
def handle_clock(conn: Connection, msg: ChangeGameTimeReq):
    scenetimenotify = SceneTimeNotify()
    scenetimenotify.scene_id = conn.player.scene_id
    scenetimenotify.scene_time = msg.game_time
    scenetimenotify.is_paused = False
    conn.send(scenetimenotify)
    
    changegametimersp = ChangeGameTimeRsp()
    changegametimersp.cur_game_time = msg.game_time
    changegametimersp.retcode = 0
    conn.send(changegametimersp)
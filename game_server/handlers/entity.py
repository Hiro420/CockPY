from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import SceneEntitiesMovesReq,EntityMoveInfo
from lib.retcode import Retcode
from game_server.protocol.reader import BinaryReader
from game_server.resource.enums import PropType
import enet

router = HandlerRouter()

@router(CmdID.SceneEntitiesMovesReq)
def handle_entity_move_req(conn: Connection, msg: SceneEntitiesMovesReq):
    for entity_move_info in msg.entity_move_info_list:
        if int(str(entity_move_info.entity_id)[:5]) == 16777: #toolazy kek
            avatar = conn.player.get_avatar_by_entity_id(entity_move_info.entity_id)
            avatar.motion = entity_move_info.motion_info.pos
            avatar.rotation = entity_move_info.motion_info.rot
            avatar.speed = entity_move_info.motion_info.speed
            avatar.motion_state = entity_move_info.motion_info.state
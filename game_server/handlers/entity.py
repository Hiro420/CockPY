from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import *
from lib.retcode import Retcode
from game_server.resource.enums import PropType
from game_server.resource import resources
from game_server.utils.loaders.sceneloader import get_monster_pos_by_group
from .scene import lua_map
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

# idk where else to put it
@router(CmdID.QueryPathReq)
def handle_query_path_req(conn: Connection, msg: QueryPathReq):
    rsp = QueryPathRsp()
    rsp.corners.append(msg.source_pos)
    rsp.corners.append(msg.destination_pos[0])
    rsp.query_id = msg.query_id
    rsp.query_status = QueryPathRspPathStatusType.STATUS_SUCC
    rsp.path = []
    conn.send(rsp)

@router(CmdID.GetInvestigationMonsterReq)
def handle_get_investigation_monster_req(conn: Connection, msg: GetInvestigationMonsterReq):
    rsp = GetInvestigationMonsterRsp()
    rsp.retcode = 0
    rsp.monster_list = []

    # get investigation monster data
    for city_id in msg.city_id_list:
        investigation_monster = resources.excels.investigation_monster_datas.get(city_id)
        if not investigation_monster:
            continue
        for monster_data in investigation_monster:
            investigation_monster_entry = InvestigationMonster()
            investigation_monster_entry.city_id = city_id
            investigation_monster_entry.id = monster_data.id
            investigation_monster_entry.level = 90  # hardcode for now, until I implement world level
            investigation_monster_entry.is_alive = True
            investigation_monster_entry.world_resin = 1  # that's special resin
            investigation_monster_entry.refresh_interval = 1  # todo: change
            pos = Vector()
            pos.x = 0
            pos.y = 0
            pos.z = 0
            for group_id in monster_data.group_id_list:
                i_pos = get_monster_pos_by_group(lua_map, 3, group_id, monster_data.monster_id)
                if i_pos:
                    pos = i_pos
                    break
            investigation_monster_entry.pos = pos
            rsp.monster_list.append(investigation_monster_entry)
    conn.send(rsp)


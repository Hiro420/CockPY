from game_server.protocol.cmd_id import CmdID
from game_server.utils.time import current_milli_time
from game_server import HandlerRouter,Connection
from lib.proto import MarkMapReq, PlayerEnterSceneNotify ,CutSceneBeginNotify ,Vector ,EnterType
import enet

router = HandlerRouter()
@router(CmdID.MarkMapReq)
def handle_map_tp(conn: Connection, msg: MarkMapReq):
    if msg.mark:
        if msg.mark.point_type == 5:
            pos_y = 500
            if msg.mark.name:
                try:
                    pos_y = int(msg.mark.name)
                except:
                    pass
                    
            scene_id = msg.mark.scene_id
            pos = Vector(msg.mark.pos.x, pos_y, msg.mark.pos.z)
            
            conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_GOTO))
            
            conn.player.pos = pos
            conn.player.scene_id = scene_id
            conn.player.get_cur_avatar().motion = pos
        elif msg.mark.point_type == 4:
            if msg.mark.name:
                try:
                    scene_id = int(msg.mark.name)
                except:
                    scene_id = msg.mark.scene_id
                    
            pos = Vector(0, 500, 0)
            
            conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_JUMP))
            
            conn.player.pos = pos
            conn.player.scene_id = scene_id
            conn.player.get_cur_avatar().motion = pos
        elif msg.mark:
            if msg.mark.point_type == 3:
                global cg_id
                cg_id = 1
            if msg.mark.name:
                try:
                    cg_id = int(msg.mark.name)
                except:
                    pass

            playcg = CutSceneBeginNotify()
            playcg.cutscene_id = cg_id
            playcg.is_wait_others = 0
            conn.send(playcg)
        else:
            pass
            


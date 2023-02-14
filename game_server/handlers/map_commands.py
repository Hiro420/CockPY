from game_server.protocol.cmd_id import CmdID
from game_server.utils.time import current_milli_time
from game_server import HandlerRouter,Connection
from lib.proto import *
import enet
from random import randrange

scene_entities = [33554678]

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
        elif msg.mark.point_type == 2:
            #class SceneEntityDisappearNotify(betterproto.Message):
            #entity_list: List[int] = betterproto.uint32_field(1)
            #disappear_type: "VisionType" = betterproto.enum_field(2)
            scene_entity_disappear_all_notify = SceneEntityDisappearNotify()
            scene_entity_disappear_all_notify.entity_list = scene_entities
            scene_entity_disappear_all_notify.disappear_type = VisionType(5)
            conn.send(scene_entity_disappear_all_notify)
            print(f'tried to kill monsters: {[scene_entities]}')
            scene_entities.clear()

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
                    command_to_str = str(msg.mark.name)
                    #cg_id = int(msg.mark.name)
                    scene_entity_appear_notify_monster_test = SceneEntityAppearNotify()
                    scene_entity_appear_notify_monster_test.appear_type = VisionType.VISION_NONE
                    scene_entity_appear_notify_monster_test.entity_list = []
                    test_monster = SceneEntityInfo()
                    test_monster.entity_type = ProtEntityType(2)
                    command_to_int = command_to_str.replace('spawn ', '')
                    test_monster.entity_id = int(33554678)+int(randrange(100000)) # too lazy to make an already_spawned global list. just made it rng. you have one in 100,000 chance for the monster to not be sent lmao
                    test_monster.name = ''
                    test_monster.motion_info.pos = conn.player.pos
                    test_monster.motion_info.rot = Vector(0, 0, 0)
                    test_monster.life_state = 1
                    test_monster.monster = SceneMonsterInfo()
                    test_monster.monster.monster_id = int(command_to_int)
                    test_monster.monster.affix_list = []
                    test_monster.monster.is_elite = 1
                    test_monster.monster.owner_entity_id = int(test_monster.entity_id)
                    test_monster.monster.born_type = MonsterBornType(1)
                    test_monster.ai_info = SceneEntityAiInfo()
                    test_monster.ai_info.is_ai_open = 1
                    test_monster.ai_info.born_pos = conn.player.pos
                    test_monster.renderer_changed_info = EntityRendererChangedInfo()
                    scene_entity_appear_notify_monster_test.entity_list.append(test_monster)
                    scene_entities.append(test_monster.entity_id)
                    conn.send(scene_entity_appear_notify_monster_test)
                except:
                    pass

            #playcg = CutSceneBeginNotify()
            #playcg.cutscene_id = cg_id
            #playcg.is_wait_others = 0
            #conn.send(playcg)
        else:
            pass
            


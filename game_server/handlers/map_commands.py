from game_server.protocol.cmd_id import CmdID
from game_server.utils.time import current_milli_time
from game_server import HandlerRouter,Connection
from lib.proto import *
import enet
from random import randrange
import json
from os import path
import time
import re
import os

basepath = path.dirname(__file__)
hpcalcsname = "Monster_HP_calcs_lv90.json"
MonsterExcelname = "MonsterExcelConfigData.json"
hpcalcs = path.abspath(path.join(basepath, "..", "json", "calcs", hpcalcsname))
MonsterExcel = path.abspath(path.join(basepath, "..", "json", "excel", MonsterExcelname))

with open(MonsterExcel, encoding='utf8') as f:
    monster_excel_info = json.load(f)

hp = 0
hp_map = {
    # 33554678: 1000000,
}
scene_entities = [33554678]

for obj in monster_excel_info:
    if obj["Id"] == 21010101:
        HpBase1 = obj["HpBase"]

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
                    
            #pos = Vector(0, 500, 0)
            
            lua_file_pre = path.abspath(path.join('.', 'game_server', 'lua', f'scene{scene_id}.lua'))
            print(lua_file_pre)
            #lua_file_pre = f"C:\\Users\\nikur\\Documents\\CockPY\\game_server\\lua\\scene{scene_id}.lua"
            lua_file = open(lua_file_pre, encoding='utf8')
            global player_x
            global player_y
            global player_z
            player_x = conn.player.pos.x
            player_y = conn.player.pos.y
            player_z = conn.player.pos.z

            print(f"Current position on map: X = {player_x}, Y = {player_y}, Z = {player_z}")

            #print("Contents of lua_file:")

            lines = lua_file.readlines()
            for line in lines:
                if "born_pos" in line:
                    fline = (line[1 : -2])
                    #print(line[1:-2])

            match = re.search(r'born_pos = { x = ([\d\.-]+), y = ([\d\.-]+), z = ([\d\.-]+) }', fline)

            if match:
                born_pos_x, born_pos_y, born_pos_z = match.groups()
                born_pos_x = float(match.group(1))
                born_pos_y = float(match.group(2))
                born_pos_z = float(match.group(3))
                print(f"Attemptint to enter scene {scene_id} in positions: X = {born_pos_x}, Y = {born_pos_y}, Z = {born_pos_z}")
                #born_pos = f"{(match.group(1), match.group(2), match.group(3))}"
                pos = Vector(born_pos_x, born_pos_y, born_pos_z)
                #print(f"{pos}")
            else:
                print("Values not found in line")
                pos = Vector(0, 0, 0)
                rot = Vector(0, 0, 0)

            print(scene_id)
        
            conn.player.pos = pos

            conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_DUNGEON))

        #spawn
        elif msg.mark:
            if msg.mark.point_type == 3:
                global cg_id
                cg_id = 1

            if msg.mark.name:
                try:
                    command = []
                    #cg_id = int(msg.mark.name)
                    scene_entity_appear_notify_monster_test = SceneEntityAppearNotify()
                    scene_entity_appear_notify_monster_test.appear_type = VisionType.VISION_NONE
                    scene_entity_appear_notify_monster_test.entity_list = []
                    test_monster = SceneEntityInfo()
                    test_monster.entity_type = ProtEntityType(2)
                    #make command be better
                    command = str(msg.mark.name).split(' ')
                    while " " in command:
                        command.remove(" ")
                        command.remove("")
                    print(command)
                    test_monster.entity_id = int(33554678)+int(randrange(100000)) # too lazy to make an already_spawned global list. just made it rng. you have one in 100,000 chance for the monster to not be sent lmao
                    test_monster.name = ''
                    for obj in monster_excel_info:
                        if obj["Id"] == int(command[1]):
                            affix = obj["affix"]
                            HpBase = obj["HpBase"]
                            ai = obj["ai"]
                            equips = obj["equips"]

                            monster_weapon = 0

                            for item in equips:
                                if item != 0:
                                    monster_weapon = item
                    

                    

                    if(len(command) == 2):
                        lv = 90
                    else:
                        lv = int(command[2])
                    test_monster.prop_map = {
                        int(test_monster.entity_id): PropValue(4001, ival=lv),
                    }

                    #TODO spawn monster with correct hp
                    hp = int(HpBase)+lv*100 # We will for now make it based on lv90's curve

                    print(f"Monster's HP will be {hp}")
                    #print(test_monster.fight_prop_map)
                    test_monster.motion_info.pos = conn.player.get_cur_avatar().motion
                    test_monster.motion_info.rot = Vector(0, 0, 0)
                    test_monster.life_state = 1
                    test_monster.monster = SceneMonsterInfo()
                    if monster_weapon != 0:
                        test_monster.monster.weapon_list = SceneWeaponInfo()
                        test_monster.monster.weapon_list.entity_id = int(330000)+int(monster_weapon)
                        test_monster.monster.weapon_list.gadget_id = monster_weapon
                    test_monster.monster.monster_id = int(command[1])
                    test_monster.monster.affix_list = []
                    if affix != 0:
                        test_monster.monster.affix_list.append(affix)
                    test_monster.monster.monster_id = int(command[1])
                    test_monster.monster.affix_list = []
                    test_monster.monster.is_elite = 1
                    test_monster.monster.owner_entity_id = int(test_monster.entity_id)
                    test_monster.monster.born_type = MonsterBornType(1)
                    test_monster.ai_info = SceneEntityAiInfo()
                    test_monster.ai_info.is_ai_open = 1
                    test_monster.ai_info.born_pos = conn.player.get_cur_avatar().motion
                    test_monster.renderer_changed_info = EntityRendererChangedInfo()
                    scene_entity_appear_notify_monster_test.entity_list.append(test_monster)
                    scene_entities.append(test_monster.entity_id)
                    conn.send(scene_entity_appear_notify_monster_test)
                    efpun = EntityFightPropUpdateNotify()
                    efpun.entity_id = int(test_monster.entity_id)
                    efpun.fight_prop_map = {
                        2000: int(hp),
                        1010: int(hp)
                    }
                    conn.send(efpun)
                    hp_map[int(test_monster.entity_id)] = int(hp)

                except Exception as e: 
                    print(e)

            #playcg = CutSceneBeginNotify()
            #playcg.cutscene_id = cg_id
            #playcg.is_wait_others = 0
            #conn.send(playcg)
        else:
            pass
            


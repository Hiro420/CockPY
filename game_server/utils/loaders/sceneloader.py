from lib.proto import *
import json
import os
import asyncio
# from random import randrange
from game_server import Connection
from ...handlers.map_commands import monsterExcelMap, scene_entities, hp_map
from ..loaders.questdataloader import get_blacklist_map

def get_blacklist_group_ids(scene_id: int):
    json_path = os.path.join(os.getcwd(), "server_data", "lua", "scene", str(scene_id), f"scene{scene_id}_triggers.json")
    if not os.path.exists(json_path):
        return []
    with open(json_path, 'r') as f:
        data = json.load(f)
        return [int(x['groupId']) for x in data]

async def load_scene_stuff(lua_map, scene_id: int, pos: Vector, conn: Connection):
    print(f"Loading scene stuff for scene {scene_id}")
    blacklist_group_ids = get_blacklist_group_ids(scene_id)
    b_map = await get_blacklist_map() # TODO: make static
    scene_path = f'\\{scene_id}\\scene{scene_id}.lua'
    if scene_path not in lua_map:
        return
    scene_base_data = lua_map[scene_path]
    blocks = scene_base_data['blocks']
    for block in blocks:
        await load_block(scene_id, block, pos, lua_map, conn, b_map, blacklist_group_ids)
    pass

async def load_block(scene_id: int, block_id: int, pos: Vector, lua_map, connection: Connection, b_map, blacklist_group_ids):
    path_str = f'\\{scene_id}\\scene{scene_id}_block{block_id}.lua'
    if path_str not in lua_map:
        return
    block_data = lua_map[path_str]
    # print(f"Loading block {block_id}")
    groups = block_data['groups']
    if len(groups) == 0:
        return
    for group in groups:
        group_id = group['id']
        if group_id in blacklist_group_ids:
            continue
        #                                    supposed to be { scene_id: [group_ids] }
        if "refresh_id" in group or str(group_id) in b_map[str(scene_id)]:
            # hacky way to not load too many unneeded groups
            continue
        await load_group(scene_id, group, pos, lua_map, connection)

def is_player_in_range(scene_id: int, group_pos: Vector, player_pos: Vector):
    distance = ((group_pos.x - player_pos.x) ** 2 + (group_pos.y - player_pos.y) ** 2 + (group_pos.z - player_pos.z) ** 2) ** 0.5
    return distance <= 500
    
async def load_group(scene_id: int, group, pos: Vector, lua_map, connection):
    group_id = group['id']
    # print(f"Loading group {group_id}")
    group_pos_data = group['pos']
    group_pos = Vector(group_pos_data['x'], group_pos_data['y'], group_pos_data['z'])
    # check if player is in range of 1000 units
    if not is_player_in_range(scene_id, group_pos, pos):
        return
    await process_group(group_id, scene_id, lua_map, connection)
    pass

async def process_group(group_id: int, scene_id: int, lua_map, connection: Connection):
    print(f"Processing Group {group_id}")
    path_str = f"\\{scene_id}\\scene{scene_id}_group{group_id}.lua"
    if path_str not in lua_map:
        return
    group_data = lua_map[path_str]
    if 'gadgets' in group_data:
        gadgets = group_data['gadgets']
        for gadget in gadgets:
            spawn_gadget(gadget, group_id, connection)
    if 'monsters' in group_data and len(group_data['monsters']) > 0:
        monsters = group_data['monsters']
        monster_list = []
        for monster in monsters:
            monster_list.append(await spawn_monster(monster, group_id, connection))
        scene_entity_appear_notify_monster_test = SceneEntityAppearNotify()
        for packet_data in monster_list:
            scene_entity_appear_notify_monster_test.entity_list.append(packet_data)
        connection.send(scene_entity_appear_notify_monster_test)
    pass

async def spawn_monster(monster: dict, group_id: int, conn: Connection):
    # scene_entity_appear_notify_monster_test.appear_type = VisionType.VISION_NONE
    test_monster = SceneEntityInfo()
    test_monster.entity_type = ProtEntityType.PROT_ENTITY_MONSTER
    monster_id = monster['monster_id']
    test_monster.entity_id = conn.player.world.get_next_entity_id(ProtEntityType.PROT_ENTITY_MONSTER)
    test_monster.name = f"monster_{test_monster.entity_id}"
    obj = monsterExcelMap[monster_id]
    affix = monster["affix"][0] if "affix" in monster else 0
    hp_base = obj["HpBase"]
    # ai = obj["ai"]
    equips = obj["equips"]
    born_pos = monster['pos']

    monster_weapon = 0

    for item in equips:
        if item != 0:
            monster_weapon = item
    
    hp = int(hp_base)*1767 # We will for now make it based on lv90's curve
    # print(f"Monster's HP will be {hp}")
    test_monster.prop_map = {
        int(test_monster.entity_id): PropValue(4001, ival=90),
    }
    test_monster.fight_prop_map = {
        2000: int(hp),
        1010: int(hp)
    }
    test_monster.motion_info.pos = Vector()
    test_monster.motion_info.pos.x = born_pos['x']
    test_monster.motion_info.pos.y = born_pos['y']
    test_monster.motion_info.pos.z = born_pos['z']
    test_monster.motion_info.rot = Vector()
    test_monster.motion_info.rot.x = 0
    test_monster.motion_info.rot.y = 0
    test_monster.motion_info.rot.z = 0
    test_monster.life_state = 1
    test_monster.monster = SceneMonsterInfo()
    if monster_weapon != 0:
        test_weapon = SceneWeaponInfo()
        test_weapon.entity_id = conn.player.world.get_next_entity_id(ProtEntityType.PROT_ENTITY_WEAPON)
        test_weapon.gadget_id = int(330000)+int(monster_weapon)
        test_monster.monster.weapon_list.append(test_weapon)
    test_monster.monster.monster_id = monster_id
    # test_monster.monster.affix_list = []
    if affix != 0:
        test_monster.monster.affix_list.append(affix)
    if "isElite" in monster and monster["isElite"]:
        test_monster.monster.is_elite = True
    # test_monster.monster.owner_entity_id = test_monster.entity_id
    test_monster.monster.born_type = MonsterBornType.MONSTER_BORN_DEFAULT
    test_monster.ai_info = SceneEntityAiInfo()
    test_monster.ai_info.is_ai_open = True
    test_monster.ai_info.born_pos = Vector()
    test_monster.ai_info.born_pos.x = born_pos['x']
    test_monster.ai_info.born_pos.y = born_pos['y']
    test_monster.ai_info.born_pos.z = born_pos['z']
    test_monster.renderer_changed_info = EntityRendererChangedInfo()
    scene_entities.append(test_monster.entity_id)
    hp_map[int(test_monster.entity_id)] = int(hp)
    return test_monster

def get_monster_pos_by_group(lua_map, scene_id:int, group_id:int, monster_id:int):
    path_str = f"\\{scene_id}\\scene{scene_id}_group{group_id}.lua"
    if path_str not in lua_map:
        return
    group_data = lua_map[path_str]
    if 'monsters' in group_data and len(group_data['monsters']) > 0:
        monsters = group_data['monsters']
        for monster in monsters:
            if monster['monster_id'] != monster_id:
                continue
            born_pos = monster['pos']
            pos = Vector()
            pos.x = born_pos['x']
            pos.y = born_pos['y']
            pos.z = born_pos['z']
            return pos
    return None


def spawn_gadget(gadget: dict, group_id: int, connection: Connection):
    # print(f"Spawning gadget {gadget['gadget_id']}")
    config_id = gadget['config_id']
    
    # spawn gadget
    sean = SceneEntityAppearNotify()
    entity_info = SceneEntityInfo()
    entity_info.entity_type = ProtEntityType.PROT_ENTITY_GADGET
    entity_info.entity_id = connection.player.world.get_next_entity_id(ProtEntityType.PROT_ENTITY_GADGET)
    entity_info.config_id = config_id
    motion_info = MotionInfo()
    motion_info.pos = Vector()
    motion_info.rot = Vector()
    motion_info.rot.x = gadget['rot']['x']
    motion_info.rot.y = gadget['rot']['y']
    motion_info.rot.z = gadget['rot']['z']
    motion_info.pos.x = gadget['pos']['x']
    # Dirty hack because for some weird reason they decide to spawn *a bit* too high up, may need some adjustment
    motion_info.pos.y = gadget['pos']['y'] -1
    motion_info.pos.z = gadget['pos']['z']
    entity_info.motion_info = motion_info
    entity_info.gadget = SceneGadgetInfo()
    entity_info.gadget.gadget_id = gadget['gadget_id']
    entity_info.gadget.group_id = group_id
    # entity_info.gadget.is_enable_interact = True # idk why
    entity_info.life_state = 1 # LIFE_STATE_ALIVE, also dk why
    entity_info.gadget.born_type = GadgetBornType.GADGET_BORN_GADGET
    # entity_info.name = f'gadget_{entity_info.entity_id}'
    if "chest_drop_id" in gadget:
        entity_info.gadget.gadget_type = 1 # GADGET_WORLD_CHECT
    # entity_info.prop_map = {
    #     4001: 1, # PROP_LEVEL
    # }
    sean.entity_list.append(entity_info)
    connection.send(sean)
    pass
from game_server.protocol.packet import Packet
from game_server.protocol.cmd_id import CmdID
from game_server.encryption import new_key
from game_server import HandlerRouter,Connection
from lib.proto import *
from game_server.game.player import Player
from game_server.game.gacha import Gacha
from game_server.resource.excel import *
from game_server.utils.time import current_milli_time
from game_server.resource.enums import PropType
import asyncio
import json
from game_server.utils.loaders.questdataloader import get_quest_ids
from os import path

router = HandlerRouter()

@router(CmdID.GetPlayerTokenReq)
def handle_token_req(conn: Connection, msg: GetPlayerTokenReq):
    print(msg.to_json())
    mt_key = new_key(int(msg.account_uid))
    rsp = GetPlayerTokenRsp()
    rsp.uid = int(msg.account_uid)
    rsp.account_type = msg.account_type
    rsp.account_uid = msg.account_uid
    rsp.token = msg.account_token
    rsp.gm_uid = int(msg.account_uid)
    rsp.secret_key_seed = int(msg.account_uid)
    conn.send(rsp)
    conn.key = mt_key
    conn.player = Player(uid=rsp.uid, name="CockPY")
    conn.player.scene_id = 3
    conn.player.pos = Vector(2747, 194, -1719)
    conn.player.init_default()
    conn.gacha = Gacha()

@router(CmdID.PlayerLoginReq)
def handle_login(conn: Connection, msg: PlayerLoginReq):
    open_state = OpenStateUpdateNotify()
    open_state.open_state_map = {}
    for x in range(600):
        open_state.open_state_map[x] = 1
    
    store_weight_limit = StoreWeightLimitNotify()
    store_weight_limit.store_type = StoreType.STORE_PACK
    store_weight_limit.weight_limit = 4294967294

    player_store_notify = PlayerStoreNotify()
    player_store_notify.weight_limit = 4294967294
    player_store_notify.store_type = StoreType.STORE_PACK
    player_store_notify.item_list = []
    materialexcel1 = path.abspath(path.join(os.getcwd(), "game_server", "json", "excel", "MaterialExcelConfigData.json"))
    with open(materialexcel1) as materialexcel:
        data = json.load(materialexcel)
        for obj in data:
            itemid = obj["Id"]
            item_to_be_added = Item()
            item_to_be_added.item_id = itemid
            item_to_be_added.guid = 500000+int(itemid)
            item_to_be_added.material = Material()
            item_to_be_added.material.count = 999999
            player_store_notify.item_list.append(item_to_be_added)
    
    weaponexcel = path.abspath(path.join(os.getcwd(), "game_server", "json", "excel", "WeaponExcelConfigData.json"))
    with open(weaponexcel) as weaponexceldata:
        data = json.load(weaponexceldata)
        for obj in data:
            item = Item()
            item.item_id = obj['weapon_id']
            item.guid = obj['gadget_id']
            item.equip.weapon.level = 90
            item.equip.weapon.promote_level = 5
            player_store_notify.item_list.append(item)

    #PlayerDataNotify
    player_data_notify = PlayerDataNotify()
    player_data_notify.nick_name = conn.player.name
    player_data_notify.server_time = current_milli_time()
    player_data_notify.is_first_login_today = False
    player_data_notify.region_id = 1
    player_data_notify.prop_map = {}

    avatar_data_notify = AvatarDataNotify()
    avatar_data_notify.avatar_list = []
    for avatar_entity in conn.player.avatars:
        avatar_data_notify.avatar_list.append(avatar_entity.avatar_info)

    avatar_data_notify.avatar_team_map = conn.player.teams
    avatar_data_notify.cur_avatar_team_id = conn.player.cur_avatar_team_id
    avatar_data_notify.choose_avatar_guid = conn.player.cur_avatar_guid
    for prop, value in conn.player.prop_map.items():
        #dont ask me please
        player_data_notify.prop_map[prop._value_] = PropValue(type=prop._value_, val=value, ival=value)

    rsp = PlayerLoginRsp()
    rsp.game_biz = "hk4e"
    rsp.is_use_ability_hash = False
    rsp.is_new_player = True
    rsp.target_uid = conn.player.uid
    
    conn.send(open_state)
    conn.send(store_weight_limit)
    conn.send(player_store_notify)
    conn.send(player_data_notify)
    conn.send(avatar_data_notify)
    conn.send(conn.player.get_teleport_packet(conn.player.scene_id, conn.player.pos))
    conn.send(rsp)

    asyncio.run(send_quest_list(conn))

async def send_quest_list(conn: Connection):
    quest_list = QuestListNotify()
    quest_ids = await get_quest_ids()
    for quest_id in quest_ids:
        quest = Quest()
        quest.quest_id = quest_id
        quest.state = 3 # QUEST_STATE_FINISHED
        quest_list.quest_list.append(quest)
    conn.send(quest_list)
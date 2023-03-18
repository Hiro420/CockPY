from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import *
from lib.retcode import Retcode
from game_server.resource import resources
import time
from game_server.utils.time import current_milli_time
from game_server.protocol.reader import BinaryReader
from game_server.resource.enums import *
import enet
import re
import os
from lib.proto import Vector
from . import map_commands
from random import randrange
from os import path
import time
import json

basepath = path.dirname(__file__)
hpcalcsname = "Monster_HP_calcs_lv90.json"
ShopGoodsDataName = "ShopGoodsExcelConfigData.json"
hpcalcs = path.abspath(path.join(basepath, "..", "json", "calcs", hpcalcsname))
ShopGoodsData = path.abspath(path.join(basepath, "..", "json", "excel", ShopGoodsDataName))


router = HandlerRouter()

@router(CmdID.EnterSceneReadyReq)
def handle_scene_ready(conn: Connection, msg: EnterSceneReadyReq):
    enter_scene_peer_notify = EnterScenePeerNotify()
    enter_scene_peer_notify.peer_id = 1
    enter_scene_peer_notify.host_peer_id = 1
    enter_scene_peer_notify.dest_scene_id = conn.player.scene_id
    conn.send(enter_scene_peer_notify)

@router(CmdID.SceneInitFinishReq)
def handle_scene_init(conn: Connection, msg: SceneInitFinishReq):

    online_player_info = OnlinePlayerInfo(
        uid=conn.player.uid, 
        nickname=conn.player.name, 
        player_level=conn.player.prop_map[PropType.PROP_PLAYER_LEVEL],
        avatar_id=conn.player.avatar_id,
        mp_setting_type=MpSettingType.MP_SETTING_NO_ENTER,
        cur_player_num_in_world=1,
        world_level=8
    )

    world_data_notify = WorldDataNotify()
    world_data_notify.world_prop_map = {
        1: PropValue(1, ival=8),
        2: PropValue(2, ival=0)
    }

    host_player_notify = HostPlayerNotify()
    host_player_notify.host_uid = conn.player.uid
    host_player_notify.host_peer_id = 1

    player_game_time_notify = PlayerGameTimeNotify()
    player_game_time_notify.game_time = 0
    player_game_time_notify.uid = conn.player.uid

    scene_time_notify = SceneTimeNotify()
    scene_time_notify.scene_id = conn.player.scene_id
    scene_time_notify.scene_time = 0
    scene_time_notify.is_paused = False

    scene_data_notify = SceneDataNotify()
    scene_data_notify.level_config_name_list = ["Level_BigWorld"]

    world_player_info_notify = WorldPlayerInfoNotify()
    world_player_info_notify.player_info_list = [online_player_info]
    world_player_info_notify.player_uid_list = [conn.player.uid]

    scene_player_info_notify = ScenePlayerInfoNotify()
    scene_player_info_notify.player_info_list = [ScenePlayerInfo(
        uid=conn.player.uid, 
        peer_id=1,
        name=conn.player.name,
        is_connected=True,
        scene_id=conn.player.scene_id,
        online_player_info=online_player_info
    )]

    cur_avatar = conn.player.get_cur_avatar()
    scene_team_update_notify = SceneTeamUpdateNotify(scene_team_avatar_list=[], display_cur_avatar_list=[], is_in_mp=False)
    enter_scene_info_notify = PlayerEnterSceneInfoNotify()
    enter_scene_info_notify.cur_avatar_entity_id = cur_avatar.entity_id
    enter_scene_info_notify.team_enter_info = TeamEnterSceneInfo(team_entity_id=conn.player.world.get_next_entity_id(ProtEntityType.PROT_ENTITY_TEAM), team_ability_info=AbilitySyncStateInfo())
    enter_scene_info_notify.mp_level_entity_info = MpLevelEntityInfo(entity_id=conn.player.world.get_next_entity_id(ProtEntityType.PROT_ENTITY_MP_LEVEL), authority_peer_id=1, ability_info=AbilitySyncStateInfo())

    for avatar_guid in conn.player.teams[conn.player.cur_avatar_team_id].avatar_guid_list:
        avatar = conn.player.get_avatar_by_guid(avatar_guid)
        avatar.scene_weapon_info.guid = conn.player.get_next_guid()
        scene_team_avatar = SceneTeamAvatar()
        scene_team_avatar.scene_id = conn.player.scene_id
        scene_team_avatar.player_uid = conn.player.uid
        scene_team_avatar.avatar_guid = avatar.guid
        scene_team_avatar.entity_id = avatar.entity_id
        scene_team_avatar.avatar_info = avatar.avatar_info

        scene_team_update_notify.scene_team_avatar_list.append(scene_team_avatar)
        enter_scene_info_notify.avatar_enter_info.append(AvatarEnterSceneInfo(
            avatar_guid=avatar.guid,
            avatar_entity_id=avatar.entity_id,
            weapon_guid=avatar.scene_weapon_info.guid,
            weapon_entity_id=avatar.scene_weapon_info.entity_id
        ))

    conn.send(world_data_notify)
    conn.send(scene_data_notify)
    conn.send(host_player_notify)
    conn.send(player_game_time_notify)
    conn.send(scene_time_notify)
    conn.send(world_player_info_notify)
    conn.send(scene_player_info_notify)
    conn.send(scene_team_update_notify)
    conn.send(enter_scene_info_notify)

@router(CmdID.GetScenePointReq)
def handle_scene_point(conn: Connection, msg: GetScenePointReq):
    rsp = GetScenePointRsp()
    rsp.scene_id = msg.scene_id
    rsp.unlocked_point_list = []
    rsp.unlock_area_list = []
    for x in range(200):
        rsp.unlock_area_list.append(x)
        rsp.unlocked_point_list.append(x)
    conn.send(rsp)

@router(CmdID.GetSceneAreaReq)
def handle_scene_area(conn: Connection, msg: GetSceneAreaReq):
    rsp = GetSceneAreaRsp()
    rsp.scene_id = msg.scene_id
    rsp.area_id_list = []
    for x in range(200):
        rsp.area_id_list.append(x)
    conn.send(rsp)

@router(CmdID.EnterSceneDoneReq)
def handle_scene_done(conn: Connection, msg: EnterSceneDoneReq):
    cur_avatar = conn.player.get_cur_avatar()
    conn.player.get_cur_avatar().motion = conn.player.pos
    scene_entity_appear_notify = SceneEntityAppearNotify()
    scene_entity_appear_notify.appear_type = VisionType.VISION_NONE
    scene_entity_appear_notify.entity_list = [cur_avatar.get_scene_entity_info(conn.player.uid)]

    scene_player_location_notify = ScenePlayerLocationNotify()
    scene_player_location_notify.scene_id = conn.player.scene_id
    scene_player_location_notify.player_loc_list = [
        PlayerLocationInfo(uid=conn.player.uid, pos=cur_avatar.motion, rot=cur_avatar.rotation)
    ]

    conn.send(scene_entity_appear_notify)
    conn.send(scene_player_location_notify)
    conn.send(EnterSceneDoneRsp(retcode=0))

@router(CmdID.PostEnterSceneReq)
def handle_enter_world(conn: Connection, msg: PostEnterSceneReq):
    conn.send(PostEnterSceneRsp(retcode=0))

@router(CmdID.GetAllMailReq)
def handle_get_all_mail(conn: Connection, msg: GetAllMailReq):
    get_all_mail = GetAllMailRsp()
    get_all_mail.retcode = 1
    get_all_mail.mail_list = []

    # Create the mail data with desired values
    real_mail_list = MailData()
    real_mail_list.mail_id = 4
    real_mail_list.send_time = 1674910183
    real_mail_list.expire_time = 1706446183
    real_mail_list.is_read = True
    real_mail_list.is_attachment_got = True

    # Create the mail text content with desired values
    real_mail_list.mail_text_content = MailTextContent()
    real_mail_list.mail_text_content.title = "Welcome to CockPY"
    real_mail_list.mail_text_content.content = "Welcome to CockPY, enjoy playing and if you really like the ps then please contribute"
    real_mail_list.mail_text_content.sender = "Hiro"

    # Create the mail item list with desired values
    real_mail_list.item_list = []
    mail_item = MailItem()
    mail_item.equip_param = EquipParam()
    mail_item.equip_param.item_id = 224
    mail_item.equip_param.item_num = 10
    real_mail_list.item_list.append(mail_item)

    # Add the mail data to the mail list
    get_all_mail.mail_list.append(real_mail_list)
    conn.send(get_all_mail)

    new_mail = MailChangeNotify()
    new_mail.del_mail_id_list = []
    new_mail.mail_list = []
    new_mail.mail_list.append(real_mail_list)
    conn.send(new_mail)

    read_mail = ReadMailNotify()
    read_mail.mail_id_list = []
    read_mail.mail_id_list.append(4)

@router(CmdID.BuyResinReq)
def handle_buy_resin(conn: Connection, msg: BuyResinReq):
    buy_resin = BuyResinRsp()
    buy_resin.retcode = 0
    buy_resin.cur_value = 0
    conn.send(buy_resin)

@router(CmdID.MarkMapReq)
def handle_buy_resin(conn: Connection, msg: MarkMapReq):
    mark_map = MarkMapRsp()
    mark_map.retcode = 0
    mark_map.mark_list = MapMarkPoint()
    conn.send(mark_map)

@router(CmdID.BuyWorldResinReq)
def handle_buy_resin(conn: Connection, msg: BuyWorldResinReq):
    buy_world_resin = BuyWorldResinRsp()
    buy_world_resin.retcode = 0
    buy_world_resin.cur_value = 0
    conn.send(buy_world_resin)


@router(CmdID.GetShopReq)
def handle_get_shop(conn: Connection, msg: GetShopReq):
    conn.send(GetShopRsp(retcode=1))

@router(CmdID.EnterWorldAreaReq)
def handle_enter_world(conn: Connection, msg: EnterWorldAreaReq):
    rsp = EnterWorldAreaRsp()
    rsp.area_id = msg.area_id
    rsp.area_type = msg.area_type
    conn.send(rsp)

@router(CmdID.SceneGetAreaExplorePercentReq)
def area_explore_percent_handle(conn: Connection, msg: SceneGetAreaExplorePercentReq): 
    rsp = SceneGetAreaExplorePercentRsp()
    rsp.area_id = msg.area_id
    rsp.explore_percent = 100
    conn.send(rsp)
    
#++
@router(CmdID.GetShopReq)
def handle_GetShopReq(conn: Connection, msg: GetShopReq):
    shop_type = msg.shop_type
    print(f'\n\n\n\n\n\n {shop_type}')
    get_shop_rsp = GetShopRsp()
    get_shop_rsp.retcode = 0
    get_shop_rsp.shop = Shop()
    get_shop_rsp.shop.shop_type = shop_type
    get_shop_rsp.shop.goods_list = []
    with open(ShopGoodsData) as shopgoods_data:
        shopgoods_data_excel = json.load(shopgoods_data)
        for obj in shopgoods_data_excel:
            goodsId = obj["goodsId"]
            itemId = obj["itemId"]
            itemCount = obj["itemCount"]
     
    
            shopgoods = ShopGoods()
            shopgoods.goods_id = goodsId
            #print(shopgoods.goods_id)
            shopgoods.goods_item = []
            shopitem = ItemParam()
            shopitem.item_id = itemId
            shopitem.count = itemCount
            shopgoods.goods_item.append(shopitem)
            #print(shopgoods.goods_item)
            shopgoods.cost_item_list = []
    
            if "costItems" in obj:
                for costItem in obj["costItems"]:
                    costItem_id = costItem["id"]
                    costItem_count = costItem["count"]
    
                cost_item = ItemParam()
                cost_item.item_id = costItem_id
                cost_item.count = costItem_count
                shopgoods.cost_item_list.append(cost_item)
            
            if "costHcoin" in obj:
                costHcoin = obj["costHcoin"]
    
                shopgoods.hcoin = costHcoin
    
            if "costScoin" in obj:
                costScoin = obj["costScoin"]
    
                shopgoods.scoin = costScoin
    
            if "buyLimit" in obj:
                buyLimit = obj["buyLimit"]
    
                shopgoods.buy_limit = buyLimit
    
            if "refreshDays" in obj:
                refreshDays = obj["refreshDays"]
    
                shopgoods.next_refresh_time = refreshDays
    
            if "beginTime" in obj:
                beginTime = 1
      
                shopgoods.begin_time = beginTime
      
            if "endTime" in obj:
                endTime = 9999999
     
                shopgoods.end_time = endTime

            get_shop_rsp.shop.goods_list.append(shopgoods)
    #print(shopgoods)
    conn.send(get_shop_rsp)
            
@router(CmdID.BuyGoodsReq)
def handle_buy_goods(conn: Connection, msg: BuyGoodsReq):
    buy_goods_rsp = BuyGoodsRsp()
    buy_goods_rsp.retcode = 0
    buy_goods_rsp.shop_type = msg.shop_type
    buy_goods_rsp.goods = msg.goods
    buy_goods_rsp.buy_count = msg.buy_count
    conn.send(buy_goods_rsp)


@router(CmdID.SceneTransToPointReq)
def handle_SceneTransToPoint(conn: Connection, msg: SceneTransToPointReq):
    if hasattr(resources, 'binoutput'):
        point_data = resources.binoutput.config_scene[msg.scene_id].points
        
        scene_id = point_data[msg.point_id].tranSceneId
        pos = point_data[msg.point_id].tranPos
        
        conn.player.pos = pos
        
        conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_GOTO))
        
        conn.player.scene_id = scene_id

        scene_trans_to_point_rsp = SceneTransToPointRsp()
        scene_trans_to_point_rsp.retcode = 0
        scene_trans_to_point_rsp.scene_id = msg.scene_id
        scene_trans_to_point_rsp.point_id = msg.point_id
        conn.send(scene_trans_to_point_rsp)



@router(CmdID.PlayerSetPauseReq)
def handle_PlayerSetPause(conn: Connection, msg: PlayerSetPauseReq):
    player_set_pause = PlayerSetPauseRsp()
    player_set_pause.retcode = 0
    conn.send(player_set_pause)


@router(CmdID.DungeonEntryInfoReq)
def handle_DungeonEntryInfo(conn: Connection, msg: DungeonEntryInfoReq):
    if hasattr(resources, 'binoutput'):
        point_data = resources.binoutput.config_scene[3].points
        
        dungeon_entry_info_rsp = DungeonEntryInfoRsp()
        dungeon_entry_info_rsp.point_id = msg.point_id
        
        dungeon_entry_list = []
        
        rec = None
        
        for dungeonId in point_data[msg.point_id].dungeonIds:
            rec = dungeonId
            dungeon_info = DungeonEntryInfo()
            dungeon_info.dungeon_id = dungeonId
            dungeon_info.is_passed = True
            dungeon_info.left_times = current_milli_time()
            dungeon_info.start_time = current_milli_time() + 500
            dungeon_info.end_time = current_milli_time() + 1000
            dungeon_info.max_boss_chest_num = 2
            dungeon_info.boss_chest_num = 19000000
            dungeon_entry_list.append(dungeon_info)
        
        dungeon_entry_info_rsp.dungeon_entry_list = dungeon_entry_list
        dungeon_entry_info_rsp.recommend_dungeon_id = rec
        
        conn.send(dungeon_entry_info_rsp)

@router(CmdID.EvtBeingHitsCombineNotify)
def handle_combat_invocations_notify(conn: Connection, msg: EvtBeingHitsCombineNotify):
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    print(map_commands.hp_map)
    for invoke in msg.evt_being_hit_info_list:
        if (int(map_commands.hp_map[int(invoke.attack_result.defense_id)]) <= int(invoke.attack_result.damage)):
            # kill
            lscn = LifeStateChangeNotify()
            lscn.entity_id = invoke.attack_result.defense_id
            lscn.life_state = LifeState(2)
            lscn.source_entity_id = invoke.attack_result.attacker_id
            lscn.die_type: PlayerDieType(1)
            sedn = SceneEntityDisappearNotify()
            sedn.disappear_type = VisionType(5)      # make them just dissapear instead of dying because VisionType(6) doesnt really work and I have 0 idea why and how to fix
            sedn.entity_list = [invoke.attack_result.defense_id]
            map_commands.scene_entities.remove(invoke.attack_result.defense_id)
            map_commands.hp_map.pop(invoke.attack_result.defense_id)
            #conn.send(lscn)
            conn.send(sedn)
        else:
            # hurt
            with open(hpcalcs) as curvecalcs:
                curvecalcsdata = json.load(curvecalcs)
            for obj in curvecalcsdata:
                if obj["Id"] == 21010101:       # for now their hp will be hardcoded as lv90 hilichurl until I find a creative fix
                    maxhp = obj["Hp"]
            efpun = EntityFightPropUpdateNotify()
            efpun.entity_id = invoke.attack_result.defense_id
            map_commands.hp_map[int(invoke.attack_result.defense_id)] -= invoke.attack_result.damage
            efpun.fight_prop_map = { 
                1010: float(map_commands.hp_map[invoke.attack_result.defense_id]),
                2000: float(maxhp)
            }
            conn.send(efpun)
            conn.send(efpun)
            conn.send(efpun)
            conn.send(efpun)
            conn.send(efpun)
            conn.send(efpun)
            print(f"entity_id = {efpun.entity_id}\nfight_prop_map = {efpun.fight_prop_map}")
            print(f"entity_id = {efpun.entity_id}\nfight_prop_map = {efpun.fight_prop_map}")
            print(f"entity_id = {efpun.entity_id}\nfight_prop_map = {efpun.fight_prop_map}")
            print(f"entity_id = {efpun.entity_id}\nfight_prop_map = {efpun.fight_prop_map}")
            print(f"entity_id = {efpun.entity_id}\nfight_prop_map = {efpun.fight_prop_map}")
            print(f"entity_id = {efpun.entity_id}\nfight_prop_map = {efpun.fight_prop_map}")
    newpacket = msg
    conn.send(newpacket)
    # Done!

@router(CmdID.PersonalSceneJumpReq)
def handle_PersonalSceneJump(conn: Connection, msg: PersonalSceneJumpReq):
    if hasattr(resources, 'binoutput'):
        point_data = resources.binoutput.config_scene[conn.player.scene_id].points
            
        scene_id = point_data[msg.point_id].tranSceneId
        pos = point_data[msg.point_id].tranPos
        
        conn.player.pos = pos
        
        player_enter_scene_notify = PlayerEnterSceneNotify()
        player_enter_scene_notify.scene_id = scene_id
        player_enter_scene_notify.pos = pos
        player_enter_scene_notify.scene_begin_time = current_milli_time()
        player_enter_scene_notify.type = EnterType.ENTER_JUMP
        player_enter_scene_notify.enter_scene_token = 1000
        player_enter_scene_notify.world_level = 8
        player_enter_scene_notify.target_uid = conn.player.uid
        player_enter_scene_notify.prev_scene_id = conn.player.scene_id
        player_enter_scene_notify.prev_pos = conn.player.pos    
        conn.send(player_enter_scene_notify)
        
        conn.player.scene_id = scene_id
            
        personal_scene_jump = PersonalSceneJumpRsp()
        personal_scene_jump.retcode = 0
        personal_scene_jump.dest_scene_id = scene_id
        personal_scene_jump.dest_pos = pos
        conn.send(personal_scene_jump)

@router(CmdID.SceneEntityDrownReq)
def handle_SceneEntityDrownReq(conn: Connection, msg: SceneEntityDrownReq):
    scene_entity_drown = SceneEntityDrownRsp()
    scene_entity_drown.retcode = 1
    scene_entity_drown.entity_id = msg.entity_id
    conn.send(scene_entity_drown)
    sedn = SceneEntityDisappearNotify()
    sedn.disappear_type = VisionType(5)      # make them just dissapear instead of dying because VisionType(6) doesnt really work and I have 0 idea why and how to fix
    sedn.entity_list = msg.entity_id
    conn.send(sedn)

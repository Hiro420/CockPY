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

@router(CmdID.CombatInvocationsNotify)
def handle_combat_invocations_notify(conn: Connection, msg: EvtBeingHitNotify):
    combat_invocations_notify = CombatInvocationsNotify()
    combat_invocations_notify.invoke_list = CombatInvokeEntry()
    combat_invocations_notify.invoke_list.forward_type = ForwardType(1)
    combat_invocations_notify.invoke_list.argument_type = CombatTypeArgument(1)
    combat_invocations_notify.invoke_list.combat_data = msg.invoke_list.combat_data
    conn.send(combat_invocations_notify)

@router(CmdID.EvtBeingHitsCombineNotify)
def handle_combat_invocations_notify(conn: Connection, msg: EvtBeingHitsCombineNotify):
    combat_invocations_notify = EvtBeingHitsCombineNotify()
    combat_invocations_notify.forward_type = ForwardType(1)
    combat_invocations_notify.argument_type = EvtBeingHitInfo(1)
    combat_invocations_notify.evt_being_hit_info_list = EvtBeingHitInfo()
    combat_invocations_notify.evt_being_hit_info_list.peer_id = 1
    combat_invocations_notify.evt_being_hit_info_list.attack_result = AttackResult()
    combat_invocations_notify.evt_being_hit_info_list.attack_result.attacker_id = 10000005
    combat_invocations_notify.evt_being_hit_info_list.attack_result.damage = 1
    combat_invocations_notify.evt_being_hit_info_list.attack_result.defense_id = 1
    combat_invocations_notify.evt_being_hit_info_list.attack_result.is_crit = 1
    combat_invocations_notify.evt_being_hit_info_list.element_type = 1
    combat_invocations_notify.evt_being_hit_info_list.damage_percentage = 100
    combat_invocations_notify.evt_being_hit_info_list.damage_extra = 1
    combat_invocations_notify.evt_being_hit_info_list.bonus_critical = 1
    combat_invocations_notify.evt_being_hit_info_list.bonus_critical_hurt = 1
    combat_invocations_notify.evt_being_hit_info_list.use_gadget_damage_action = 0
    combat_invocations_notify.evt_being_hit_info_list.strike_type = 1
    combat_invocations_notify.evt_being_hit_info_list.hit_collision = HitCollision()
    conn.send(combat_invocations_notify)

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

global player_x
global player_y
global player_z
player_x = 0
player_y = 0
player_z = 0

@router(CmdID.PlayerEnterDungeonReq)
def handle_PlayerEnterDungeonReq(conn: Connection, msg: PlayerEnterDungeonReq):
    if hasattr(resources, 'binoutput'):
        dungeon_data = resources.excels.dungeon_data[msg.dungeon_id]
        point_data = resources.binoutput.config_scene[dungeon_data.scene_id].points
        
        scene_id = dungeon_data.scene_id

        lua_file_pre = os.path.abspath(f'.\\game_server\\lua\\scene{scene_id}.lua')
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
            pos = Vector(-0.4, -5.2, 64.7)
            rot = Vector(0, 0, 0)

        print(scene_id)
        
        conn.player.pos = pos

        conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_DUNGEON))
        
        # conn.player.scene_id = scene_id

        player_enter_dungeon = PlayerEnterDungeonRsp()
        player_enter_dungeon.retcode = 0
        player_enter_dungeon.point_id = msg.point_id
        player_enter_dungeon.dungeon_id = msg.dungeon_id
        conn.send(player_enter_dungeon)
        #conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_DUNGEON))

@router(CmdID.PlayerQuitDungeonReq)
def handle_PlayerQuitDungeonReq(conn: Connection, msg: PlayerQuitDungeonReq):
    player_quit_dungeon = PlayerQuitDungeonRsp()
    point_data = resources.binoutput.config_scene[conn.player.scene_id].points
    player_quit_dungeon.point_id = msg.point_id
    conn.send(player_quit_dungeon)  
    scene_id = 3
    global player_x
    global player_y
    global player_z
    pos = Vector(player_x, player_y, player_z)
    conn.player.pos = pos
    conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_JUMP))
    #time.sleep(5)
    #player_x = conn.player.pos.x
    #player_y = conn.player.pos.y
    #player_z = conn.player.pos.z
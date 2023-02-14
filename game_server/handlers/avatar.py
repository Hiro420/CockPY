from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import *
from game_server.handlers.avatar import *
from game_server.game.world import World
from game_server.protocol.reader import BinaryReader
from game_server.resource.enums import PropType
import enet

router = HandlerRouter()

def __init__(self, world: World):
    self.entid = world.get_next_entity_id(ProtEntityType.PROT_ENTITY_WEAPON)

@router(CmdID.ChangeAvatarReq)
def handle_change_avatar(conn: Connection, msg: ChangeAvatarReq):
    old_avatar = conn.player.get_cur_avatar()
    scene_entity_disappear_notify = SceneEntityDisappearNotify()
    scene_entity_disappear_notify.disappear_type = VisionType.VISION_REPLACE
    scene_entity_disappear_notify.entity_list = [old_avatar.entity_id]
    conn.send(scene_entity_disappear_notify)

    conn.player.cur_avatar_guid = msg.guid

    new_avatar = conn.player.get_cur_avatar()
    new_avatar.motion = old_avatar.motion
    new_avatar.rotation = old_avatar.rotation
    new_avatar.speed = old_avatar.speed
    new_avatar.motion_state = old_avatar.motion_state

    scene_entity_appear_notify = SceneEntityAppearNotify()
    scene_entity_appear_notify.appear_type = VisionType.VISION_REPLACE
    scene_entity_appear_notify.entity_list = [new_avatar.get_scene_entity_info(conn.player.uid)]
    conn.send(scene_entity_appear_notify)

    rsp = ChangeAvatarRsp()
    rsp.cur_guid = msg.guid
    rsp.skill_id = msg.skill_id
    conn.send(rsp)


@router(CmdID.SetUpAvatarTeamReq)
def handle_set_up_avatr_team(conn: Connection, msg: SetUpAvatarTeamReq):
    conn.player.teams[msg.team_id].avatar_guid_list = msg.avatar_team_guid_list

    avatar_team_update_notify = AvatarTeamUpdateNotify()
    avatar_team_update_notify.avatar_team_map = conn.player.teams
    conn.send(avatar_team_update_notify)

    if conn.player.cur_avatar_team_id == msg.team_id:
        scene_team_update_notify = SceneTeamUpdateNotify(scene_team_avatar_list=[], display_cur_avatar_list=[], is_in_mp=False)
        for avatar_guid in msg.avatar_team_guid_list:
            avatar = conn.player.get_avatar_by_guid(avatar_guid)
            avatar.scene_weapon_info.guid = conn.player.get_next_guid()
            scene_team_avatar = SceneTeamAvatar()
            scene_team_avatar.scene_id = conn.player.scene_id
            scene_team_avatar.player_uid = conn.player.uid
            scene_team_avatar.avatar_guid = avatar.guid
            scene_team_avatar.entity_id = avatar.entity_id
            scene_team_avatar.avatar_info = avatar.avatar_info
            scene_team_update_notify.scene_team_avatar_list.append(scene_team_avatar)
        conn.send(scene_team_update_notify)
    
    if conn.player.cur_avatar_guid != msg.cur_avatar_guid:
        old_avatar = conn.player.get_cur_avatar()
        scene_entity_disappear_notify = SceneEntityDisappearNotify()
        scene_entity_disappear_notify.disappear_type = VisionType.VISION_REPLACE
        scene_entity_disappear_notify.entity_list = [old_avatar.entity_id]
        conn.send(scene_entity_disappear_notify)

        conn.player.cur_avatar_guid = msg.cur_avatar_guid

        new_avatar = conn.player.get_cur_avatar()
        new_avatar.motion = old_avatar.motion
        new_avatar.rotation = old_avatar.rotation
        new_avatar.speed = old_avatar.speed
        new_avatar.motion_state = old_avatar.motion_state

        scene_entity_appear_notify = SceneEntityAppearNotify()
        scene_entity_appear_notify.appear_type = VisionType.VISION_REPLACE
        scene_entity_appear_notify.entity_list = [new_avatar.get_scene_entity_info(conn.player.uid)]
        conn.send(scene_entity_appear_notify)

    rsp = SetUpAvatarTeamRsp()
    rsp.avatar_team_guid_list = msg.avatar_team_guid_list
    rsp.cur_avatar_guid = msg.cur_avatar_guid
    rsp.team_id = msg.team_id
    conn.send(rsp)

@router(CmdID.WearEquipReq)
def handle_wear_equip(conn: Connection, msg: WearEquipReq):

    wear_equip_rsp = WearEquipRsp()
    wear_equip_rsp.retcode = 0
    wear_equip_rsp.avatar_guid = msg.avatar_guid
    wear_equip_rsp.equip_guid = msg.equip_guid
    conn.send(wear_equip_rsp)

    avatar_equip_change = AvatarEquipChangeNotify()
    avatar_equip_change.retcode = 0
    avatar_equip_change.avatar_guid = msg.avatar_guid
    avatar_equip_change.equip_type = 6
    equipid = int(msg.equip_guid - 50000000)
    avatar_equip_change.item_id = equipid
    avatar_equip_change.equip_guid = msg.equip_guid
    avatar_equip_change.weapon = SceneWeaponInfo()
    avatar1 = conn.player.get_avatar_by_guid(msg.avatar_guid)
    avatar_equip_change.weapon.entity_id = avatar1.scene_weapon_info.entity_id
    avatar_equip_change.weapon.level = 90
    avatar_equip_change.weapon.guid = msg.equip_guid
    avatar_equip_change.weapon.gadget_id = equipid
    avatar_equip_change.weapon.exp = 1
    avatar_equip_change.weapon.promote_level = 5
    avatar_equip_change.weapon.ability_info = {}
    avatar_equip_change.weapon.affix_map.update({})
    avatar_equip_change.reliquary = SceneReliquaryInfo()
    conn.send(avatar_equip_change)

    print("retcode: "+str(avatar_equip_change.retcode))
    print("avatar_guid: "+str(avatar_equip_change.avatar_guid))
    print("equip_type: "+str(avatar_equip_change.equip_type))
    print("item_id: "+str(avatar_equip_change.item_id))
    print("equip_guid: "+str(avatar_equip_change.equip_guid))
    print("weapon entity id: "+str(avatar_equip_change.weapon.entity_id))
    print("level: "+str(avatar_equip_change.weapon.level))
    print("exp: "+str(avatar_equip_change.weapon.exp))
    print("promote_level: "+str(avatar_equip_change.weapon.promote_level))
    if type(equipid) == int:
        print("The value of equipid is an unsigned 64-bit integer: {:064d}".format(equipid))
    else:
        print("The value of equipid is not an unsigned 64-bit integer.")
    if type(avatar_equip_change.avatar_guid) == int:
        print("The value of avatar_guid is an unsigned 64-bit integer: {:064d}".format(avatar_equip_change.avatar_guid))
    else:
        print("The value of avatar_guid is not an unsigned 64-bit integer.")

@router(CmdID.PathfindingEnterSceneReq)
def handle_path_finding_enter_scene(conn: Connection, msg: PathfindingEnterSceneReq):

    path_finding_enter_scene_rsp = PathfindingEnterSceneRsp()
    conn.send(path_finding_enter_scene_rsp)

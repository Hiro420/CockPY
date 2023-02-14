from lib.proto import Vector,EnterType,PlayerEnterSceneNotify, AvatarTeam, AvatarInfo, AvatarType, PropValue, AvatarFetterInfo
from game_server.utils.time import current_milli_time
from game_server.resource.enums import PropType
from game_server.game.world import World
from game_server.game.entity.avatar import AvatarEntity
from game_server.resource.enums import PropType, FightProp
from game_server.resource import resources
import dataclasses\

sword_characters_ids = ['10000001', '10000002', '10000003', '10000005', '10000007', '10000015', '10000025', '10000032', '10000035', '10000038', '11000008', '11000009', '11000010', '11000011', '11000013', '11000017', '11000018', '11000019', '11000027', '11000031', '11000032', '11000033', '11000034', '11000036', '11000038', '11000039', '11000040', '11000041', '10000046']

claymore_characters_ids = ['10000016', '10000020', '10000024', '10000034', '10000036', '11000030', '11000042']

spear_characters_ids = ['10000023', '10000026', '10000030', '11000028', '11000035']

catalyst_characters_ids = ['10000006', '10000014', '10000027', '10000029', '11000026', '11000043', '11000044', '11000045']

bow_characters_ids = ['10000021', '10000022', '10000031', '10000033', '10000037', '11000025', '11000037']

@dataclasses.dataclass()
class Player:
    uid: int
    name: str
    avatar_id: int = 10000005
    world: World = World()

    scene_id: int = 0
    pos: Vector = dataclasses.field(default_factory=Vector)

    prop_map: dict[PropType, int] = dataclasses.field(default_factory=dict)
    next_guid: int = 0

    teams: dict[int, AvatarTeam] = dataclasses.field(default_factory=dict)

    avatars: list[AvatarEntity] = dataclasses.field(default_factory=list)
    cur_avatar_guid: int = 0
    cur_avatar_team_id: int = 0

    def init_default(self):
        self.prop_map = {
            PropType.PROP_IS_SPRING_AUTO_USE: 1,
            PropType.PROP_SPRING_AUTO_USE_PERCENT: 50,
            PropType.PROP_IS_FLYABLE: 1,
            PropType.PROP_IS_TRANSFERABLE: 1,
            PropType.PROP_CUR_PERSIST_STAMINA: 24000,
            PropType.PROP_MAX_STAMINA: 24000,
            PropType.PROP_PLAYER_LEVEL: 60,
            PropType.PROP_PLAYER_EXP: 0,
            PropType.PROP_PLAYER_HCOIN: 10000000,
            PropType.PROP_PLAYER_SCOIN: 10000000
        }
        self.teams = {
            0: AvatarTeam(avatar_guid_list=[], team_name="Team 1"),
            1: AvatarTeam(avatar_guid_list=[], team_name="Team 2"),
            2: AvatarTeam(avatar_guid_list=[], team_name="Team 3"),
            3: AvatarTeam(avatar_guid_list=[], team_name="Team 4"),
        }
        traveler = AvatarInfo()
        traveler.avatar_id = 10000005
        traveler.proud_skill_list = [711, 721 , 722]
        traveler.avatar_type = AvatarType.AVATAR_TYPE_FORMAL
        traveler.skill_depot_id = 504
        traveler.avatar_skill = [10101, 10001, 10102, 10006, 10054]
        traveler.talent_id_list = [71, 72, 73, 74, 75, 76]
        traveler.prop_map = {
            PropType.PROP_LEVEL._value_: PropValue(type=PropType.PROP_LEVEL._value_, val=80, ival=80),
            PropType.PROP_EXP._value_: PropValue(type=PropType.PROP_EXP._value_, val=0, ival=0),
            PropType.PROP_BREAK_LEVEL._value_: PropValue(type=PropType.PROP_BREAK_LEVEL._value_, val=4, ival=4),
        }

        traveler.fight_prop_map = {
                FightProp.FIGHT_PROP_BASE_HP._value_: 20000,
                FightProp.FIGHT_PROP_MAX_HP._value_: 20000,
                FightProp.FIGHT_PROP_BASE_DEFENSE._value_: 3000,
                FightProp.FIGHT_PROP_BASE_ATTACK._value_: 3000,
                FightProp.FIGHT_PROP_CRITICAL._value_: 1,
                FightProp.FIGHT_PROP_CRITICAL_HURT._value_: 2,
                FightProp.FIGHT_PROP_CHARGE_EFFICIENCY._value_: 2,
                FightProp.FIGHT_PROP_MAX_ROCK_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_MAX_ICE_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_MAX_WATER_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_MAX_FIRE_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_MAX_ELEC_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_MAX_GRASS_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_MAX_WIND_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_ROCK_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_ICE_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_WATER_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_ELEC_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_FIRE_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_WIND_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_GRASS_ENERGY._value_: 1,
                FightProp.FIGHT_PROP_CUR_HP._value_: 20000,
                FightProp.FIGHT_PROP_CUR_DEFENSE._value_: 3000,
                FightProp.FIGHT_PROP_CUR_ATTACK._value_: 3000,
                FightProp.FIGHT_PROP_SPEED_PERCENT._value_: 2,
                FightProp.FIGHT_PROP_SKILL_CD_MINUS_RATIO._value_: 1,
        }

        traveler.fetter_info = AvatarFetterInfo(exp_level=10, exp_number=10)
        traveler.equip_guid_list = [50011507]
        traveler.proud_skill_extra_level_map = {}
        traveler.avatar_skill_depot_datas = [504, 505, 506]
        traveler.skill_level_map = {
            10054: 1,
            10068: 1,
            10067: 1,
            505: 1,
            506: 1
        }
        traveler.life_state = 1
        traveler.core_proud_skill_level = 1
        traveler.guid = self.get_next_guid()
        self.avatars.append(AvatarEntity(self.world, traveler, self.pos))
        self.teams[self.cur_avatar_team_id].avatar_guid_list.append(traveler.guid)
        self.cur_avatar_guid = traveler.guid
        self.add_all_avatars()
    
    def add_all_avatars(self):
        for avatar_id, avatar_data in resources.excels.avatar_datas.items():
            print(avatar_id)
            print(avatar_data)
            if avatar_id == 10000005:
                continue
            skill_depot = resources.excels.avatar_skill_depot_datas[avatar_data.skill_depot_id]
            print(skill_depot)
            talents = skill_depot.talent_groups
            talents.append(skill_depot.leader_talent)
            avatar = AvatarInfo()
            avatar.proud_skill_list = []
            avatar.equip_guid_list = []
            avatar.avatar_id = int(avatar_id)
            avatar.avatar_type = AvatarType.AVATAR_TYPE_FORMAL
            if avatar.avatar_id != 10000005 and avatar.avatar_id != 10000007 and avatar.avatar_id != 10000020 and avatar.avatar_id != 10000030:
                skill_depot_id_test1 = f"{avatar.avatar_id}"
                skill_depot_id_test = skill_depot_id_test1[6:].replace('0', '')
                avatar.skill_depot_id = int(f"{skill_depot_id_test}"+"01")
            elif avatar.avatar_id == 10000020:
                avatar.skill_depot_id = int(2001)
            elif avatar.avatar_id == 10000030:
                avatar.skill_depot_id = int(3001)
            else:
                avatar.skill_depot_id = int(504)
            #avatar.skill_depot_id = int(avatar_data.skill_depot_id)
            if avatar.avatar_id == 10000001:
                avatar.avatar_skill = [10014, 10011, 10012]
            elif avatar.avatar_id == 10000002:
                avatar.avatar_skill = [10019, 10024, 10018, 10013]
            elif avatar.avatar_id == 10000003:
                avatar.avatar_skill = [10034, 10031, 10033]
            elif avatar.avatar_id == 10000006:
                avatar.avatar_skill = [10062, 10060, 10061]
            elif avatar.avatar_id == 10000014:
                avatar.avatar_skill = [10072, 10070, 10071]
            elif avatar.avatar_id == 10000015:
                avatar.avatar_skill = [10075, 10073, 10074]
            elif avatar.avatar_id == 10000016:
                avatar.avatar_skill = [10165, 10160, 10161]
            elif avatar.avatar_id == 10000020:
                avatar.avatar_skill = [10203, 10201, 10202]
            elif avatar.avatar_id == 10000021:
                avatar.avatar_skill = [10017, 10041, 10032]
            elif avatar.avatar_id == 10000022:
                avatar.avatar_skill = [10225, 10221, 10224]
            elif avatar.avatar_id == 10000023:
                avatar.avatar_skill = [10235, 10231, 10232]
            elif avatar.avatar_id == 10000024:
                avatar.avatar_skill = [10245, 10241, 10242]
            elif avatar.avatar_id == 10000025:
                avatar.avatar_skill = [10385, 10381, 10382]
            elif avatar.avatar_id == 10000026:
                avatar.avatar_skill = [10265, 10261, 10262]
            elif avatar.avatar_id == 10000027:
                avatar.avatar_skill = [10274, 10271, 10272]
            elif avatar.avatar_id == 10000029:
                avatar.avatar_skill = [10295, 10291, 10292]
            elif avatar.avatar_id == 10000030:
                avatar.avatar_skill = [10303, 10301, 10302]
            elif avatar.avatar_id == 10000031:
                avatar.avatar_skill = [10313, 10311, 10312]
            elif avatar.avatar_id == 10000032:
                avatar.avatar_skill = [10323, 10321, 10322]
            elif avatar.avatar_id == 10000033:
                avatar.avatar_skill = [10333, 10331, 10332]
            elif avatar.avatar_id == 10000034:
                avatar.avatar_skill = [10343, 10341, 10342]
            elif avatar.avatar_id == 10000035:
                avatar.avatar_skill = [10353, 10351, 10352]
            elif avatar.avatar_id == 10000037:
                avatar.avatar_skill = [10373, 10371, 10372]
            avatar.talent_id_list = []
            if avatar.avatar_id != 10000005 and avatar.avatar_id != 10000007 and avatar.avatar_id != 10000020 and avatar.avatar_id != 10000030:
                talent_id_list_test1 = f"{avatar.avatar_id}"
                talent_id_list_test = talent_id_list_test1[6:].replace('0', '')
                avatar.talent_id_list.append(int(f"{talent_id_list_test}"+"1"))
                avatar.talent_id_list.append(int(f"{talent_id_list_test}"+"2"))
                avatar.talent_id_list.append(int(f"{talent_id_list_test}"+"3"))
                avatar.talent_id_list.append(int(f"{talent_id_list_test}"+"4"))
                avatar.talent_id_list.append(int(f"{talent_id_list_test}"+"5"))
                avatar.talent_id_list.append(int(f"{talent_id_list_test}"+"6"))
            elif avatar.avatar_id == 10000020:
                avatar.talent_id_list = [201, 202, 203, 204, 205, 206]
            elif avatar.avatar_id == 10000030:
                avatar.talent_id_list = [301, 302, 303, 304, 305, 306]
            else:
                avatar.talent_id_list = [71, 72, 73, 74, 75, 76]
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            print(avatar.talent_id_list)
            avatar.prop_map = {
                PropType.PROP_LEVEL._value_: PropValue(type=PropType.PROP_LEVEL._value_, val=80, ival=80),
                PropType.PROP_EXP._value_: PropValue(type=PropType.PROP_EXP._value_, val=0, ival=0),
                PropType.PROP_BREAK_LEVEL._value_: PropValue(type=PropType.PROP_BREAK_LEVEL._value_, val=4, ival=4),
            }
            avatar.fight_prop_map = {
                    FightProp.FIGHT_PROP_BASE_HP._value_: 20000,
                    FightProp.FIGHT_PROP_MAX_HP._value_: 20000,
                    FightProp.FIGHT_PROP_BASE_DEFENSE._value_: 3000,
                    FightProp.FIGHT_PROP_BASE_ATTACK._value_: 3000,
                    FightProp.FIGHT_PROP_CRITICAL._value_: 1,
                    FightProp.FIGHT_PROP_CRITICAL_HURT._value_: 2,
                    FightProp.FIGHT_PROP_CHARGE_EFFICIENCY._value_: 2,
                    FightProp.FIGHT_PROP_MAX_ROCK_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_MAX_ICE_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_MAX_WATER_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_MAX_FIRE_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_MAX_ELEC_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_MAX_GRASS_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_MAX_WIND_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_ROCK_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_ICE_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_WATER_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_ELEC_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_FIRE_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_WIND_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_GRASS_ENERGY._value_: 1,
                    FightProp.FIGHT_PROP_CUR_HP._value_: 20000,
                    FightProp.FIGHT_PROP_CUR_DEFENSE._value_: 3000,
                    FightProp.FIGHT_PROP_CUR_ATTACK._value_: 3000,
                    FightProp.FIGHT_PROP_SPEED_PERCENT._value_: 2,
                    FightProp.FIGHT_PROP_SKILL_CD_MINUS_RATIO._value_: 1,
            }
            avatar.fetter_info = AvatarFetterInfo(exp_level=10, exp_number=10)
            avatar.equip_guid_list = []
            if sword_characters_ids.__contains__(f"{avatar.avatar_id}"):
                avatar.equip_guid_list = [50011507]
            elif claymore_characters_ids.__contains__(f"{avatar.avatar_id}"):
                avatar.equip_guid_list = [50012506]
            elif spear_characters_ids.__contains__(f"{avatar.avatar_id}"):
                avatar.equip_guid_list = [50013506]
            elif catalyst_characters_ids.__contains__(f"{avatar.avatar_id}"):
                avatar.equip_guid_list = [50014503]
            elif bow_characters_ids.__contains__(f"{avatar.avatar_id}"):
                avatar.equip_guid_list = [50015506]

            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)
            print(avatar.equip_guid_list)

            avatar.proud_skill_extra_level_map = {}
            avatar.inherent_proud_skill_list = []
            if avatar.avatar_id == 10000001:
                avatar.skill_level_map = {
                    10014: 1,
                    10011: 1,
                    10012: 1
                    }
            elif avatar.avatar_id == 10000002:
                avatar.skill_level_map = {
                    10019: 1,
                    10024: 1,
                    10018: 1,
                    10013: 1
                    }
            elif avatar.avatar_id == 10000003:
                avatar.skill_level_map = {
                    10034: 1,
                    10031: 1,
                    10033: 1
                    }
            elif avatar.avatar_id == 10000006:
                avatar.skill_level_map = {
                    10062: 1,
                    10060: 1,
                    10061: 1
                    }
            elif avatar.avatar_id == 10000014:
                avatar.skill_level_map = {
                    10072: 1,
                    10070: 1,
                    10071: 1
                    }
            elif avatar.avatar_id == 10000015:
                avatar.skill_level_map = {
                    10075: 1,
                    10073: 1,
                    10074: 1
                    }
            elif avatar.avatar_id == 10000016:
                avatar.skill_level_map = {
                    10165: 1,
                    10160: 1,
                    10161: 1
                    }
            elif avatar.avatar_id == 10000020:
                avatar.skill_level_map = {
                    10203: 1,
                    10201: 1,
                    10202: 1
                    }
            elif avatar.avatar_id == 10000021:
                avatar.skill_level_map = {
                    10017: 1,
                    10041: 1,
                    10032: 1
                    }
            elif avatar.avatar_id == 10000022:
                avatar.skill_level_map = {
                    10225: 1,
                    10221: 1,
                    10224: 1
                    }
            elif avatar.avatar_id == 10000023:
                avatar.skill_level_map = {
                    10235: 1,
                    10231: 1,
                    10232: 1
                    }
            elif avatar.avatar_id == 10000024:
                avatar.skill_level_map = {
                    10245: 1,
                    10241: 1,
                    10242: 1
                    }
            elif avatar.avatar_id == 10000025:
                avatar.skill_level_map = {
                    10385: 1,
                    10381: 1,
                    10382: 1
                    }
            elif avatar.avatar_id == 10000026:
                avatar.skill_level_map = {
                    10265: 1,
                    10261: 1,
                    10262: 1
                    }
            elif avatar.avatar_id == 10000027:
                avatar.skill_level_map = {
                    10274: 1,
                    10271: 1,
                    10272: 1
                    }
            elif avatar.avatar_id == 10000029:
                avatar.skill_level_map = {
                    10295: 1,
                    10291: 1,
                    10292: 1
                    }
            elif avatar.avatar_id == 10000030:
                avatar.skill_level_map = {
                    10303: 1,
                    10301: 1,
                    10302: 1
                    }
            elif avatar.avatar_id == 10000031:
                avatar.skill_level_map = {
                    10313: 1,
                    10311: 1,
                    10312: 1
                    }
            elif avatar.avatar_id == 10000032:
                avatar.skill_level_map = {
                    10323: 1,
                    10321: 1,
                    10322: 1
                    }
            elif avatar.avatar_id == 10000033:
                avatar.skill_level_map = {
                    10333: 1,
                    10331: 1,
                    10332: 1
                    }
            elif avatar.avatar_id == 10000034:
                avatar.skill_level_map = {
                    10343: 1,
                    10341: 1,
                    10342: 1
                    }
            elif avatar.avatar_id == 10000035:
                avatar.skill_level_map = {
                    10353: 1,
                    10351: 1,
                    10352: 1
                    }
            elif avatar.avatar_id == 10000037:
                avatar.skill_level_map = {
                    10373: 1,
                    10371: 1,
                    10372: 1
                    }
            else: avatar.skill_level_map = {}
            avatar.life_state = 1
            avatar.core_proud_skill_level = 1
            avatar.guid = self.get_next_guid()
            self.avatars.append(AvatarEntity(self.world, avatar, self.pos))

    def get_cur_avatar(self):
        return self.get_avatar_by_guid(self.cur_avatar_guid)

    def get_avatar_by_guid(self, guid: int):
        for avatar_entity in self.avatars: 
            if avatar_entity.guid == guid:
                return avatar_entity

    def get_avatar_by_entity_id(self, entity_id: int):
        for avatar_entity in self.avatars: 
            if avatar_entity.entity_id == entity_id:
                return avatar_entity

    def get_teleport_packet(self, scene_id: int, pos: Vector, enter_type: EnterType = EnterType.ENTER_SELF):
        player_enter_scene_notify = PlayerEnterSceneNotify()
        player_enter_scene_notify.scene_id = scene_id
        player_enter_scene_notify.pos = pos
        player_enter_scene_notify.scene_begin_time = current_milli_time()
        player_enter_scene_notify.type = enter_type
        player_enter_scene_notify.enter_scene_token = 1000
        player_enter_scene_notify.world_level = 8
        player_enter_scene_notify.target_uid = self.uid
        return player_enter_scene_notify
    
    def get_next_guid(self):
        self.next_guid += 1
        return self.next_guid
        
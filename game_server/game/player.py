from lib.proto import Vector,EnterType,PlayerEnterSceneNotify, AvatarTeam, AvatarInfo, AvatarType, PropValue, AvatarFetterInfo
from game_server.utils.time import current_milli_time
from game_server.resource.excel import *
from game_server.game.world import World
from game_server.game.entity.avatar import AvatarEntity
from game_server.resource.enums import *
from game_server.resource import resources
import dataclasses

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
        traveler.inherent_proud_skill_list = [72101, 72201]
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
            avatar.avatar_id = int(avatar_id)
            avatar.avatar_type = AvatarType.AVATAR_TYPE_FORMAL
            avatar.skill_depot_id = int(avatar_data.skill_depot_id)
            avatar.avatar_skill = []
            depot = resources.excels.avatar_skill_depot_datas[avatar.skill_depot_id]
            if depot:
                avatar.avatar_skill.append(int(depot.energy_skill))
                avatar.avatar_skill.extend(depot.skills)
            else:
                print(f"No AvatarSkillDepotData found for the skill_depot_id {avatar.skill_depot_id}")

            base_inherent_proud_skill = int(avatar_id-10000000)*10000

            pskillids = [
                base_inherent_proud_skill+2101,
                base_inherent_proud_skill+2201,
                base_inherent_proud_skill+2301,
            ]

            avatar.inherent_proud_skill_list = pskillids

            print(avatar.inherent_proud_skill_list)
                
            avatar.talent_id_list = [int(talent_id) for talent_id in talents if talent_id != 0]

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
            avatar.equip_guid_list = [int(avatar_data.initial_weapon_id)]

            avatar.proud_skill_extra_level_map = {}
            avatar.skill_level_map = {}
            for skillinfo in avatar.avatar_skill:
                avatar.skill_level_map[int(skillinfo)] = 1
            print(avatar.skill_level_map)
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
    
    def get_avatar_entity_id_by_guid(self, guid: int):
        for avatar_entity in self.avatars: 
            if avatar_entity.guid == guid:
                return avatar_entity.entity_id

    def get_avatar_by_entity_id(self, entity_id: int):
        for avatar_entity in self.avatars: 
            if avatar_entity.entity_id == entity_id:
                return avatar_entity

    def get_teleport_packet(self, scene_id: int, pos: Vector, enter_type: EnterType = EnterType.ENTER_SELF):
        print(f"Trying to enter scene {scene_id} with pos {pos.x}, {pos.y}, {pos.z}")
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
        
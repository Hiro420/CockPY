from lib.proto import AvatarInfo, Vector, ProtEntityType, SceneWeaponInfo, SceneAvatarInfo, SceneTeamAvatar
from game_server.game.world import World
from game_server.game.entity.entity import Entity
from game_server.resource.excel import AvatarData

sword_characters_ids = ['10000001', '10000002', '10000003', '10000005', '10000007', '10000015', '10000025', '10000032', '10000035', '10000038', '11000008', '11000009', '11000010', '11000011', '11000013', '11000017', '11000018', '11000019', '11000027', '11000031', '11000032', '11000033', '11000034', '11000036', '11000038', '11000039', '11000040', '11000041', '10000046']

claymore_characters_ids = ['10000016', '10000020', '10000024', '10000034', '10000036', '11000030', '11000042']

spear_characters_ids = ['10000023', '10000026', '10000030', '11000028', '11000035']

catalyst_characters_ids = ['10000006', '10000014', '10000027', '10000029', '11000026', '11000043', '11000044', '11000045']

bow_characters_ids = ['10000021', '10000022', '10000031', '10000033', '10000037', '11000025', '11000037']

class AvatarEntity(Entity):

    scene_avatar_info: SceneAvatarInfo
    avatar_info: AvatarInfo
    scene_weapon_info: SceneWeaponInfo
    
    def __init__(self, world: World, avatar_info: AvatarInfo, motion: Vector, rotation: Vector = Vector(0, 0, 0), speed: Vector = Vector(0, 0, 0)) -> None:
        self.avatar_info = avatar_info
        self.entity_id = world.get_next_entity_id(ProtEntityType.PROT_ENTITY_AVATAR)
        self.guid = avatar_info.guid
        self.scene_weapon_info = SceneWeaponInfo()
        self.scene_weapon_info.entity_id = world.get_next_entity_id(ProtEntityType.PROT_ENTITY_GADGET)
        if sword_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.scene_weapon_info.item_id = 11507
            weaponid = 11507
        elif claymore_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.scene_weapon_info.item_id = 12506
            weaponid = 12506
        elif spear_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.scene_weapon_info.item_id = 13506
            weaponid = 13506
        elif catalyst_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.scene_weapon_info.item_id = 14503
            weaponid = 14503
        elif bow_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.scene_weapon_info.item_id = 15506
            weaponid = 15506
        
        self.equip_id_list = []
        if sword_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.equip_id_list = [11507]
        elif claymore_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.equip_id_list = [12506]
        elif spear_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.equip_id_list = [13506]
        elif catalyst_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.equip_id_list = [14503]
        elif bow_characters_ids.__contains__(f"{self.avatar_info.avatar_id}"):
            self.equip_id_list = [15506]


        self.scene_weapon_info.level = 90
        self.scene_weapon_info.promote_level = 6
        self.scene_weapon_info.gadget_id = 50000000+weaponid
        super().__init__(world, motion, rotation, speed)

    def get_scene_entity_info(self, uid: int):
        scene_entity_info = super().get_scene_entity_info()
        scene_entity_info.entity_type = ProtEntityType.PROT_ENTITY_AVATAR
        scene_entity_info.prop_map = self.avatar_info.prop_map
        scene_entity_info.fight_prop_map = self.avatar_info.fight_prop_map
        scene_entity_info.avatar = self.get_scene_avatar_info(uid)
        return scene_entity_info

    def get_scene_avatar_info(self, uid: int): 
        scene_avatar_info = SceneAvatarInfo()
        scene_avatar_info.guid = self.guid
        scene_avatar_info.uid = uid
        scene_avatar_info.inherent_proud_skill_list = self.avatar_info.inherent_proud_skill_list
        scene_avatar_info.proud_skill_extra_level_map = self.avatar_info.proud_skill_extra_level_map
        scene_avatar_info.skill_level_map = self.avatar_info.skill_level_map
        scene_avatar_info.talent_id_list = self.avatar_info.talent_id_list
        scene_avatar_info.core_proud_skill_level = self.avatar_info.core_proud_skill_level
        scene_avatar_info.skill_depot_id = self.avatar_info.skill_depot_id
        scene_avatar_info.avatar_id = self.avatar_info.avatar_id
        scene_avatar_info.equip_id_list = self.equip_id_list
        scene_avatar_info.peer_id = 1
        scene_avatar_info.weapon = self.scene_weapon_info
        return scene_avatar_info

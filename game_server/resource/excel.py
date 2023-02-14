import dataclasses
import sys, os, csv
from game_server.resource.enums import *

@dataclasses.dataclass()
class AvatarData:
    id: int
    skill_depot_id: int
    initial_weapon_id: int
    weapon_type: WeaponType
    use_type: AvatarUseType

@dataclasses.dataclass()
class AvatarSkillDepotData:
    id: int
    leader_talent: int
    talent_groups: list[int]

@dataclasses.dataclass()
class AvatarSkillData:
    id: int
    energy_type: ElementType
    energy_cost: int
    max_charges: int = 1

@dataclasses.dataclass()
class ItemData:
    id: int
    type: ItemType
    weight: int
    rank: int
    gadget_id: int
    dropable: bool
    #use_level: int
    #global_item_limit: int

@dataclasses.dataclass()
class WeaponProperty:
    prop_type: FightProp
    init_value: float
    type: GrowCurveType

@dataclasses.dataclass()
class WeaponData(ItemData):
    weapon_type: WeaponType
    rank_level: int
    #weapon_material_type: WeaponMaterialType
    #weapon_element_type: ElementType
    #is_gold: bool
    #weapon_base_exp: int
    #skill_affix: list[int]
    #weapon_prop: list[WeaponProperty]
    #weapon_promote_id: int
    #awaken_costs: list[int]

@dataclasses.dataclass()
class MaterialData(ItemData):
    ...

@dataclasses.dataclass()
class ReliquaryData(ItemData):
    ...

@dataclasses.dataclass()
class TalentSkillData:
    id: int = 0              #天赋ID
    talent_group_id: int = 0 #天赋组ID
    rank: int = 0            #等级
    
@dataclasses.dataclass()
class DungeonData:
    id: int = 0             #ID
    scene_id: int = 0     #场景ID

@dataclasses.dataclass()
class GachaData:                    #GachaNewbieData (actually i wanna use it for another gachas)
    cost_item_id: int               #单抽消耗物品ID
    cost_item_num: int              #单抽消耗物品数量
    ten_cost_item_id: int           #十连消耗物品ID
    ten_cost_item_num: int          #十连消耗物品数量
    ten_cost_item_id_first: int     #首次十连消耗物品
    ten_cost_item_num_first: int    #首次十连消耗数量
    gacha_times_limit: int          #扭蛋次数上限
    pool_id: int                    #蛋池ID
    prob_rule_id: int               #概率规则ID
    unknown_field_1: object         #[UP配置]1父类型
    unknown_field_2: object         #[UP配置]1概率
    unknown_field_3: object         #[UP配置]1物品列表
    guarantee_rule_list: list[int]  #保底规则列表
    gacha_prefab_path: str          #扭蛋Prefab路径
    gacha_preview_prefab_path: str  #扭蛋预览Prefab路径
    gacha_prob_url: str             #扭蛋概率公示URL
    gacha_record_url: str           #扭蛋记录URL
    sort_id: int                    #排序id

@dataclasses.dataclass()
class GachaProbData:
    id: int                                 #扭蛋概率规则ID
    prop_parent_type: GachaItemParentType   #道具父类型
    item_type: GachaItemType                #道具类型 (seems it GachaItemType, at least values looks like GachaItemType)
    round_table_priority: int               #圆桌优先级
    base_prob: int                          #基础概率
    is_guaranteed: bool                     #是否保底
    init_guarantee_times: int               #起始保底次数
    guaranteed_single_increase_probability: int #保底单次递增概率


@dataclasses.dataclass()
class GachaPoolData:
    id: int                         #Gacha根ID
    item_id: int                    #道具ID
    item_type: GachaItemType        #类型
    weight: int                     #概率权重
    flash_card_prob: int            #闪卡概率

@dataclasses.dataclass()
class GachaRuleData:
    id: int                                             #规则ID
    priority: int                                       #优先级
    gacha_guarantee_type: GachaGuaranteeType            #保底类型
    gacha_guarantee_times: int                          #保底触发次数
    gacha_guarantee_params: list[int]                   #保底参数1-4
    gacha_guarantee_reset_type: GachaGuaranteeResetType #保底重置类型
    gacha_guarantee_reset_param: str                    #保底重置参数




@dataclasses.dataclass()
class ExcelOutput:
    avatar_datas: dict[int, AvatarData] = dataclasses.field(default_factory=dict)
    avatar_skill_depot_datas: dict[int, AvatarSkillDepotData] = dataclasses.field(default_factory=dict)
    avatar_skill_datas: dict[int, AvatarSkillData] = dataclasses.field(default_factory=dict)
    item_datas: dict[int, ItemData] = dataclasses.field(default_factory=dict)
    #shop_plan_datas: dict[int, ShopPlanData] = dataclasses.field(default_factory=dict)
    #shop_goods_datas: dict[int, ShopGoodsData] = dataclasses.field(default_factory=dict)
    talent_skill_datas: dict[int, TalentSkillData] = dataclasses.field(default_factory=dict)
    #gadget_datas: dict[int, GadgetData] = dataclasses.field(default_factory=dict)
    #monster_datas: dict[int, MonsterData] = dataclasses.field(default_factory=dict)
    #npc_datas: dict[int, NpcData] = dataclasses.field(default_factory=dict)

    gacha_datas:dict[int, GachaData] =dataclasses.field(default_factory=dict)
    gacha_prob_datas:dict[(int,GachaItemType), GachaProbData] = dataclasses.field(default_factory=dict)
    gacha_pool_datas:dict[(int,int), GachaPoolData] = dataclasses.field(default_factory=dict) #(gachaId, itemId)
    gacha_rule_datas:dict[int, GachaRuleData] = dataclasses.field(default_factory=dict)

    dungeon_data: dict[int, DungeonData] = dataclasses.field(default_factory=dict)

    @classmethod
    def load_all_excels(cls, path: str):
        cls_inst = cls()

        with open(os.path.join(path, "txt", "AvatarData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                avatar = AvatarData(
                    int(row["ID"]),
                    int(row["技能库ID"]), 
                    int(row["初始武器"]), 
                    WeaponType(int(row["武器种类"])), 
                    AvatarUseType(int(row["是否使用"]))
                )

                cls_inst.avatar_datas[avatar.id] = avatar

        with open(os.path.join(path, "txt", "AvatarSkillDepotData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                leader_talent = row["队长天赋"]
                talent_groups = []

                for i in range(1, 6+1):
                    if talent := row[f"天赋{i}"]:
                        talent_groups.append(talent)

                depot = AvatarSkillDepotData(
                    int(row["ID"]),
                    int(leader_talent) if leader_talent else 0, 
                    talent_groups
                )

                cls_inst.avatar_skill_depot_datas[depot.id] = depot

        with open(os.path.join(path, "txt", "AvatarSkillData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                max_charges = row["可累积次数"]
                element_type = row["消耗能量类型"]
                energy_cost = row["消耗能量值"]
                avatar_skill = AvatarSkillData(
                    int(row["ID"]),
                    ElementType(int(element_type)) if element_type else None,
                    int(energy_cost) if energy_cost else None,
                    int(max_charges) if max_charges else 1,
                )
                
                cls_inst.avatar_skill_datas[avatar_skill.id] = avatar_skill

        with open(os.path.join(path, "txt", "WeaponData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                weapon = WeaponData(
                    id=int(row["ID"]),
                    type=ItemType(int(row["类型"])),
                    weight=int(row["重量"]),
                    rank=int(row["排序权重"]),
                    gadget_id=int(row["物件ID"]),
                    dropable=bool(int(row["可丢弃"])),
                    weapon_type=WeaponType(int(row["武器种类"])),
                    rank_level=int(row["武器阶数"])
                )
                cls_inst.item_datas[weapon.id] = weapon

        with open(os.path.join(path, "txt", "WeaponData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                talent = None
                #cls_inst.talent_skill_datas[talent.id] = talent
        
        with open(os.path.join(path, "txt", "DungeonData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                dungeon = DungeonData(
                    int(row["ID"]),
                    int(row["场景ID"])
                )
                cls_inst.dungeon_data[dungeon.id] = dungeon

        with open(os.path.join(path, "txt", "GachaNewbieData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                gacha = GachaData(
                    cost_item_id=int(row["单抽消耗物品ID"]),
                    cost_item_num=int(row["单抽消耗物品数量"]),
                    ten_cost_item_id=int(row["十连消耗物品ID"]),
                    ten_cost_item_num=int(row["十连消耗物品数量"]),
                    ten_cost_item_id_first=int(row["首次十连消耗物品"]),
                    ten_cost_item_num_first=int(row["首次十连消耗数量"]),
                    gacha_times_limit=int(row["扭蛋次数上限"]),
                    pool_id=int(row["蛋池ID"]),
                    prob_rule_id=int(row["概率规则ID"]),
                    unknown_field_1=row["[UP配置]1父类型"],
                    unknown_field_2=row["[UP配置]1概率"],
                    unknown_field_3=row["[UP配置]1物品列表"],
                    guarantee_rule_list=[],
                    gacha_prefab_path=str(row["扭蛋Prefab路径"]),
                    gacha_preview_prefab_path=str(row["扭蛋预览Prefab路径"]),
                    gacha_prob_url=str(row["扭蛋概率公示URL"]),
                    gacha_record_url=str(row["扭蛋记录URL"]),
                    sort_id=int(row["排序id"])
                )
                for i in str(row["保底规则列表"]).split(','):
                    gacha.guarantee_rule_list.append(int(i))
                cls_inst.gacha_datas[gacha.sort_id] = gacha

        with open(os.path.join(path, "txt", "GachaProbData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                gacha_prob = GachaProbData(
                    id=int(row["扭蛋概率规则ID"]),
                    prop_parent_type=GachaItemParentType(int(row["道具父类型"])),
                    item_type=GachaItemType(int(row["道具类型"])),
                    round_table_priority=int(row["圆桌优先级"]),
                    base_prob=int('0'+row["基础概率"]),
                    is_guaranteed=bool('0'+row["是否保底"]),
                    init_guarantee_times=int('0'+row["起始保底次数"]),
                    guaranteed_single_increase_probability=int('0'+row["保底单次递增概率"])
                )
                cls_inst.gacha_prob_datas[(gacha_prob.id,gacha_prob.item_type)]=gacha_prob

        with open(os.path.join(path, "txt", "GachaPoolData.txt"), encoding="utf-8") as f:
            reader = csv.DictReader(f, delimiter="\t")
            for row in reader:
                pool = GachaPoolData(
                    id=int(row["Gacha根ID"]),
                    item_id=int(row["道具ID"]),
                    item_type=GachaItemType(int(row["类型"])),
                    weight=int('0'+row["概率权重"]),
                    flash_card_prob=int(row["闪卡概率"])
                )
                cls_inst.gacha_pool_datas[(pool.id,pool.item_id)]=pool
        return cls_inst

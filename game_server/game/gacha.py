from lib.proto import GachaInfo, GachaItem, ItemParam
from game_server.resource.enums import GachaItemType
from game_server.resource import resources
from game_server.resource.excel import *
from random import Random
from loguru import logger

class History:
    def __init__(self):
        self.rolls_since5S = 0
        self.rolls_since4S = 0
        self.total_rolls = 0

    def tick(self):
        self.total_rolls += 1
        self.rolls_since5S += 1
        self.rolls_since4S += 1

    def s5tick(self):
        self.tick()
        self.rolls_since5S = 0

    def s4tick(self):
        self.tick()
        self.rolls_since4S = 0

class Banner:
    #data: GachaData
    #pool: dict[int, list[GachaPoolData]] # prob, pool_list

    def __init__(self, gacha_data: GachaData):
        self.data: GachaData() = gacha_data
        self.pool: dict[int, list[GachaPoolData]] = dict()
        self.prob: dict[int, int] = dict()
        logger.debug("loading banner with sort_id: {}", gacha_data.sort_id)
        to_del=dict()
        for prob_tuple, prob_data in resources.excels.gacha_prob_datas.items():
            if prob_data.id != gacha_data.prob_rule_id:
                continue
            pool = list()
            for pool_tuple, pool_data in resources.excels.gacha_pool_datas.items():
                if pool_data.id != gacha_data.pool_id:
                    continue
                if prob_data.item_type != pool_data.item_type:
                    continue
                if pool_data in pool:
                    continue
                pool.append(pool_data)
            if prob_data.base_prob in self.pool.keys():
                if prob_data.base_prob in to_del.keys():
                    to_del[prob_data.base_prob] += 1
                else:
                    to_del[prob_data.base_prob] = 2
                self.pool[prob_data.base_prob].extend(pool)
            else:
                self.pool[prob_data.base_prob]=pool
                
        for key, value in to_del.items():
            self.pool[key*value] = self.pool.pop(key)

        for k, v in self.pool.items():
            logger.debug("loaded {} pool items with probabilty {}", len(v), k/100)
        p = sorted(self.pool.keys())
        for pv in p:
            v = sum(filter(lambda x: x<=pv, p))
            self.prob[v] = pv
    def as_gacha_info(self):
        info = GachaInfo(
            gacha_type=(300 if self.data.sort_id!=9999 else 100), #since there is no gacha type in newbie data, i use hardcoded 100 for newbie and 300 for others
            schedule_id=self.data.sort_id,
            begin_time=0,
            end_time=0xffffffff,
            cost_item_id=self.data.cost_item_id,
            cost_item_num=self.data.cost_item_num,
            gacha_prefab_path=self.data.gacha_prefab_path,
            gacha_prob_url=self.data.gacha_prob_url,
            gacha_record_url="",#gachadata.gacha_prob_url, #protection for fools
            gacha_preview_prefab_path=self.data.gacha_preview_prefab_path,
            ten_cost_item_id=self.data.ten_cost_item_id,
            ten_cost_item_num=self.data.ten_cost_item_num,
            left_gacha_times=0xFFFFFFFF,#(0xFFFFFFFF if self.data.sort_id!=9999 else gachadata.gacha_times_limit-history.total_rolls),
            gacha_times_limit=0xFFFFFFFF,#(0xFFFFFFFF if self.data.sort_id!=9999 else gachadata.gacha_times_limit),
            gacha_sort_id=self.data.sort_id
        )
        return info
    def do_pull(self, seed: float, history: History): #im too lazy to implement an accurate gacha for shit cb server, that doesnt even have a database
        rnd = Random()
        rnd.seed(seed)
        pk = self.pool.keys()
        val = 10000
        if (history.rolls_since4S >= 9):
            val = rnd.randint(0,510+60) #there is still chanses to get 5star
        elif (history.rolls_since5S >= 89):
            val = 0
        else:
            val = rnd.randint(0,9430+510+60)
        logger.debug("do_pull_result: {}/100 (5S:{} 4S:{} T:{})", val/100, history.rolls_since5S, history.rolls_since4S, history.total_rolls)
        prob = list(filter(lambda x: x>=val, self.prob))

        return rnd.choice(self.pool[self.prob[min(prob)]])





class Gacha:
    #banners: dict[int, Banner] = dict()
    def __init__(self):
        self.banners: dict[int, Banner] = dict()
        self.history: History = History()
        for gacha_id, gachadata in resources.excels.gacha_datas.items():
            banner = Banner(gachadata)
            self.banners[gacha_id] = banner
        logger.debug("loaded {} banners", len(self.banners))
    def get_banners(self):
        banner_list = list()
        for banner in self.banners.values():
            banner_list.append(banner.as_gacha_info())
        return banner_list
    def do_pull(self, banner_id:int, times: int):
        result: list(GachaItem) = list()
        rnd = Random()
        for p in range(times):
            res = self.banners[banner_id].do_pull(rnd.random(), self.history)
            if res.item_type==GachaItemType.GACHA_ITEM_AVATAR_S5 or res.item_type==GachaItemType.GACHA_ITEM_WEAPON_S5:
                self.history.s5tick()
            elif res.item_type==GachaItemType.GACHA_ITEM_AVATAR_S4 or res.item_type==GachaItemType.GACHA_ITEM_WEAPON_S4:
                self.history.s4tick()
            else:
                self.history.tick()
            item = GachaItem(
                gacha_item=ItemParam(
                    item_id=res.item_id,
                    count=1,
                ),
                transfer_items=[],
                is_flash_card=False,
                is_gacha_item_new=True,
                token_item_list=[]
            )
            result.append(item)
        logger.debug("{}",self.history)
        return result



from game_server.protocol.packet import Packet
from game_server.protocol.cmd_id import CmdID
from game_server.encryption import new_key
from game_server import HandlerRouter,Connection
from lib.proto import BuyGoodsReq,BuyGoodsRsp,Material,GetPlayerTokenReq,GetPlayerTokenRsp,PlayerLoginReq,PlayerLoginRsp,OpenStateUpdateNotify,StoreWeightLimitNotify,StoreType,PlayerStoreNotify,Vector,PlayerDataNotify,PropValue, AvatarDataNotify,Item,Equip,Weapon
from game_server.game.player import Player
from game_server.game.gacha import Gacha
from game_server.utils.time import current_milli_time
from game_server.resource.enums import PropType
import enet
import json
from os import path

basepath = path.dirname(__file__)
materialexcelname = "MaterialExcelConfigData.json"
materialexcel1 = path.abspath(path.join(basepath, "..", "json", "excel", materialexcelname))
materialexcel = open(materialexcel1)

router = HandlerRouter()

@router(CmdID.GetPlayerTokenReq)
def handle_token_req(conn: Connection, msg: GetPlayerTokenReq):
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
    data = json.load(materialexcel)
    for obj in data:
        itemid = obj["Id"]
        item_to_be_added = Item()
        item_to_be_added.item_id = itemid
        item_to_be_added.guid = 500000+int(itemid)
        item_to_be_added.material = Material()
        item_to_be_added.material.count = 999999
        player_store_notify.item_list.append(item_to_be_added)
    
    
    
    item4 = Item()
    item4.item_id = 11101
    item4.guid = 50011101
    item4.equip.weapon.level = 90
    item4.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item4)
    
    item5 = Item()
    item5.item_id = 11101
    item5.guid = 50011101
    item5.equip.weapon.level = 90
    item5.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item5)
    
    item34 = Item()
    item34.item_id = 11201
    item34.guid = 50011201
    item34.equip.weapon.level = 90
    item34.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item34)
    
    item35 = Item()
    item35.item_id = 11201
    item35.guid = 50011201
    item35.equip.weapon.level = 90
    item35.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item35)
    
    item64 = Item()
    item64.item_id = 11301
    item64.guid = 50011301
    item64.equip.weapon.level = 90
    item64.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item64)
    
    item65 = Item()
    item65.item_id = 11301
    item65.guid = 50011301
    item65.equip.weapon.level = 90
    item65.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item65)
    
    item94 = Item()
    item94.item_id = 11302
    item94.guid = 50011302
    item94.equip.weapon.level = 90
    item94.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item94)
    
    item95 = Item()
    item95.item_id = 11302
    item95.guid = 50011302
    item95.equip.weapon.level = 90
    item95.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item95)
    
    item124 = Item()
    item124.item_id = 11303
    item124.guid = 50011303
    item124.equip.weapon.level = 90
    item124.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item124)
    
    item125 = Item()
    item125.item_id = 11303
    item125.guid = 50011303
    item125.equip.weapon.level = 90
    item125.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item125)
    
    item154 = Item()
    item154.item_id = 11304
    item154.guid = 50011304
    item154.equip.weapon.level = 90
    item154.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item154)
    
    item155 = Item()
    item155.item_id = 11304
    item155.guid = 50011304
    item155.equip.weapon.level = 90
    item155.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item155)
    
    item184 = Item()
    item184.item_id = 11305
    item184.guid = 50011305
    item184.equip.weapon.level = 90
    item184.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item184)
    
    item185 = Item()
    item185.item_id = 11305
    item185.guid = 50011305
    item185.equip.weapon.level = 90
    item185.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item185)
    
    item214 = Item()
    item214.item_id = 11306
    item214.guid = 50011306
    item214.equip.weapon.level = 90
    item214.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item214)
    
    item215 = Item()
    item215.item_id = 11306
    item215.guid = 50011306
    item215.equip.weapon.level = 90
    item215.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item215)
    
    item244 = Item()
    item244.item_id = 11401
    item244.guid = 50011401
    item244.equip.weapon.level = 90
    item244.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item244)
    
    item245 = Item()
    item245.item_id = 11401
    item245.guid = 50011401
    item245.equip.weapon.level = 90
    item245.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item245)
    
    item274 = Item()
    item274.item_id = 11402
    item274.guid = 50011402
    item274.equip.weapon.level = 90
    item274.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item274)
    
    item275 = Item()
    item275.item_id = 11402
    item275.guid = 50011402
    item275.equip.weapon.level = 90
    item275.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item275)
    
    item304 = Item()
    item304.item_id = 11403
    item304.guid = 50011403
    item304.equip.weapon.level = 90
    item304.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item304)
    
    item305 = Item()
    item305.item_id = 11403
    item305.guid = 50011403
    item305.equip.weapon.level = 90
    item305.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item305)
    
    item334 = Item()
    item334.item_id = 11404
    item334.guid = 50011404
    item334.equip.weapon.level = 90
    item334.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item334)
    
    item335 = Item()
    item335.item_id = 11404
    item335.guid = 50011404
    item335.equip.weapon.level = 90
    item335.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item335)
    
    item364 = Item()
    item364.item_id = 11405
    item364.guid = 50011405
    item364.equip.weapon.level = 90
    item364.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item364)
    
    item365 = Item()
    item365.item_id = 11405
    item365.guid = 50011405
    item365.equip.weapon.level = 90
    item365.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item365)
    
    item394 = Item()
    item394.item_id = 11406
    item394.guid = 50011406
    item394.equip.weapon.level = 90
    item394.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item394)
    
    item395 = Item()
    item395.item_id = 11406
    item395.guid = 50011406
    item395.equip.weapon.level = 90
    item395.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item395)
    
    item424 = Item()
    item424.item_id = 11407
    item424.guid = 50011407
    item424.equip.weapon.level = 90
    item424.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item424)
    
    item425 = Item()
    item425.item_id = 11407
    item425.guid = 50011407
    item425.equip.weapon.level = 90
    item425.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item425)
    
    item454 = Item()
    item454.item_id = 11408
    item454.guid = 50011408
    item454.equip.weapon.level = 90
    item454.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item454)
    
    item455 = Item()
    item455.item_id = 11408
    item455.guid = 50011408
    item455.equip.weapon.level = 90
    item455.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item455)
    
    item484 = Item()
    item484.item_id = 11501
    item484.guid = 50011501
    item484.equip.weapon.level = 90
    item484.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item484)
    
    item485 = Item()
    item485.item_id = 11501
    item485.guid = 50011501
    item485.equip.weapon.level = 90
    item485.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item485)
    
    item514 = Item()
    item514.item_id = 11502
    item514.guid = 50011502
    item514.equip.weapon.level = 90
    item514.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item514)
    
    item515 = Item()
    item515.item_id = 11502
    item515.guid = 50011502
    item515.equip.weapon.level = 90
    item515.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item515)
    
    item544 = Item()
    item544.item_id = 11503
    item544.guid = 50011503
    item544.equip.weapon.level = 90
    item544.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item544)
    
    item545 = Item()
    item545.item_id = 11503
    item545.guid = 50011503
    item545.equip.weapon.level = 90
    item545.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item545)
    
    item574 = Item()
    item574.item_id = 11504
    item574.guid = 50011504
    item574.equip.weapon.level = 90
    item574.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item574)
    
    item575 = Item()
    item575.item_id = 11504
    item575.guid = 50011504
    item575.equip.weapon.level = 90
    item575.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item575)
    
    item604 = Item()
    item604.item_id = 11505
    item604.guid = 50011505
    item604.equip.weapon.level = 90
    item604.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item604)
    
    item605 = Item()
    item605.item_id = 11505
    item605.guid = 50011505
    item605.equip.weapon.level = 90
    item605.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item605)
    
    item634 = Item()
    item634.item_id = 11506
    item634.guid = 50011506
    item634.equip.weapon.level = 90
    item634.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item634)
    
    item635 = Item()
    item635.item_id = 11506
    item635.guid = 50011506
    item635.equip.weapon.level = 90
    item635.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item635)
    
    item664 = Item()
    item664.item_id = 11507
    item664.guid = 50011507
    item664.equip.weapon.level = 90
    item664.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item664)
    
    item665 = Item()
    item665.item_id = 11507
    item665.guid = 50011507
    item665.equip.weapon.level = 90
    item665.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item665)
    
    item694 = Item()
    item694.item_id = 12101
    item694.guid = 50012101
    item694.equip.weapon.level = 90
    item694.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item694)
    
    item695 = Item()
    item695.item_id = 12101
    item695.guid = 50012101
    item695.equip.weapon.level = 90
    item695.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item695)
    
    item724 = Item()
    item724.item_id = 12201
    item724.guid = 50012201
    item724.equip.weapon.level = 90
    item724.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item724)
    
    item725 = Item()
    item725.item_id = 12201
    item725.guid = 50012201
    item725.equip.weapon.level = 90
    item725.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item725)
    
    item754 = Item()
    item754.item_id = 12301
    item754.guid = 50012301
    item754.equip.weapon.level = 90
    item754.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item754)
    
    item755 = Item()
    item755.item_id = 12301
    item755.guid = 50012301
    item755.equip.weapon.level = 90
    item755.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item755)
    
    item784 = Item()
    item784.item_id = 12302
    item784.guid = 50012302
    item784.equip.weapon.level = 90
    item784.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item784)
    
    item785 = Item()
    item785.item_id = 12302
    item785.guid = 50012302
    item785.equip.weapon.level = 90
    item785.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item785)
    
    item814 = Item()
    item814.item_id = 12303
    item814.guid = 50012303
    item814.equip.weapon.level = 90
    item814.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item814)
    
    item815 = Item()
    item815.item_id = 12303
    item815.guid = 50012303
    item815.equip.weapon.level = 90
    item815.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item815)
    
    item844 = Item()
    item844.item_id = 12304
    item844.guid = 50012304
    item844.equip.weapon.level = 90
    item844.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item844)
    
    item845 = Item()
    item845.item_id = 12304
    item845.guid = 50012304
    item845.equip.weapon.level = 90
    item845.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item845)
    
    item874 = Item()
    item874.item_id = 12305
    item874.guid = 50012305
    item874.equip.weapon.level = 90
    item874.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item874)
    
    item875 = Item()
    item875.item_id = 12305
    item875.guid = 50012305
    item875.equip.weapon.level = 90
    item875.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item875)
    
    item904 = Item()
    item904.item_id = 12306
    item904.guid = 50012306
    item904.equip.weapon.level = 90
    item904.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item904)
    
    item905 = Item()
    item905.item_id = 12306
    item905.guid = 50012306
    item905.equip.weapon.level = 90
    item905.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item905)
    
    item934 = Item()
    item934.item_id = 12401
    item934.guid = 50012401
    item934.equip.weapon.level = 90
    item934.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item934)
    
    item935 = Item()
    item935.item_id = 12401
    item935.guid = 50012401
    item935.equip.weapon.level = 90
    item935.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item935)
    
    item964 = Item()
    item964.item_id = 12402
    item964.guid = 50012402
    item964.equip.weapon.level = 90
    item964.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item964)
    
    item965 = Item()
    item965.item_id = 12402
    item965.guid = 50012402
    item965.equip.weapon.level = 90
    item965.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item965)
    
    item994 = Item()
    item994.item_id = 12403
    item994.guid = 50012403
    item994.equip.weapon.level = 90
    item994.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item994)
    
    item995 = Item()
    item995.item_id = 12403
    item995.guid = 50012403
    item995.equip.weapon.level = 90
    item995.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item995)
    
    item1024 = Item()
    item1024.item_id = 12404
    item1024.guid = 50012404
    item1024.equip.weapon.level = 90
    item1024.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1024)
    
    item1025 = Item()
    item1025.item_id = 12404
    item1025.guid = 50012404
    item1025.equip.weapon.level = 90
    item1025.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1025)
    
    item1054 = Item()
    item1054.item_id = 12405
    item1054.guid = 50012405
    item1054.equip.weapon.level = 90
    item1054.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1054)
    
    item1055 = Item()
    item1055.item_id = 12405
    item1055.guid = 50012405
    item1055.equip.weapon.level = 90
    item1055.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1055)
    
    item1084 = Item()
    item1084.item_id = 12406
    item1084.guid = 50012406
    item1084.equip.weapon.level = 90
    item1084.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1084)
    
    item1085 = Item()
    item1085.item_id = 12406
    item1085.guid = 50012406
    item1085.equip.weapon.level = 90
    item1085.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1085)
    
    item1114 = Item()
    item1114.item_id = 12407
    item1114.guid = 50012407
    item1114.equip.weapon.level = 90
    item1114.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1114)
    
    item1115 = Item()
    item1115.item_id = 12407
    item1115.guid = 50012407
    item1115.equip.weapon.level = 90
    item1115.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1115)
    
    item1144 = Item()
    item1144.item_id = 12408
    item1144.guid = 50012408
    item1144.equip.weapon.level = 90
    item1144.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1144)
    
    item1145 = Item()
    item1145.item_id = 12408
    item1145.guid = 50012408
    item1145.equip.weapon.level = 90
    item1145.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1145)
    
    item1174 = Item()
    item1174.item_id = 12501
    item1174.guid = 50012501
    item1174.equip.weapon.level = 90
    item1174.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1174)
    
    item1175 = Item()
    item1175.item_id = 12501
    item1175.guid = 50012501
    item1175.equip.weapon.level = 90
    item1175.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1175)
    
    item1204 = Item()
    item1204.item_id = 12502
    item1204.guid = 50012502
    item1204.equip.weapon.level = 90
    item1204.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1204)
    
    item1205 = Item()
    item1205.item_id = 12502
    item1205.guid = 50012502
    item1205.equip.weapon.level = 90
    item1205.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1205)
    
    item1234 = Item()
    item1234.item_id = 12503
    item1234.guid = 50012503
    item1234.equip.weapon.level = 90
    item1234.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1234)
    
    item1235 = Item()
    item1235.item_id = 12503
    item1235.guid = 50012503
    item1235.equip.weapon.level = 90
    item1235.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1235)
    
    item1264 = Item()
    item1264.item_id = 12504
    item1264.guid = 50012504
    item1264.equip.weapon.level = 90
    item1264.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1264)
    
    item1265 = Item()
    item1265.item_id = 12504
    item1265.guid = 50012504
    item1265.equip.weapon.level = 90
    item1265.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1265)
    
    item1294 = Item()
    item1294.item_id = 12505
    item1294.guid = 50012505
    item1294.equip.weapon.level = 90
    item1294.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1294)
    
    item1295 = Item()
    item1295.item_id = 12505
    item1295.guid = 50012505
    item1295.equip.weapon.level = 90
    item1295.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1295)
    
    item1324 = Item()
    item1324.item_id = 12506
    item1324.guid = 50012506
    item1324.equip.weapon.level = 90
    item1324.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1324)
    
    item1325 = Item()
    item1325.item_id = 12506
    item1325.guid = 50012506
    item1325.equip.weapon.level = 90
    item1325.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1325)
    
    item1354 = Item()
    item1354.item_id = 13101
    item1354.guid = 50013101
    item1354.equip.weapon.level = 90
    item1354.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1354)
    
    item1355 = Item()
    item1355.item_id = 13101
    item1355.guid = 50013101
    item1355.equip.weapon.level = 90
    item1355.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1355)
    
    item1384 = Item()
    item1384.item_id = 13201
    item1384.guid = 50013201
    item1384.equip.weapon.level = 90
    item1384.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1384)
    
    item1385 = Item()
    item1385.item_id = 13201
    item1385.guid = 50013201
    item1385.equip.weapon.level = 90
    item1385.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1385)
    
    item1414 = Item()
    item1414.item_id = 13301
    item1414.guid = 50013301
    item1414.equip.weapon.level = 90
    item1414.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1414)
    
    item1415 = Item()
    item1415.item_id = 13301
    item1415.guid = 50013301
    item1415.equip.weapon.level = 90
    item1415.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1415)
    
    item1444 = Item()
    item1444.item_id = 13302
    item1444.guid = 50013302
    item1444.equip.weapon.level = 90
    item1444.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1444)
    
    item1445 = Item()
    item1445.item_id = 13302
    item1445.guid = 50013302
    item1445.equip.weapon.level = 90
    item1445.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1445)
    
    item1474 = Item()
    item1474.item_id = 13303
    item1474.guid = 50013303
    item1474.equip.weapon.level = 90
    item1474.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1474)
    
    item1475 = Item()
    item1475.item_id = 13303
    item1475.guid = 50013303
    item1475.equip.weapon.level = 90
    item1475.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1475)
    
    item1504 = Item()
    item1504.item_id = 13401
    item1504.guid = 50013401
    item1504.equip.weapon.level = 90
    item1504.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1504)
    
    item1505 = Item()
    item1505.item_id = 13401
    item1505.guid = 50013401
    item1505.equip.weapon.level = 90
    item1505.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1505)
    
    item1534 = Item()
    item1534.item_id = 13402
    item1534.guid = 50013402
    item1534.equip.weapon.level = 90
    item1534.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1534)
    
    item1535 = Item()
    item1535.item_id = 13402
    item1535.guid = 50013402
    item1535.equip.weapon.level = 90
    item1535.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1535)
    
    item1564 = Item()
    item1564.item_id = 13403
    item1564.guid = 50013403
    item1564.equip.weapon.level = 90
    item1564.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1564)
    
    item1565 = Item()
    item1565.item_id = 13403
    item1565.guid = 50013403
    item1565.equip.weapon.level = 90
    item1565.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1565)
    
    item1594 = Item()
    item1594.item_id = 13404
    item1594.guid = 50013404
    item1594.equip.weapon.level = 90
    item1594.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1594)
    
    item1595 = Item()
    item1595.item_id = 13404
    item1595.guid = 50013404
    item1595.equip.weapon.level = 90
    item1595.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1595)
    
    item1624 = Item()
    item1624.item_id = 13504
    item1624.guid = 50013504
    item1624.equip.weapon.level = 90
    item1624.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1624)
    
    item1625 = Item()
    item1625.item_id = 13504
    item1625.guid = 50013504
    item1625.equip.weapon.level = 90
    item1625.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1625)
    
    item1654 = Item()
    item1654.item_id = 13505
    item1654.guid = 50013505
    item1654.equip.weapon.level = 90
    item1654.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1654)
    
    item1655 = Item()
    item1655.item_id = 13505
    item1655.guid = 50013505
    item1655.equip.weapon.level = 90
    item1655.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1655)
    
    item1684 = Item()
    item1684.item_id = 13506
    item1684.guid = 50013506
    item1684.equip.weapon.level = 90
    item1684.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1684)
    
    item1685 = Item()
    item1685.item_id = 13506
    item1685.guid = 50013506
    item1685.equip.weapon.level = 90
    item1685.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1685)
    
    item1714 = Item()
    item1714.item_id = 14101
    item1714.guid = 50014101
    item1714.equip.weapon.level = 90
    item1714.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1714)
    
    item1715 = Item()
    item1715.item_id = 14101
    item1715.guid = 50014101
    item1715.equip.weapon.level = 90
    item1715.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1715)
    
    item1744 = Item()
    item1744.item_id = 14201
    item1744.guid = 50014201
    item1744.equip.weapon.level = 90
    item1744.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1744)
    
    item1745 = Item()
    item1745.item_id = 14201
    item1745.guid = 50014201
    item1745.equip.weapon.level = 90
    item1745.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1745)
    
    item1774 = Item()
    item1774.item_id = 14301
    item1774.guid = 50014301
    item1774.equip.weapon.level = 90
    item1774.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1774)
    
    item1775 = Item()
    item1775.item_id = 14301
    item1775.guid = 50014301
    item1775.equip.weapon.level = 90
    item1775.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1775)
    
    item1804 = Item()
    item1804.item_id = 14302
    item1804.guid = 50014302
    item1804.equip.weapon.level = 90
    item1804.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1804)
    
    item1805 = Item()
    item1805.item_id = 14302
    item1805.guid = 50014302
    item1805.equip.weapon.level = 90
    item1805.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1805)
    
    item1834 = Item()
    item1834.item_id = 14303
    item1834.guid = 50014303
    item1834.equip.weapon.level = 90
    item1834.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1834)
    
    item1835 = Item()
    item1835.item_id = 14303
    item1835.guid = 50014303
    item1835.equip.weapon.level = 90
    item1835.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1835)
    
    item1864 = Item()
    item1864.item_id = 14304
    item1864.guid = 50014304
    item1864.equip.weapon.level = 90
    item1864.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1864)
    
    item1865 = Item()
    item1865.item_id = 14304
    item1865.guid = 50014304
    item1865.equip.weapon.level = 90
    item1865.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1865)
    
    item1894 = Item()
    item1894.item_id = 14305
    item1894.guid = 50014305
    item1894.equip.weapon.level = 90
    item1894.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1894)
    
    item1895 = Item()
    item1895.item_id = 14305
    item1895.guid = 50014305
    item1895.equip.weapon.level = 90
    item1895.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1895)
    
    item1924 = Item()
    item1924.item_id = 14306
    item1924.guid = 50014306
    item1924.equip.weapon.level = 90
    item1924.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1924)
    
    item1925 = Item()
    item1925.item_id = 14306
    item1925.guid = 50014306
    item1925.equip.weapon.level = 90
    item1925.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1925)
    
    item1954 = Item()
    item1954.item_id = 14401
    item1954.guid = 50014401
    item1954.equip.weapon.level = 90
    item1954.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1954)
    
    item1955 = Item()
    item1955.item_id = 14401
    item1955.guid = 50014401
    item1955.equip.weapon.level = 90
    item1955.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1955)
    
    item1984 = Item()
    item1984.item_id = 14402
    item1984.guid = 50014402
    item1984.equip.weapon.level = 90
    item1984.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1984)
    
    item1985 = Item()
    item1985.item_id = 14402
    item1985.guid = 50014402
    item1985.equip.weapon.level = 90
    item1985.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item1985)
    
    item2014 = Item()
    item2014.item_id = 14403
    item2014.guid = 50014403
    item2014.equip.weapon.level = 90
    item2014.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2014)
    
    item2015 = Item()
    item2015.item_id = 14403
    item2015.guid = 50014403
    item2015.equip.weapon.level = 90
    item2015.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2015)
    
    item2044 = Item()
    item2044.item_id = 14404
    item2044.guid = 50014404
    item2044.equip.weapon.level = 90
    item2044.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2044)
    
    item2045 = Item()
    item2045.item_id = 14404
    item2045.guid = 50014404
    item2045.equip.weapon.level = 90
    item2045.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2045)
    
    item2074 = Item()
    item2074.item_id = 14405
    item2074.guid = 50014405
    item2074.equip.weapon.level = 90
    item2074.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2074)
    
    item2075 = Item()
    item2075.item_id = 14405
    item2075.guid = 50014405
    item2075.equip.weapon.level = 90
    item2075.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2075)
    
    item2104 = Item()
    item2104.item_id = 14406
    item2104.guid = 50014406
    item2104.equip.weapon.level = 90
    item2104.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2104)
    
    item2105 = Item()
    item2105.item_id = 14406
    item2105.guid = 50014406
    item2105.equip.weapon.level = 90
    item2105.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2105)
    
    item2134 = Item()
    item2134.item_id = 14407
    item2134.guid = 50014407
    item2134.equip.weapon.level = 90
    item2134.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2134)
    
    item2135 = Item()
    item2135.item_id = 14407
    item2135.guid = 50014407
    item2135.equip.weapon.level = 90
    item2135.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2135)
    
    item2164 = Item()
    item2164.item_id = 14408
    item2164.guid = 50014408
    item2164.equip.weapon.level = 90
    item2164.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2164)
    
    item2165 = Item()
    item2165.item_id = 14408
    item2165.guid = 50014408
    item2165.equip.weapon.level = 90
    item2165.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2165)
    
    item2194 = Item()
    item2194.item_id = 14501
    item2194.guid = 50014501
    item2194.equip.weapon.level = 90
    item2194.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2194)
    
    item2195 = Item()
    item2195.item_id = 14501
    item2195.guid = 50014501
    item2195.equip.weapon.level = 90
    item2195.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2195)
    
    item2224 = Item()
    item2224.item_id = 14502
    item2224.guid = 50014502
    item2224.equip.weapon.level = 90
    item2224.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2224)
    
    item2225 = Item()
    item2225.item_id = 14502
    item2225.guid = 50014502
    item2225.equip.weapon.level = 90
    item2225.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2225)
    
    item2254 = Item()
    item2254.item_id = 14503
    item2254.guid = 50014503
    item2254.equip.weapon.level = 90
    item2254.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2254)
    
    item2255 = Item()
    item2255.item_id = 14503
    item2255.guid = 50014503
    item2255.equip.weapon.level = 90
    item2255.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2255)
    
    item2284 = Item()
    item2284.item_id = 14504
    item2284.guid = 50014504
    item2284.equip.weapon.level = 90
    item2284.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2284)
    
    item2285 = Item()
    item2285.item_id = 14504
    item2285.guid = 50014504
    item2285.equip.weapon.level = 90
    item2285.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2285)
    
    item2314 = Item()
    item2314.item_id = 14505
    item2314.guid = 50014505
    item2314.equip.weapon.level = 90
    item2314.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2314)
    
    item2315 = Item()
    item2315.item_id = 14505
    item2315.guid = 50014505
    item2315.equip.weapon.level = 90
    item2315.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2315)
    
    item2344 = Item()
    item2344.item_id = 14506
    item2344.guid = 50014506
    item2344.equip.weapon.level = 90
    item2344.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2344)
    
    item2345 = Item()
    item2345.item_id = 14506
    item2345.guid = 50014506
    item2345.equip.weapon.level = 90
    item2345.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2345)
    
    item2374 = Item()
    item2374.item_id = 15101
    item2374.guid = 50015101
    item2374.equip.weapon.level = 90
    item2374.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2374)
    
    item2375 = Item()
    item2375.item_id = 15101
    item2375.guid = 50015101
    item2375.equip.weapon.level = 90
    item2375.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2375)
    
    item2404 = Item()
    item2404.item_id = 15201
    item2404.guid = 50015201
    item2404.equip.weapon.level = 90
    item2404.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2404)
    
    item2405 = Item()
    item2405.item_id = 15201
    item2405.guid = 50015201
    item2405.equip.weapon.level = 90
    item2405.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2405)
    
    item2434 = Item()
    item2434.item_id = 15301
    item2434.guid = 50015301
    item2434.equip.weapon.level = 90
    item2434.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2434)
    
    item2435 = Item()
    item2435.item_id = 15301
    item2435.guid = 50015301
    item2435.equip.weapon.level = 90
    item2435.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2435)
    
    item2464 = Item()
    item2464.item_id = 15302
    item2464.guid = 50015302
    item2464.equip.weapon.level = 90
    item2464.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2464)
    
    item2465 = Item()
    item2465.item_id = 15302
    item2465.guid = 50015302
    item2465.equip.weapon.level = 90
    item2465.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2465)
    
    item2494 = Item()
    item2494.item_id = 15303
    item2494.guid = 50015303
    item2494.equip.weapon.level = 90
    item2494.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2494)
    
    item2495 = Item()
    item2495.item_id = 15303
    item2495.guid = 50015303
    item2495.equip.weapon.level = 90
    item2495.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2495)
    
    item2524 = Item()
    item2524.item_id = 15304
    item2524.guid = 50015304
    item2524.equip.weapon.level = 90
    item2524.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2524)
    
    item2525 = Item()
    item2525.item_id = 15304
    item2525.guid = 50015304
    item2525.equip.weapon.level = 90
    item2525.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2525)
    
    item2554 = Item()
    item2554.item_id = 15305
    item2554.guid = 50015305
    item2554.equip.weapon.level = 90
    item2554.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2554)
    
    item2555 = Item()
    item2555.item_id = 15305
    item2555.guid = 50015305
    item2555.equip.weapon.level = 90
    item2555.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2555)
    
    item2584 = Item()
    item2584.item_id = 15306
    item2584.guid = 50015306
    item2584.equip.weapon.level = 90
    item2584.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2584)
    
    item2585 = Item()
    item2585.item_id = 15306
    item2585.guid = 50015306
    item2585.equip.weapon.level = 90
    item2585.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2585)
    
    item2614 = Item()
    item2614.item_id = 15401
    item2614.guid = 50015401
    item2614.equip.weapon.level = 90
    item2614.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2614)
    
    item2615 = Item()
    item2615.item_id = 15401
    item2615.guid = 50015401
    item2615.equip.weapon.level = 90
    item2615.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2615)
    
    item2644 = Item()
    item2644.item_id = 15402
    item2644.guid = 50015402
    item2644.equip.weapon.level = 90
    item2644.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2644)
    
    item2645 = Item()
    item2645.item_id = 15402
    item2645.guid = 50015402
    item2645.equip.weapon.level = 90
    item2645.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2645)
    
    item2674 = Item()
    item2674.item_id = 15403
    item2674.guid = 50015403
    item2674.equip.weapon.level = 90
    item2674.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2674)
    
    item2675 = Item()
    item2675.item_id = 15403
    item2675.guid = 50015403
    item2675.equip.weapon.level = 90
    item2675.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2675)
    
    item2704 = Item()
    item2704.item_id = 15404
    item2704.guid = 50015404
    item2704.equip.weapon.level = 90
    item2704.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2704)
    
    item2705 = Item()
    item2705.item_id = 15404
    item2705.guid = 50015404
    item2705.equip.weapon.level = 90
    item2705.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2705)
    
    item2734 = Item()
    item2734.item_id = 15405
    item2734.guid = 50015405
    item2734.equip.weapon.level = 90
    item2734.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2734)
    
    item2735 = Item()
    item2735.item_id = 15405
    item2735.guid = 50015405
    item2735.equip.weapon.level = 90
    item2735.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2735)
    
    item2764 = Item()
    item2764.item_id = 15406
    item2764.guid = 50015406
    item2764.equip.weapon.level = 90
    item2764.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2764)
    
    item2765 = Item()
    item2765.item_id = 15406
    item2765.guid = 50015406
    item2765.equip.weapon.level = 90
    item2765.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2765)
    
    item2794 = Item()
    item2794.item_id = 15407
    item2794.guid = 50015407
    item2794.equip.weapon.level = 90
    item2794.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2794)
    
    item2795 = Item()
    item2795.item_id = 15407
    item2795.guid = 50015407
    item2795.equip.weapon.level = 90
    item2795.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2795)
    
    item2824 = Item()
    item2824.item_id = 15408
    item2824.guid = 50015408
    item2824.equip.weapon.level = 90
    item2824.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2824)
    
    item2825 = Item()
    item2825.item_id = 15408
    item2825.guid = 50015408
    item2825.equip.weapon.level = 90
    item2825.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2825)
    
    item2854 = Item()
    item2854.item_id = 15501
    item2854.guid = 50015501
    item2854.equip.weapon.level = 90
    item2854.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2854)
    
    item2855 = Item()
    item2855.item_id = 15501
    item2855.guid = 50015501
    item2855.equip.weapon.level = 90
    item2855.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2855)
    
    item2884 = Item()
    item2884.item_id = 15502
    item2884.guid = 50015502
    item2884.equip.weapon.level = 90
    item2884.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2884)
    
    item2885 = Item()
    item2885.item_id = 15502
    item2885.guid = 50015502
    item2885.equip.weapon.level = 90
    item2885.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2885)
    
    item2914 = Item()
    item2914.item_id = 15503
    item2914.guid = 50015503
    item2914.equip.weapon.level = 90
    item2914.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2914)
    
    item2915 = Item()
    item2915.item_id = 15503
    item2915.guid = 50015503
    item2915.equip.weapon.level = 90
    item2915.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2915)
    
    item2944 = Item()
    item2944.item_id = 15504
    item2944.guid = 50015504
    item2944.equip.weapon.level = 90
    item2944.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2944)
    
    item2945 = Item()
    item2945.item_id = 15504
    item2945.guid = 50015504
    item2945.equip.weapon.level = 90
    item2945.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2945)
    
    item2974 = Item()
    item2974.item_id = 15505
    item2974.guid = 50015505
    item2974.equip.weapon.level = 90
    item2974.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2974)
    
    item2975 = Item()
    item2975.item_id = 15505
    item2975.guid = 50015505
    item2975.equip.weapon.level = 90
    item2975.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item2975)
    
    item3004 = Item()
    item3004.item_id = 15506
    item3004.guid = 50015506
    item3004.equip.weapon.level = 90
    item3004.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item3004)
    
    item3005 = Item()
    item3005.item_id = 15506
    item3005.guid = 50015506
    item3005.equip.weapon.level = 90
    item3005.equip.weapon.promote_level = 5
    player_store_notify.item_list.append(item3005)

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

    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)
    print(avatar_entity.avatar_info)

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

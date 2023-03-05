--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 804001, monster_id = 28030101, pos = { x = 915.6, y = 231.4, z = 1702.8 }, rot = { x = 0.0, y = 225.4, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804002, monster_id = 28030101, pos = { x = 929.4, y = 230.7, z = 1699.5 }, rot = { x = 0.0, y = 98.9, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804003, monster_id = 28030101, pos = { x = 889.6, y = 231.8, z = 1684.4 }, rot = { x = 0.0, y = 195.4, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804004, monster_id = 28030101, pos = { x = 887.0, y = 231.4, z = 1691.9 }, rot = { x = 0.0, y = 144.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804005, monster_id = 28030101, pos = { x = 951.3, y = 231.3, z = 1697.4 }, rot = { x = 0.0, y = 62.9, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804006, monster_id = 28030101, pos = { x = 868.0, y = 240.2, z = 1738.8 }, rot = { x = 0.0, y = 42.4, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 804007, monster_id = 28030101, pos = { x = 872.0, y = 230.7, z = 1742.7 }, rot = { x = 0.0, y = 202.8, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804008, monster_id = 28030101, pos = { x = 872.7, y = 231.9, z = 1749.5 }, rot = { x = 0.0, y = 144.1, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804009, monster_id = 28030101, pos = { x = 876.9, y = 230.7, z = 1760.0 }, rot = { x = 0.0, y = 63.3, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804010, monster_id = 28030101, pos = { x = 875.6, y = 230.7, z = 1796.5 }, rot = { x = 0.0, y = 284.1, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804011, monster_id = 28030101, pos = { x = 888.9, y = 239.9, z = 1795.9 }, rot = { x = 0.0, y = 348.9, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 804012, monster_id = 28030101, pos = { x = 839.0, y = 230.7, z = 1807.1 }, rot = { x = 0.0, y = 164.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804013, monster_id = 28030101, pos = { x = 822.5, y = 231.0, z = 1792.5 }, rot = { x = 0.0, y = 178.8, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804014, monster_id = 28030101, pos = { x = 784.5, y = 231.0, z = 1714.1 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804015, monster_id = 28030101, pos = { x = 790.6, y = 232.8, z = 1716.6 }, rot = { x = 0.0, y = 165.9, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804016, monster_id = 28030101, pos = { x = 886.2, y = 248.0, z = 1807.2 }, rot = { x = 0.0, y = 295.5, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 804017, monster_id = 28030101, pos = { x = 888.3, y = 232.5, z = 1805.8 }, rot = { x = 0.0, y = 227.8, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804018, monster_id = 28030101, pos = { x = 955.1, y = 351.7, z = 1742.8 }, rot = { x = 0.0, y = 56.4, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804019, monster_id = 28030101, pos = { x = 900.7, y = 231.8, z = 1816.2 }, rot = { x = 0.0, y = 59.5, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804020, monster_id = 28030101, pos = { x = 870.9, y = 233.2, z = 1819.6 }, rot = { x = 0.0, y = 133.3, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 804021, monster_id = 28030204, pos = { x = 834.5, y = 488.8, z = 1426.3 }, rot = { x = 0.0, y = 139.5, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804022, monster_id = 28030202, pos = { x = 719.9, y = 426.9, z = 1442.9 }, rot = { x = 0.0, y = 286.8, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804023, monster_id = 28030202, pos = { x = 949.8, y = 385.7, z = 1646.6 }, rot = { x = 0.0, y = 354.9, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804024, monster_id = 28030202, pos = { x = 888.8, y = 374.9, z = 1661.5 }, rot = { x = 0.0, y = 124.7, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804025, monster_id = 28030101, pos = { x = 826.6, y = 234.0, z = 1751.6 }, rot = { x = 0.0, y = 309.8, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804026, monster_id = 28030101, pos = { x = 543.5, y = 232.0, z = 1725.8 }, rot = { x = 0.0, y = 133.3, z = 0.0 }, level = 24, drop_tag = "鸟类", disableWander = true, pose_id = 901 },
	{ config_id = 804027, monster_id = 28040102, pos = { x = 538.2, y = 230.7, z = 1722.2 }, rot = { x = 0.0, y = 229.3, z = 0.0 }, level = 24, drop_tag = "水族" },
	{ config_id = 804028, monster_id = 28040102, pos = { x = 540.2, y = 230.7, z = 1721.1 }, rot = { x = 0.0, y = 162.8, z = 0.0 }, level = 24, drop_tag = "水族" },
	{ config_id = 804029, monster_id = 28040102, pos = { x = 548.9, y = 230.7, z = 1728.0 }, rot = { x = 0.0, y = 59.9, z = 0.0 }, level = 24, drop_tag = "水族" },
	{ config_id = 804030, monster_id = 28040102, pos = { x = 548.2, y = 230.7, z = 1724.0 }, rot = { x = 0.0, y = 28.3, z = 0.0 }, level = 24, drop_tag = "水族" },
	{ config_id = 804031, monster_id = 28040102, pos = { x = 547.1, y = 230.7, z = 1730.7 }, rot = { x = 0.0, y = 80.8, z = 0.0 }, level = 24, drop_tag = "水族" },
	{ config_id = 804032, monster_id = 28030101, pos = { x = 672.4, y = 411.1, z = 1857.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804033, monster_id = 28030101, pos = { x = 676.2, y = 410.9, z = 1860.2 }, rot = { x = 0.0, y = 301.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804034, monster_id = 28030101, pos = { x = 680.9, y = 411.0, z = 1847.8 }, rot = { x = 0.0, y = 75.4, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804035, monster_id = 28030101, pos = { x = 557.4, y = 275.8, z = 1741.3 }, rot = { x = 0.0, y = 178.8, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 804036, monster_id = 28030101, pos = { x = 682.9, y = 291.0, z = 1714.2 }, rot = { x = 0.0, y = 178.3, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804037, monster_id = 28020102, pos = { x = 574.4, y = 182.1, z = 1157.8 }, rot = { x = 0.0, y = 132.1, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804038, monster_id = 28020102, pos = { x = 531.7, y = 177.9, z = 1139.9 }, rot = { x = 0.0, y = 185.8, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804039, monster_id = 28030101, pos = { x = 629.6, y = 187.4, z = 1206.9 }, rot = { x = 0.0, y = 336.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804040, monster_id = 28030101, pos = { x = 632.4, y = 187.8, z = 1208.2 }, rot = { x = 0.0, y = 299.4, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804041, monster_id = 28010201, pos = { x = 764.1, y = 231.2, z = 1292.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "采集动物", disableWander = true },
	{ config_id = 804042, monster_id = 28010202, pos = { x = 760.9, y = 230.7, z = 1293.7 }, rot = { x = 0.0, y = 324.9, z = 0.0 }, level = 24, drop_tag = "采集动物", disableWander = true },
	{ config_id = 804043, monster_id = 28020301, pos = { x = 711.9, y = 221.4, z = 1339.3 }, rot = { x = 0.0, y = 132.8, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804044, monster_id = 28020301, pos = { x = 716.5, y = 222.0, z = 1330.4 }, rot = { x = 0.0, y = 123.2, z = 0.0 }, level = 24, drop_tag = "走兽", disableWander = true },
	{ config_id = 804045, monster_id = 28030401, pos = { x = 660.6, y = 219.0, z = 1342.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804046, monster_id = 28030401, pos = { x = 662.6, y = 219.7, z = 1344.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 804047, monster_id = 28020301, pos = { x = 660.8, y = 212.6, z = 1325.5 }, rot = { x = 0.0, y = 353.4, z = 0.0 }, level = 24, drop_tag = "走兽", disableWander = true },
	{ config_id = 804048, monster_id = 28030101, pos = { x = 703.0, y = 177.0, z = 1179.5 }, rot = { x = 0.0, y = 292.8, z = 0.0 }, level = 24, drop_tag = "鸟类", disableWander = true },
	{ config_id = 804049, monster_id = 28020301, pos = { x = 803.0, y = 217.3, z = 1231.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804050, monster_id = 28020301, pos = { x = 797.3, y = 217.7, z = 1238.9 }, rot = { x = 0.0, y = 204.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804051, monster_id = 28020201, pos = { x = 856.1, y = 227.1, z = 1194.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804052, monster_id = 28020201, pos = { x = 824.5, y = 220.4, z = 1190.1 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804053, monster_id = 28020201, pos = { x = 906.7, y = 241.7, z = 1219.2 }, rot = { x = 0.0, y = 340.7, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804054, monster_id = 28020102, pos = { x = 934.9, y = 255.4, z = 1234.0 }, rot = { x = 0.0, y = 346.6, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804055, monster_id = 28020102, pos = { x = 946.7, y = 263.5, z = 1271.5 }, rot = { x = 0.0, y = 119.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804056, monster_id = 28020301, pos = { x = 954.2, y = 270.2, z = 1310.5 }, rot = { x = 0.0, y = 52.4, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804057, monster_id = 28020201, pos = { x = 1008.8, y = 269.1, z = 1432.1 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804058, monster_id = 28020201, pos = { x = 1021.4, y = 271.7, z = 1514.6 }, rot = { x = 0.0, y = 328.7, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804059, monster_id = 28020102, pos = { x = 784.2, y = 275.2, z = 1366.4 }, rot = { x = 0.0, y = 287.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804060, monster_id = 28020301, pos = { x = 818.4, y = 316.6, z = 1391.5 }, rot = { x = 0.0, y = 340.8, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804061, monster_id = 28020102, pos = { x = 802.0, y = 322.6, z = 1422.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804062, monster_id = 28050102, pos = { x = 755.2, y = 325.2, z = 1473.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "魔法生物" },
	{ config_id = 804063, monster_id = 28050102, pos = { x = 840.9, y = 338.0, z = 1495.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "魔法生物" },
	{ config_id = 804064, monster_id = 28020102, pos = { x = 870.2, y = 355.9, z = 1468.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804065, monster_id = 28020102, pos = { x = 545.5, y = 191.4, z = 1016.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 804066, monster_id = 28020102, pos = { x = 524.0, y = 189.9, z = 1030.6 }, rot = { x = 0.0, y = 41.6, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 804067, monster_id = 28020604, pos = { x = 896.4, y = 376.0, z = 1434.5 }, rot = { x = 14.0, y = 359.2, z = 353.8 }, level = 24, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 804001, 804002, 804003, 804004, 804005, 804006, 804007, 804008, 804009, 804010, 804011, 804012, 804013, 804014, 804015, 804016, 804017, 804018, 804019, 804020, 804021, 804022, 804023, 804024, 804025, 804026, 804027, 804028, 804029, 804030, 804031, 804032, 804033, 804034, 804035, 804036, 804037, 804038, 804039, 804040, 804041, 804042, 804043, 804044, 804045, 804046, 804047, 804048, 804049, 804050, 804051, 804052, 804053, 804054, 804055, 804056, 804057, 804058, 804059, 804060, 804061, 804062, 804063, 804064, 804065, 804066, 804067 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

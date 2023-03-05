--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71, monster_id = 20011001, pos = { x = 1589.4, y = 290.2, z = -826.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 72, monster_id = 20011001, pos = { x = 1586.5, y = 290.3, z = -827.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 73, monster_id = 20011001, pos = { x = 1587.2, y = 290.3, z = -824.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 184, gadget_id = 70900015, pos = { x = 1558.0, y = 286.9, z = -956.4 }, rot = { x = 0.0, y = 339.9, z = 0.0 }, level = 1 },
	{ config_id = 192, gadget_id = 70211031, pos = { x = 1505.7, y = 289.4, z = -1023.1 }, rot = { x = 0.0, y = 50.7, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 196, gadget_id = 70211031, pos = { x = 1689.2, y = 283.1, z = -954.4 }, rot = { x = 0.0, y = 232.3, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 214, gadget_id = 70220001, pos = { x = 1571.9, y = 241.7, z = -582.2 }, rot = { x = 0.0, y = 94.4, z = 0.0 }, level = 1 },
	{ config_id = 215, gadget_id = 50004012, pos = { x = 1570.6, y = 242.7, z = -586.0 }, rot = { x = 0.0, y = 324.5, z = 0.0 }, level = 1 },
	{ config_id = 216, gadget_id = 70220002, pos = { x = 1569.7, y = 243.3, z = -588.6 }, rot = { x = 0.0, y = 244.6, z = 0.0 }, level = 1 },
	{ config_id = 217, gadget_id = 70220005, pos = { x = 1567.0, y = 244.7, z = -596.9 }, rot = { x = 0.0, y = 114.9, z = 0.0 }, level = 1 },
	{ config_id = 218, gadget_id = 70220010, pos = { x = 1568.7, y = 241.7, z = -582.6 }, rot = { x = 0.0, y = 176.8, z = 0.0 }, level = 1 },
	{ config_id = 219, gadget_id = 70220015, pos = { x = 1567.2, y = 242.8, z = -585.3 }, rot = { x = 0.0, y = 67.2, z = 0.0 }, level = 1 },
	{ config_id = 220, gadget_id = 70220016, pos = { x = 1566.3, y = 243.4, z = -587.9 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 1 },
	{ config_id = 221, gadget_id = 70220017, pos = { x = 1572.1, y = 241.2, z = -578.6 }, rot = { x = 0.0, y = 334.1, z = 0.0 }, level = 1 },
	{ config_id = 222, gadget_id = 70220025, pos = { x = 1569.3, y = 240.9, z = -579.6 }, rot = { x = 0.0, y = 64.0, z = 0.0 }, level = 1 },
	{ config_id = 223, gadget_id = 70290002, pos = { x = 1574.7, y = 239.6, z = -572.3 }, rot = { x = 0.0, y = 125.5, z = 0.0 }, level = 1 },
	{ config_id = 224, gadget_id = 70290008, pos = { x = 1570.8, y = 239.5, z = -573.2 }, rot = { x = 0.0, y = 150.9, z = 0.0 }, level = 1 },
	{ config_id = 225, gadget_id = 70690001, pos = { x = 1567.4, y = 259.5, z = -608.6 }, rot = { x = 0.0, y = 207.2, z = 0.0 }, level = 1 },
	{ config_id = 226, gadget_id = 70690001, pos = { x = 1569.8, y = 260.0, z = -603.9 }, rot = { x = 0.0, y = 207.2, z = 0.0 }, level = 1 },
	{ config_id = 227, gadget_id = 70690001, pos = { x = 1572.1, y = 260.3, z = -598.6 }, rot = { x = 0.0, y = 205.2, z = 0.0 }, level = 1 },
	{ config_id = 228, gadget_id = 70110001, pos = { x = 1085.9, y = 358.5, z = -554.1 }, rot = { x = 0.0, y = 61.4, z = 0.0 }, level = 1 },
	{ config_id = 230, gadget_id = 70220010, pos = { x = 1541.5, y = 269.2, z = -739.9 }, rot = { x = 0.0, y = 228.1, z = 0.0 }, level = 1 },
	{ config_id = 231, gadget_id = 70900015, pos = { x = 1582.2, y = 271.4, z = -642.4 }, rot = { x = 5.5, y = 314.2, z = 6.1 }, level = 1 },
	{ config_id = 235, gadget_id = 70900015, pos = { x = 1621.5, y = 274.8, z = -655.9 }, rot = { x = 4.0, y = 38.8, z = 273.4 }, level = 1 },
	{ config_id = 236, gadget_id = 70220020, pos = { x = 1369.6, y = 328.5, z = -740.4 }, rot = { x = 37.6, y = 113.6, z = 11.3 }, level = 1 },
	{ config_id = 238, gadget_id = 70690006, pos = { x = 1281.0, y = 384.1, z = -834.7 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 240, gadget_id = 70690006, pos = { x = 1257.2, y = 289.4, z = -979.8 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 241, gadget_id = 70690006, pos = { x = 1103.6, y = 330.9, z = -966.2 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 242, gadget_id = 70690006, pos = { x = 1056.2, y = 336.8, z = -869.2 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 250, gadget_id = 70220017, pos = { x = 1581.6, y = 286.9, z = -940.3 }, rot = { x = 0.0, y = 229.5, z = 0.0 }, level = 1 },
	{ config_id = 251, gadget_id = 70220015, pos = { x = 1591.4, y = 286.9, z = -949.5 }, rot = { x = 272.8, y = 245.7, z = 302.1 }, level = 1 },
	{ config_id = 252, gadget_id = 70220016, pos = { x = 1563.7, y = 286.9, z = -932.0 }, rot = { x = 290.2, y = 313.0, z = 261.3 }, level = 1 },
	{ config_id = 253, gadget_id = 70220016, pos = { x = 1560.9, y = 286.9, z = -955.2 }, rot = { x = 290.3, y = 293.6, z = 279.6 }, level = 1 },
	{ config_id = 254, gadget_id = 70220017, pos = { x = 1602.7, y = 286.9, z = -927.4 }, rot = { x = 0.0, y = 163.5, z = 0.0 }, level = 1 },
	{ config_id = 255, gadget_id = 70220017, pos = { x = 1580.1, y = 286.9, z = -921.6 }, rot = { x = 0.0, y = 70.0, z = 0.0 }, level = 1 },
	{ config_id = 256, gadget_id = 70220015, pos = { x = 1614.6, y = 286.9, z = -964.0 }, rot = { x = 272.8, y = 245.7, z = 302.1 }, level = 1 },
	{ config_id = 257, gadget_id = 70220015, pos = { x = 1580.8, y = 286.9, z = -965.2 }, rot = { x = 272.8, y = 245.7, z = 46.0 }, level = 1 },
	{ config_id = 277, gadget_id = 70690006, pos = { x = 1329.7, y = 354.6, z = -785.5 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 278, gadget_id = 70690006, pos = { x = 1322.1, y = 354.5, z = -708.6 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 279, gadget_id = 70690006, pos = { x = 1370.8, y = 320.6, z = -677.7 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 280, gadget_id = 70690006, pos = { x = 1371.5, y = 335.2, z = -601.0 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 281, gadget_id = 70690006, pos = { x = 1218.3, y = 342.3, z = -706.8 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 282, gadget_id = 70690006, pos = { x = 1139.4, y = 330.2, z = -778.5 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 283, gadget_id = 70110001, pos = { x = 1248.9, y = 472.7, z = -781.8 }, rot = { x = 0.0, y = 107.2, z = 0.0 }, level = 1 },
	{ config_id = 284, gadget_id = 70690001, pos = { x = 1460.8, y = 291.6, z = -843.3 }, rot = { x = 0.0, y = 261.1, z = 0.0 }, level = 1 },
	{ config_id = 285, gadget_id = 70690001, pos = { x = 1451.7, y = 291.9, z = -844.2 }, rot = { x = 0.0, y = 261.1, z = 0.0 }, level = 1 },
	{ config_id = 286, gadget_id = 70690001, pos = { x = 1442.3, y = 292.8, z = -845.6 }, rot = { x = 0.0, y = 261.1, z = 0.0 }, level = 1 },
	{ config_id = 287, gadget_id = 70690001, pos = { x = 1435.0, y = 292.5, z = -846.6 }, rot = { x = 0.0, y = 261.1, z = 0.0 }, level = 1 },
	{ config_id = 288, gadget_id = 70690001, pos = { x = 1426.8, y = 293.0, z = -847.7 }, rot = { x = 0.0, y = 261.1, z = 0.0 }, level = 1 },
	{ config_id = 289, gadget_id = 70690006, pos = { x = 1449.3, y = 283.1, z = -727.8 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 290, gadget_id = 70220010, pos = { x = 1605.7, y = 272.4, z = -644.6 }, rot = { x = 357.4, y = 209.4, z = 359.9 }, level = 1 },
	{ config_id = 291, gadget_id = 70220010, pos = { x = 1629.7, y = 277.3, z = -673.7 }, rot = { x = 1.0, y = 320.8, z = 357.6 }, level = 1 },
	{ config_id = 292, gadget_id = 70220010, pos = { x = 1591.5, y = 286.9, z = -952.3 }, rot = { x = 1.0, y = 320.8, z = 357.6 }, level = 1 },
	{ config_id = 293, gadget_id = 70220010, pos = { x = 1571.4, y = 286.9, z = -925.8 }, rot = { x = 1.0, y = 320.8, z = 357.6 }, level = 1 },
	{ config_id = 294, gadget_id = 70220010, pos = { x = 1570.1, y = 286.9, z = -960.6 }, rot = { x = 1.0, y = 320.8, z = 357.6 }, level = 1 },
	{ config_id = 295, gadget_id = 70690006, pos = { x = 1462.3, y = 255.7, z = -669.7 }, rot = { x = 0.0, y = 117.8, z = 0.0 }, level = 1 },
	{ config_id = 296, gadget_id = 70900015, pos = { x = 1271.7, y = 321.9, z = -445.8 }, rot = { x = 0.0, y = 292.6, z = 0.0 }, level = 1 },
	{ config_id = 297, gadget_id = 70900015, pos = { x = 1275.4, y = 322.2, z = -437.4 }, rot = { x = 0.0, y = 114.9, z = 0.0 }, level = 1 },
	{ config_id = 298, gadget_id = 70220010, pos = { x = 1224.1, y = 297.3, z = -544.1 }, rot = { x = 1.0, y = 94.7, z = 2.4 }, level = 1 },
	{ config_id = 449, gadget_id = 70110001, pos = { x = 1630.7, y = 280.2, z = -719.9 }, rot = { x = 0.0, y = 25.8, z = 0.0 }, level = 1 },
	{ config_id = 450, gadget_id = 70110001, pos = { x = 1685.4, y = 283.4, z = -956.9 }, rot = { x = 0.0, y = 241.7, z = 0.0 }, level = 1 },
	{ config_id = 451, gadget_id = 70211031, pos = { x = 1250.9, y = 472.2, z = -784.1 }, rot = { x = 0.0, y = 271.6, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 454, gadget_id = 70211031, pos = { x = 1085.5, y = 358.6, z = -550.5 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { },
		gadgets = { 184, 192, 196, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 230, 231, 235, 236, 238, 240, 241, 242, 250, 251, 252, 253, 254, 255, 256, 257, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 449, 450, 451, 454 },
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

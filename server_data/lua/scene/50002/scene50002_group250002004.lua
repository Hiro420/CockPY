--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 147, gadget_id = 70310004, pos = { x = 1564.3, y = 255.2, z = -647.7 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 148, gadget_id = 70211001, pos = { x = 1603.2, y = 272.8, z = -649.3 }, rot = { x = 0.0, y = 243.2, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 149, gadget_id = 70211001, pos = { x = 1563.8, y = 255.0, z = -649.5 }, rot = { x = 0.0, y = 302.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 154, gadget_id = 70211001, pos = { x = 1587.0, y = 287.9, z = -807.9 }, rot = { x = 0.0, y = 347.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 176, gadget_id = 70510006, pos = { x = 1477.6, y = 285.8, z = -887.6 }, rot = { x = 0.0, y = 40.2, z = 0.0 }, level = 1 },
	{ config_id = 178, gadget_id = 70211001, pos = { x = 1548.4, y = 289.6, z = -891.8 }, rot = { x = 0.0, y = 235.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 180, gadget_id = 70310004, pos = { x = 1409.9, y = 300.5, z = -782.4 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 181, gadget_id = 70310004, pos = { x = 1359.2, y = 300.7, z = -913.6 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 200, gadget_id = 70310004, pos = { x = 1584.5, y = 286.9, z = -947.5 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1 },
	{ config_id = 201, gadget_id = 70211001, pos = { x = 1299.8, y = 359.2, z = -858.0 }, rot = { x = 0.0, y = 113.6, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 207, gadget_id = 70520012, pos = { x = 1537.5, y = 259.5, z = -693.1 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 212, gadget_id = 70211001, pos = { x = 1633.2, y = 280.1, z = -717.9 }, rot = { x = 0.0, y = 17.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 229, gadget_id = 70310004, pos = { x = 1467.0, y = 289.4, z = -732.0 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 234, gadget_id = 70310004, pos = { x = 1568.0, y = 270.4, z = -660.4 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 243, gadget_id = 70310004, pos = { x = 1490.1, y = 290.4, z = -915.4 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 244, gadget_id = 70310004, pos = { x = 1496.6, y = 291.5, z = -950.4 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 245, gadget_id = 70310004, pos = { x = 1528.5, y = 290.4, z = -965.6 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 246, gadget_id = 70310004, pos = { x = 1517.9, y = 291.4, z = -990.6 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 248, gadget_id = 70310004, pos = { x = 1598.4, y = 294.9, z = -1015.8 }, rot = { x = 4.5, y = 77.6, z = 14.3 }, level = 1 },
	{ config_id = 276, gadget_id = 70211001, pos = { x = 1453.8, y = 260.1, z = -568.3 }, rot = { x = 0.0, y = 210.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 301, gadget_id = 70310004, pos = { x = 1055.8, y = 346.4, z = -927.7 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 302, gadget_id = 70310004, pos = { x = 1029.8, y = 330.8, z = -906.3 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 303, gadget_id = 70310004, pos = { x = 1047.6, y = 341.3, z = -890.1 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 304, gadget_id = 70310004, pos = { x = 1046.6, y = 346.1, z = -862.4 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 305, gadget_id = 70310004, pos = { x = 1071.5, y = 309.8, z = -803.4 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 306, gadget_id = 70310004, pos = { x = 1036.1, y = 293.7, z = -753.6 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 307, gadget_id = 70310004, pos = { x = 1117.8, y = 308.0, z = -720.0 }, rot = { x = 0.0, y = 77.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 380, gadget_id = 70520012, pos = { x = 1591.1, y = 273.2, z = -666.4 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 381, gadget_id = 70520012, pos = { x = 1582.4, y = 271.4, z = -643.1 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 382, gadget_id = 70520012, pos = { x = 1617.0, y = 285.9, z = -727.3 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 383, gadget_id = 70520012, pos = { x = 1619.4, y = 285.7, z = -724.6 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 384, gadget_id = 70520012, pos = { x = 1546.0, y = 278.0, z = -784.8 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 385, gadget_id = 70520012, pos = { x = 1549.9, y = 277.5, z = -782.5 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 386, gadget_id = 70520012, pos = { x = 1614.8, y = 289.6, z = -860.5 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 387, gadget_id = 70520012, pos = { x = 1537.7, y = 284.3, z = -881.7 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 388, gadget_id = 70520012, pos = { x = 1529.5, y = 284.4, z = -880.6 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 389, gadget_id = 70520012, pos = { x = 1497.4, y = 284.1, z = -878.6 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 390, gadget_id = 70520012, pos = { x = 1531.0, y = 285.0, z = -859.6 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 391, gadget_id = 70520012, pos = { x = 1545.4, y = 283.8, z = -858.4 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 392, gadget_id = 70520012, pos = { x = 1497.2, y = 284.0, z = -858.2 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 393, gadget_id = 70520012, pos = { x = 1466.9, y = 290.6, z = -904.0 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 394, gadget_id = 70520012, pos = { x = 1580.6, y = 295.5, z = -1018.3 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 395, gadget_id = 70520012, pos = { x = 1337.9, y = 289.8, z = -971.6 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 396, gadget_id = 70520012, pos = { x = 1484.4, y = 283.1, z = -1009.9 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 397, gadget_id = 70520012, pos = { x = 1455.3, y = 269.3, z = -1017.2 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 398, gadget_id = 70520012, pos = { x = 1451.5, y = 269.8, z = -983.5 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 399, gadget_id = 70520012, pos = { x = 1397.1, y = 277.1, z = -1016.8 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 400, gadget_id = 70520012, pos = { x = 1257.9, y = 286.7, z = -991.8 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 401, gadget_id = 70520012, pos = { x = 1183.9, y = 314.2, z = -973.5 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 402, gadget_id = 70520012, pos = { x = 1191.8, y = 290.6, z = -969.7 }, rot = { x = 0.0, y = 244.7, z = 0.0 }, level = 1 },
	{ config_id = 403, gadget_id = 70211001, pos = { x = 1179.3, y = 291.4, z = -988.8 }, rot = { x = 0.0, y = 73.6, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 414, gadget_id = 70211001, pos = { x = 1400.7, y = 247.7, z = -343.5 }, rot = { x = 0.0, y = 134.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
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
		-- description = LieYanHua,
		monsters = { },
		gadgets = { 147, 148, 149, 154, 176, 178, 180, 181, 200, 201, 207, 212, 229, 234, 243, 244, 245, 246, 248, 276, 301, 302, 303, 304, 305, 306, 307, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 414 },
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

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
	{ config_id = 574, gadget_id = 70310001, pos = { x = 29.3, y = -10.3, z = 564.3 }, rot = { x = 0.0, y = 352.2, z = 0.0 }, level = 1 },
	{ config_id = 575, gadget_id = 70310001, pos = { x = 41.3, y = -10.3, z = 561.8 }, rot = { x = 0.0, y = 13.1, z = 0.0 }, level = 1 },
	{ config_id = 576, gadget_id = 70310001, pos = { x = 30.7, y = -10.3, z = 582.2 }, rot = { x = 0.0, y = 15.9, z = 0.0 }, level = 1 },
	{ config_id = 577, gadget_id = 70310001, pos = { x = 43.4, y = -10.3, z = 573.9 }, rot = { x = 0.0, y = 79.0, z = 0.0 }, level = 1 },
	{ config_id = 578, gadget_id = 70310001, pos = { x = 48.7, y = -10.3, z = 598.4 }, rot = { x = 0.0, y = 262.3, z = 0.0 }, level = 1 },
	{ config_id = 579, gadget_id = 70310001, pos = { x = 55.2, y = -10.3, z = 578.0 }, rot = { x = 0.0, y = 11.2, z = 0.0 }, level = 1 },
	{ config_id = 580, gadget_id = 70310001, pos = { x = 63.7, y = -10.3, z = 596.9 }, rot = { x = 0.0, y = 153.6, z = 0.0 }, level = 1 },
	{ config_id = 581, gadget_id = 70310001, pos = { x = 96.9, y = -10.3, z = 609.3 }, rot = { x = 0.0, y = 349.4, z = 0.0 }, level = 1 },
	{ config_id = 582, gadget_id = 70310001, pos = { x = 107.0, y = -10.3, z = 592.7 }, rot = { x = 0.0, y = 274.1, z = 0.0 }, level = 1 },
	{ config_id = 583, gadget_id = 70310001, pos = { x = 97.2, y = -10.3, z = 574.0 }, rot = { x = 0.0, y = 298.5, z = 0.0 }, level = 1 },
	{ config_id = 584, gadget_id = 70310001, pos = { x = 83.0, y = -10.3, z = 566.1 }, rot = { x = 0.0, y = 197.3, z = 0.0 }, level = 1 },
	{ config_id = 585, gadget_id = 70310001, pos = { x = 84.9, y = -10.3, z = 610.3 }, rot = { x = 0.0, y = 178.3, z = 0.0 }, level = 1 },
	{ config_id = 586, gadget_id = 70310001, pos = { x = 75.5, y = -10.3, z = 603.8 }, rot = { x = 0.0, y = 204.6, z = 0.0 }, level = 1 },
	{ config_id = 587, gadget_id = 70310001, pos = { x = 68.4, y = -10.3, z = 571.7 }, rot = { x = 0.0, y = 164.1, z = 0.0 }, level = 1 },
	{ config_id = 588, gadget_id = 70310001, pos = { x = 33.7, y = -10.3, z = 598.7 }, rot = { x = 0.0, y = 260.1, z = 0.0 }, level = 1 },
	{ config_id = 589, gadget_id = 70211001, pos = { x = 80.0, y = 9.3, z = 601.0 }, rot = { x = 0.0, y = 144.2, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 590, gadget_id = 70211001, pos = { x = 79.9, y = 9.3, z = 593.7 }, rot = { x = 0.0, y = 128.3, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 591, gadget_id = 70211001, pos = { x = 93.7, y = 5.3, z = 594.1 }, rot = { x = 0.0, y = 50.9, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 592, gadget_id = 70211001, pos = { x = 92.3, y = -10.3, z = 593.1 }, rot = { x = 0.0, y = 59.9, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 593, gadget_id = 70211001, pos = { x = 68.0, y = -10.3, z = 578.6 }, rot = { x = 0.0, y = 7.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 594, gadget_id = 70211001, pos = { x = 38.2, y = -10.3, z = 577.7 }, rot = { x = 0.0, y = 326.4, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 595, gadget_id = 70710003, pos = { x = 83.2, y = -7.7, z = 590.0 }, rot = { x = 0.0, y = 355.8, z = 0.0 }, level = 1 }
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
	rand_suite = false,
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
		gadgets = { 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595 },
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 353, monster_id = 21010501, pos = { x = 2350.7, y = 285.3, z = -278.2 }, rot = { x = 0.0, y = 243.2, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 354, monster_id = 21010101, pos = { x = 2346.4, y = 282.2, z = -276.0 }, rot = { x = 0.0, y = 143.7, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 575, monster_id = 21010101, pos = { x = 2346.2, y = 281.2, z = -280.4 }, rot = { x = 0.0, y = 41.3, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 591, gadget_id = 70220013, pos = { x = 2353.1, y = 284.7, z = -276.6 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 15 },
	{ config_id = 592, gadget_id = 70220013, pos = { x = 2353.8, y = 284.4, z = -280.7 }, rot = { x = 347.1, y = 312.7, z = 356.2 }, level = 15 },
	{ config_id = 593, gadget_id = 70310001, pos = { x = 2351.6, y = 284.8, z = -281.4 }, rot = { x = 0.0, y = 321.3, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 594, gadget_id = 70211011, pos = { x = 2353.8, y = 284.7, z = -278.4 }, rot = { x = 3.4, y = 160.4, z = 11.7 }, level = 15, drop_tag = "战斗中级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 595, gadget_id = 70220005, pos = { x = 2350.9, y = 285.1, z = -279.9 }, rot = { x = 0.0, y = 330.5, z = 0.0 }, level = 15 },
	{ config_id = 1271, gadget_id = 70310004, pos = { x = 2347.2, y = 281.6, z = -278.2 }, rot = { x = 0.0, y = 263.4, z = 0.0 }, level = 15, state = GadgetState.GearStart }
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
	rand_suite = true
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
		monsters = { 353, 354, 575 },
		gadgets = { 591, 592, 593, 594, 595 },
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

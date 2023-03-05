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
	{ config_id = 477, gadget_id = 70310001, pos = { x = 2266.3, y = 236.0, z = -748.1 }, rot = { x = 0.0, y = 278.5, z = 0.0 }, level = 2 },
	{ config_id = 478, gadget_id = 70310001, pos = { x = 2214.3, y = 215.1, z = -44.3 }, rot = { x = 0.0, y = 207.3, z = 0.0 }, level = 23 },
	{ config_id = 479, gadget_id = 70310001, pos = { x = 2263.9, y = 264.5, z = -338.0 }, rot = { x = 0.0, y = 233.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 480, gadget_id = 70310001, pos = { x = 2258.3, y = 264.5, z = -338.1 }, rot = { x = 0.0, y = 233.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 481, gadget_id = 70310001, pos = { x = 2252.1, y = 269.3, z = -279.6 }, rot = { x = 0.0, y = 233.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 482, gadget_id = 70310001, pos = { x = 2264.6, y = 269.3, z = -279.4 }, rot = { x = 0.0, y = 114.8, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 483, gadget_id = 70310001, pos = { x = 2266.9, y = 273.2, z = -248.3 }, rot = { x = 0.0, y = 114.8, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 484, gadget_id = 70310001, pos = { x = 2247.0, y = 273.1, z = -248.7 }, rot = { x = 0.0, y = 233.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 485, gadget_id = 70310003, pos = { x = 2209.8, y = 210.2, z = -511.2 }, rot = { x = 0.0, y = 139.4, z = 0.0 }, level = 15, state = GadgetState.GearStart }
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
		monsters = { },
		gadgets = { 477, 478, 479, 480, 481, 482, 483, 484, 485 },
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

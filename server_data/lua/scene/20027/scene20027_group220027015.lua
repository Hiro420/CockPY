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
	{ config_id = 100, gadget_id = 70360021, pos = { x = -92.4, y = -80.4, z = -198.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 101, gadget_id = 70360021, pos = { x = -74.8, y = -80.2, z = -213.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 102, gadget_id = 70360021, pos = { x = -62.8, y = -80.2, z = -213.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 21 },
	{ config_id = 103, gadget_id = 70360021, pos = { x = -62.8, y = -78.2, z = -213.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 7 },
	{ config_id = 104, gadget_id = 70360021, pos = { x = -56.0, y = -80.2, z = -213.2 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 8 },
	{ config_id = 105, gadget_id = 70360021, pos = { x = -50.0, y = -80.2, z = -212.9 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 9 },
	{ config_id = 106, gadget_id = 70360021, pos = { x = -42.6, y = -80.2, z = -212.9 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 10 },
	{ config_id = 123, gadget_id = 70360021, pos = { x = -80.5, y = -70.7, z = -205.1 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20 }
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
		monsters = { },
		gadgets = { 100, 101, 102, 103, 104, 105, 106, 123 },
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

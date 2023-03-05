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
	{ config_id = 2001, gadget_id = 70360022, pos = { x = 78.7, y = 39.9, z = 129.1 }, rot = { x = 347.0, y = 200.9, z = 328.7 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2002, gadget_id = 70360022, pos = { x = 112.0, y = 41.0, z = 111.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2003, gadget_id = 70360022, pos = { x = 106.0, y = 41.0, z = 130.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2004, gadget_id = 70360021, pos = { x = 156.6, y = 41.0, z = 130.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 2005, gadget_id = 70360021, pos = { x = 160.6, y = 41.0, z = 111.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 2006, gadget_id = 70360021, pos = { x = 153.1, y = 41.0, z = 111.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 3 },
	{ config_id = 2007, gadget_id = 70360021, pos = { x = 136.6, y = 41.0, z = 130.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 2 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007 },
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

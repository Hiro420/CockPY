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
	{ config_id = 188001, gadget_id = 70310001, pos = { x = 649.4, y = 233.9, z = -452.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart },
	{ config_id = 188002, gadget_id = 70310001, pos = { x = 655.0, y = 233.7, z = -462.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart },
	{ config_id = 188003, gadget_id = 70310001, pos = { x = 641.3, y = 225.9, z = -455.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 188004, gadget_id = 70310001, pos = { x = 646.7, y = 225.9, z = -467.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 188005, gadget_id = 70310001, pos = { x = 634.4, y = 223.4, z = -460.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 188006, gadget_id = 70310001, pos = { x = 639.7, y = 223.4, z = -470.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 188007, gadget_id = 70310001, pos = { x = 700.0, y = 247.0, z = -429.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart },
	{ config_id = 188008, gadget_id = 70310001, pos = { x = 693.7, y = 247.3, z = -423.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart }
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
		gadgets = { 188001, 188002, 188003, 188004, 188005, 188006, 188007, 188008 },
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

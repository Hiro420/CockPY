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
	{ config_id = 381001, gadget_id = 70310001, pos = { x = 301.1, y = 185.8, z = 1463.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381002, gadget_id = 70310001, pos = { x = 299.7, y = 185.8, z = 1458.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381003, gadget_id = 70310001, pos = { x = 308.8, y = 192.6, z = 1478.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381004, gadget_id = 70310001, pos = { x = 306.8, y = 192.7, z = 1473.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381005, gadget_id = 70310001, pos = { x = 326.8, y = 221.0, z = 1578.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381006, gadget_id = 70310001, pos = { x = 322.6, y = 220.8, z = 1575.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381007, gadget_id = 70310001, pos = { x = 284.0, y = 193.5, z = 1447.5 }, rot = { x = 15.4, y = 0.4, z = 2.6 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 381008, gadget_id = 70310001, pos = { x = 293.7, y = 197.5, z = 1445.4 }, rot = { x = 15.4, y = 0.4, z = 2.6 }, level = 24, state = GadgetState.GearStart }
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
		gadgets = { 381001, 381002, 381003, 381004, 381005, 381006, 381007, 381008 },
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

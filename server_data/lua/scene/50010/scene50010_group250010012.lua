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
	{ config_id = 81, gadget_id = 70900254, pos = { x = 101.5, y = 4.0, z = -22.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 82, gadget_id = 70900254, pos = { x = 101.1, y = 4.0, z = -46.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 83, gadget_id = 70900254, pos = { x = 101.1, y = 4.0, z = 1.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 85, gadget_id = 70900301, pos = { x = 60.9, y = 7.0, z = -29.4 }, rot = { x = 0.0, y = 170.4, z = 0.0 }, level = 1 },
	{ config_id = 86, gadget_id = 70900301, pos = { x = 85.8, y = 7.0, z = -14.2 }, rot = { x = 0.0, y = 90.6, z = 0.0 }, level = 1 },
	{ config_id = 87, gadget_id = 70900301, pos = { x = 94.6, y = 7.0, z = -14.5 }, rot = { x = 0.0, y = 92.6, z = 0.0 }, level = 1 },
	{ config_id = 88, gadget_id = 70320002, pos = { x = 82.5, y = 6.2, z = -8.0 }, rot = { x = 0.0, y = 95.9, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 89, gadget_id = 70320002, pos = { x = 82.7, y = 6.2, z = -4.9 }, rot = { x = 0.0, y = 88.7, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 90, gadget_id = 70320002, pos = { x = 96.5, y = 6.2, z = -8.0 }, rot = { x = 0.0, y = 272.1, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 91, gadget_id = 70320002, pos = { x = 96.4, y = 6.2, z = -4.7 }, rot = { x = 0.0, y = 268.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 93, gadget_id = 70900301, pos = { x = 107.1, y = 8.9, z = -5.4 }, rot = { x = 0.0, y = 181.4, z = 0.0 }, level = 1 },
	{ config_id = 95, gadget_id = 70900301, pos = { x = 51.8, y = 7.0, z = -28.2 }, rot = { x = 0.0, y = 15.3, z = 0.0 }, level = 1 },
	{ config_id = 96, gadget_id = 70900301, pos = { x = 114.3, y = 7.0, z = -34.6 }, rot = { x = 0.0, y = 88.9, z = 0.0 }, level = 1 }
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
		gadgets = { 81, 82, 83, 85, 86, 87, 88, 89, 90, 91, 93, 95, 96 },
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

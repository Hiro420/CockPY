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
	{ config_id = 11001, gadget_id = 70350019, pos = { x = -289.2, y = 31.8, z = 171.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11003, gadget_id = 70350019, pos = { x = -276.5, y = 31.5, z = 161.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11004, gadget_id = 70350019, pos = { x = -308.9, y = 31.5, z = 178.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11012, gadget_id = 70350019, pos = { x = -292.6, y = 31.5, z = 157.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11013, gadget_id = 70350019, pos = { x = -290.0, y = 31.5, z = 185.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11017, gadget_id = 70350019, pos = { x = -266.8, y = 31.5, z = 157.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11023, gadget_id = 70350019, pos = { x = -298.6, y = 31.5, z = 162.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11028, gadget_id = 70350019, pos = { x = -299.1, y = 31.8, z = 177.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11029, gadget_id = 70350019, pos = { x = -279.7, y = 31.5, z = 182.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11033, gadget_id = 70350019, pos = { x = -273.1, y = 31.5, z = 179.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 11001, 11003, 11004, 11012, 11013, 11017, 11023, 11028, 11029, 11033 },
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

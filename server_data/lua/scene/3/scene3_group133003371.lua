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
	{ config_id = 3692, gadget_id = 70310001, pos = { x = 2741.1, y = 260.4, z = -1378.5 }, rot = { x = 0.0, y = 319.9, z = 0.0 }, level = 30 },
	{ config_id = 3693, gadget_id = 70310001, pos = { x = 2830.2, y = 270.9, z = -1452.2 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 30 },
	{ config_id = 3694, gadget_id = 70310001, pos = { x = 2820.4, y = 271.0, z = -1443.0 }, rot = { x = 0.0, y = 309.3, z = 0.0 }, level = 30 },
	{ config_id = 3695, gadget_id = 70310001, pos = { x = 2738.8, y = 270.6, z = -1436.0 }, rot = { x = 0.0, y = 14.4, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 3696, gadget_id = 70310001, pos = { x = 2493.9, y = 263.4, z = -1555.8 }, rot = { x = 0.0, y = 101.6, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 3697, gadget_id = 70310001, pos = { x = 2319.3, y = 231.4, z = -1221.5 }, rot = { x = 0.0, y = 358.5, z = 0.0 }, level = 5 },
	{ config_id = 3698, gadget_id = 70310006, pos = { x = 2169.9, y = 207.7, z = -1090.2 }, rot = { x = 0.0, y = 149.3, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 3699, gadget_id = 70310001, pos = { x = 2420.5, y = 205.9, z = -1255.7 }, rot = { x = 0.0, y = 276.3, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 3700, gadget_id = 70310001, pos = { x = 2221.4, y = 217.5, z = -1521.4 }, rot = { x = 0.0, y = 227.4, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 3701, gadget_id = 70310001, pos = { x = 2494.7, y = 263.4, z = -1561.6 }, rot = { x = 0.0, y = 319.9, z = 0.0 }, level = 10, state = GadgetState.GearStart }
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
		gadgets = { 3692, 3693, 3694, 3695, 3696, 3697, 3698, 3699, 3700, 3701 },
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58, monster_id = 22010101, pos = { x = 218.4, y = 4.0, z = -70.3 }, rot = { x = 0.0, y = 58.3, z = 0.0 }, level = 1, affix = { 1008, 1010, 1018 }, isElite = true, pose_id = 0 },
	{ config_id = 59, monster_id = 21010601, pos = { x = 226.2, y = 4.0, z = -69.5 }, rot = { x = 0.0, y = 253.2, z = 0.0 }, level = 1, affix = { 1008, 1009, 1018 }, isElite = true, pose_id = 0 },
	{ config_id = 60, monster_id = 21010201, pos = { x = 224.9, y = 4.0, z = -65.9 }, rot = { x = 0.0, y = 235.5, z = 0.0 }, level = 1, affix = { 1008, 1010, 1018 }, isElite = true, pose_id = 0 },
	{ config_id = 61, monster_id = 21010201, pos = { x = 219.8, y = 4.0, z = -65.4 }, rot = { x = 0.0, y = 223.4, z = 0.0 }, level = 1, affix = { 1008, 1010, 1018 }, isElite = true, pose_id = 0 },
	{ config_id = 62, monster_id = 21010601, pos = { x = 220.2, y = 4.0, z = -73.3 }, rot = { x = 0.0, y = 359.9, z = 0.0 }, level = 1, affix = { 1010, 1018 }, isElite = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332, gadget_id = 70300107, pos = { x = 222.4, y = 4.0, z = -70.0 }, rot = { x = 0.0, y = 323.7, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 333, gadget_id = 70220013, pos = { x = 219.0, y = 4.0, z = -80.7 }, rot = { x = 0.0, y = 71.3, z = 0.0 }, level = 1 },
	{ config_id = 334, gadget_id = 70220013, pos = { x = 224.3, y = 4.0, z = -78.1 }, rot = { x = 0.0, y = 329.2, z = 0.0 }, level = 1 },
	{ config_id = 335, gadget_id = 70220014, pos = { x = 225.3, y = 4.0, z = -77.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 336, gadget_id = 70220014, pos = { x = 226.3, y = 4.0, z = -76.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
		-- description = suite_1,
		monsters = { 58, 59, 60, 61, 62 },
		gadgets = { 332, 333, 334, 335, 336 },
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

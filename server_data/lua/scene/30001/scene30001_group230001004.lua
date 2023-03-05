--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010601, pos = { x = 91.1, y = 2.0, z = -127.4 }, rot = { x = 0.0, y = 338.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 21010601, pos = { x = 92.7, y = 2.0, z = -101.9 }, rot = { x = 0.0, y = 200.1, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4003, monster_id = 21010601, pos = { x = 113.0, y = 4.0, z = -128.2 }, rot = { x = 0.0, y = 335.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 21010601, pos = { x = 115.3, y = 4.0, z = -102.1 }, rot = { x = 0.0, y = 246.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4005, monster_id = 21010601, pos = { x = 131.5, y = 9.0, z = -127.8 }, rot = { x = 0.0, y = 320.4, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4006, monster_id = 21010601, pos = { x = 131.4, y = 9.0, z = -102.1 }, rot = { x = 0.0, y = 226.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4007, monster_id = 21010701, pos = { x = 109.9, y = 0.9, z = -117.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 4008, monster_id = 21010701, pos = { x = 110.0, y = -0.5, z = -115.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 4009, monster_id = 21010701, pos = { x = 109.7, y = -0.5, z = -111.7 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 4010, monster_id = 21010701, pos = { x = 107.3, y = -0.5, z = -118.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 4011, monster_id = 21010701, pos = { x = 107.3, y = -0.5, z = -115.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 4012, monster_id = 21010701, pos = { x = 107.5, y = -0.5, z = -112.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4013, gadget_id = 70220005, pos = { x = 84.3, y = -0.5, z = -117.5 }, rot = { x = 0.0, y = 170.1, z = 0.0 }, level = 1 },
	{ config_id = 4014, gadget_id = 70220005, pos = { x = 106.3, y = -0.5, z = -112.0 }, rot = { x = 0.0, y = 245.7, z = 0.0 }, level = 1 },
	{ config_id = 4015, gadget_id = 70220005, pos = { x = 130.9, y = -0.5, z = -114.9 }, rot = { x = 0.0, y = 154.8, z = 0.0 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220005, pos = { x = 118.3, y = -0.5, z = -116.5 }, rot = { x = 0.0, y = 237.6, z = 0.0 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220005, pos = { x = 93.5, y = -0.5, z = -117.6 }, rot = { x = 0.0, y = 125.4, z = 0.0 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220005, pos = { x = 106.6, y = -0.5, z = -116.7 }, rot = { x = 0.0, y = 113.1, z = 0.0 }, level = 1 }
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
	rand_suite = true,
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
		monsters = { 4001, 4002, 4003, 4004, 4005, 4006 },
		gadgets = { 4013, 4014, 4015, 4016, 4017, 4018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4007, 4008, 4009, 4010, 4011, 4012 },
		gadgets = { },
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

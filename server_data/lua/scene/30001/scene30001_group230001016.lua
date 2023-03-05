--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49, monster_id = 20010501, pos = { x = -50.8, y = 2.0, z = -97.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 50, monster_id = 20010501, pos = { x = -39.3, y = 2.0, z = -97.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 51, monster_id = 20011001, pos = { x = -48.5, y = -1.0, z = -95.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 52, monster_id = 20011001, pos = { x = -42.7, y = -1.0, z = -101.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 53, monster_id = 20011001, pos = { x = -41.7, y = -1.0, z = -93.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 158, monster_id = 21010601, pos = { x = -51.3, y = 2.0, z = -97.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 159, monster_id = 21010601, pos = { x = -39.1, y = 2.0, z = -98.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 160, monster_id = 21010701, pos = { x = -41.3, y = 2.0, z = -111.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 161, monster_id = 21010701, pos = { x = -48.2, y = 2.0, z = -111.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 162, monster_id = 21010501, pos = { x = -50.9, y = 2.0, z = -99.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 163, monster_id = 21010501, pos = { x = -39.4, y = 2.0, z = -99.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 164, monster_id = 21010501, pos = { x = -39.4, y = 2.0, z = -96.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 165, monster_id = 21010501, pos = { x = -50.5, y = 2.0, z = -96.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 118, gadget_id = 70220004, pos = { x = -48.0, y = -1.0, z = -103.4 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 1 },
	{ config_id = 119, gadget_id = 70220004, pos = { x = -42.0, y = -1.0, z = -102.8 }, rot = { x = 0.0, y = 335.5, z = 0.0 }, level = 1 },
	{ config_id = 120, gadget_id = 70220004, pos = { x = -42.2, y = -1.0, z = -96.6 }, rot = { x = 0.0, y = 149.5, z = 0.0 }, level = 1 },
	{ config_id = 121, gadget_id = 70220004, pos = { x = -48.0, y = -1.0, z = -96.5 }, rot = { x = 0.0, y = 26.8, z = 0.0 }, level = 1 },
	{ config_id = 122, gadget_id = 70220004, pos = { x = -42.5, y = -1.0, z = -91.3 }, rot = { x = 0.0, y = 262.6, z = 0.0 }, level = 1 },
	{ config_id = 123, gadget_id = 70220004, pos = { x = -48.5, y = -1.0, z = -91.0 }, rot = { x = 0.0, y = 67.7, z = 0.0 }, level = 1 },
	{ config_id = 124, gadget_id = 70220004, pos = { x = -42.2, y = -1.0, z = -87.1 }, rot = { x = 0.0, y = 342.1, z = 0.0 }, level = 1 },
	{ config_id = 125, gadget_id = 70220004, pos = { x = -49.3, y = -1.0, z = -86.9 }, rot = { x = 0.0, y = 226.9, z = 0.0 }, level = 1 }
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
		monsters = { 49, 50, 51, 52, 53 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 158, 159, 160, 161 },
		gadgets = { 118, 119, 120, 121, 122, 123, 124, 125 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 162, 163, 164, 165 },
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 459, monster_id = 21010501, pos = { x = 2391.3, y = 206.9, z = -1156.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 460, monster_id = 21010201, pos = { x = 2368.7, y = 205.9, z = -1142.1 }, rot = { x = 0.0, y = 86.3, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 461, monster_id = 21010201, pos = { x = 2368.0, y = 205.8, z = -1140.4 }, rot = { x = 0.0, y = 90.8, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 462, monster_id = 21010501, pos = { x = 2390.9, y = 206.9, z = -1156.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" },
	{ config_id = 463, monster_id = 21010501, pos = { x = 2392.1, y = 207.8, z = -1162.8 }, rot = { x = 0.0, y = 91.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" },
	{ config_id = 464, monster_id = 21010501, pos = { x = 2400.7, y = 209.7, z = -1128.9 }, rot = { x = 0.0, y = 213.6, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 459, 460, 461 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 462, 463, 464 },
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

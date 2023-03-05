--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 323, monster_id = 28020301, pos = { x = 1936.8, y = 211.0, z = -828.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "走兽" },
	{ config_id = 324, monster_id = 28020301, pos = { x = 1942.3, y = 208.5, z = -823.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "走兽" },
	{ config_id = 325, monster_id = 28020301, pos = { x = 1941.4, y = 212.2, z = -841.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "走兽" },
	{ config_id = 326, monster_id = 28020102, pos = { x = 1941.3, y = 211.7, z = -835.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "走兽" },
	{ config_id = 125001, monster_id = 28020301, pos = { x = 1954.2, y = 208.6, z = -833.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "走兽" },
	{ config_id = 125002, monster_id = 28020301, pos = { x = 1934.8, y = 209.6, z = -814.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "走兽" },
	{ config_id = 125003, monster_id = 28020301, pos = { x = 1948.3, y = 208.1, z = -813.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "走兽" }
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
		monsters = { 323, 125001, 125002, 125003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 324, 325 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 326 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
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

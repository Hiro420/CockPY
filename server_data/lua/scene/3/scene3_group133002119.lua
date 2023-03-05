--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303, monster_id = 28020301, pos = { x = 2011.5, y = 215.6, z = -1000.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 304, monster_id = 28020301, pos = { x = 2017.9, y = 214.0, z = -996.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 305, monster_id = 28020301, pos = { x = 2006.5, y = 213.7, z = -983.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 306, monster_id = 28020301, pos = { x = 1990.9, y = 212.9, z = -952.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 308, monster_id = 28010201, pos = { x = 2031.6, y = 207.5, z = -971.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 309, monster_id = 28010201, pos = { x = 2029.4, y = 205.4, z = -931.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 310, monster_id = 28010201, pos = { x = 2043.3, y = 207.4, z = -985.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "采集动物" },
	{ config_id = 311, monster_id = 28010201, pos = { x = 2029.8, y = 205.9, z = -949.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" }
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
		monsters = { 303, 308, 309 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 304, 305, 310 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 306, 311 },
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

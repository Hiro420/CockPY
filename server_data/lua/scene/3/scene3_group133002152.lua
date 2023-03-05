--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 447, monster_id = 21010201, pos = { x = 1899.9, y = 213.0, z = -719.2 }, rot = { x = 0.0, y = 82.6, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 448, monster_id = 21010201, pos = { x = 1899.6, y = 212.9, z = -723.9 }, rot = { x = 0.0, y = 85.9, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 449, monster_id = 21010301, pos = { x = 1902.3, y = 212.3, z = -721.4 }, rot = { x = 0.0, y = 72.1, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 882, monster_id = 21010701, pos = { x = 1897.9, y = 213.3, z = -722.4 }, rot = { x = 0.0, y = 82.6, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 883, monster_id = 21010701, pos = { x = 1897.4, y = 213.6, z = -720.1 }, rot = { x = 0.0, y = 82.6, z = 0.0 }, level = 10, drop_tag = "丘丘人" }
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
		monsters = { 447, 448, 449 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 882, 883 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
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

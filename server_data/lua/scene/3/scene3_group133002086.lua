--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197, monster_id = 21010201, pos = { x = 1772.8, y = 241.7, z = -763.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 198, monster_id = 21010201, pos = { x = 1773.1, y = 241.8, z = -765.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 199, monster_id = 21010501, pos = { x = 1768.4, y = 245.9, z = -748.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人", isOneoff = true },
	{ config_id = 332, monster_id = 21010701, pos = { x = 1774.5, y = 241.4, z = -764.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 333, monster_id = 21010701, pos = { x = 1774.3, y = 241.4, z = -762.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 334, monster_id = 21010301, pos = { x = 1775.3, y = 241.3, z = -763.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 335, monster_id = 21010301, pos = { x = 1772.1, y = 241.8, z = -762.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 336, monster_id = 21010601, pos = { x = 1768.3, y = 245.9, z = -747.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" }
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
		rand_weight = 150
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 197, 198, 199 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 332, 333 },
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
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 334, 335, 336 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
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

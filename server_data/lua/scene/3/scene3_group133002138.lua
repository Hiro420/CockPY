--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 393, monster_id = 21011001, pos = { x = 1967.3, y = 264.2, z = -565.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" },
	{ config_id = 394, monster_id = 21011001, pos = { x = 1947.4, y = 260.8, z = -554.0 }, rot = { x = 0.0, y = 283.2, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" },
	{ config_id = 395, monster_id = 21010701, pos = { x = 1960.0, y = 262.3, z = -570.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 396, monster_id = 21010701, pos = { x = 1944.3, y = 260.3, z = -559.6 }, rot = { x = 0.0, y = 188.7, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 397, monster_id = 21010501, pos = { x = 1965.6, y = 260.9, z = -577.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" },
	{ config_id = 398, monster_id = 21010501, pos = { x = 1941.3, y = 259.4, z = -555.8 }, rot = { x = 0.0, y = 228.0, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" },
	{ config_id = 399, monster_id = 21030301, pos = { x = 1906.4, y = 243.7, z = -630.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘萨满" },
	{ config_id = 400, monster_id = 20010601, pos = { x = 1904.2, y = 243.6, z = -628.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
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
		monsters = { 393, 394 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 395, 396 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 397, 398 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 399 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 400 },
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32, monster_id = 21020101, pos = { x = 139.4, y = 0.5, z = 239.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 33, monster_id = 21010201, pos = { x = 131.2, y = 0.5, z = 237.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 34, monster_id = 21010201, pos = { x = 132.0, y = 0.5, z = 243.3 }, rot = { x = 0.0, y = 205.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 35, monster_id = 21010201, pos = { x = 124.3, y = 0.5, z = 240.9 }, rot = { x = 0.0, y = 83.1, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 36, monster_id = 21011001, pos = { x = 111.2, y = 7.0, z = 248.1 }, rot = { x = 0.0, y = 291.6, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 37, monster_id = 21011001, pos = { x = 137.3, y = 7.0, z = 256.5 }, rot = { x = 0.0, y = 230.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 38, monster_id = 21011001, pos = { x = 137.3, y = 7.0, z = 224.4 }, rot = { x = 0.0, y = 338.2, z = 0.0 }, level = 1, disableWander = true }
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
		-- description = suite_1,
		monsters = { 32, 33, 34, 35, 36, 37, 38 },
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

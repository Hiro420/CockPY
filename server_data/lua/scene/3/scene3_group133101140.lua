--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 28030404, pos = { x = 1088.1, y = 279.5, z = 1339.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 140002, monster_id = 28030404, pos = { x = 1089.2, y = 279.4, z = 1336.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 140003, monster_id = 28030404, pos = { x = 1094.3, y = 279.8, z = 1338.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 140001, 140002, 140003 },
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
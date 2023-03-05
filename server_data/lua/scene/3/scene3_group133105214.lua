--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214003, monster_id = 28030402, pos = { x = 581.2, y = 251.0, z = -254.6 }, rot = { x = 338.1, y = 74.9, z = 357.2 }, level = 25, drop_tag = "鸟类" },
	{ config_id = 214004, monster_id = 28030402, pos = { x = 581.4, y = 250.2, z = -257.8 }, rot = { x = 350.9, y = 134.1, z = 339.8 }, level = 25, drop_tag = "鸟类" },
	{ config_id = 214005, monster_id = 28030101, pos = { x = 215.5, y = 203.8, z = -54.0 }, rot = { x = 0.0, y = 190.5, z = 0.0 }, level = 19, drop_tag = "鸟类" }
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
		monsters = { 214003, 214004, 214005 },
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
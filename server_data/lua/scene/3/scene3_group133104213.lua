--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213004, monster_id = 28020201, pos = { x = 682.0, y = 204.3, z = 236.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 213005, monster_id = 28020201, pos = { x = 679.7, y = 205.0, z = 237.3 }, rot = { x = 0.0, y = 56.4, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 213006, monster_id = 28020201, pos = { x = 680.3, y = 203.2, z = 238.8 }, rot = { x = 0.0, y = 151.5, z = 0.0 }, level = 19, drop_tag = "走兽" }
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
		monsters = { 213004, 213005, 213006 },
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
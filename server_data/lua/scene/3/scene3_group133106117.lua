--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 25010202, pos = { x = -518.6, y = 231.5, z = 1266.3 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 117002, monster_id = 25030202, pos = { x = -519.6, y = 231.5, z = 1270.2 }, rot = { x = 0.0, y = 165.9, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 117003, monster_id = 25020201, pos = { x = -517.0, y = 233.6, z = 1277.5 }, rot = { x = 0.0, y = 235.9, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true }
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
		monsters = { 117001, 117002, 117003 },
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
--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225001, monster_id = 28020102, pos = { x = 108.5, y = 244.6, z = 129.4 }, rot = { x = 2.4, y = 358.1, z = 350.2 }, level = 19, drop_tag = "走兽" },
	{ config_id = 225002, monster_id = 28020102, pos = { x = 107.0, y = 244.8, z = 129.0 }, rot = { x = 4.1, y = 127.2, z = 6.4 }, level = 19, drop_tag = "走兽" },
	{ config_id = 225003, monster_id = 20010101, pos = { x = 96.0, y = 245.9, z = 123.3 }, rot = { x = 0.0, y = 88.2, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
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
		monsters = { 225001, 225002, 225003 },
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
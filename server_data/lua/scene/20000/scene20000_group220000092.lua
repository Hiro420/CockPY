--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 20011101, pos = { x = -198.1, y = 0.8, z = -138.0 }, rot = { x = 0.0, y = 53.9, z = 0.0 }, level = 1, affix = { 1024 }, isElite = true },
	{ config_id = 92002, monster_id = 20011001, pos = { x = -189.6, y = 0.8, z = -135.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008, 1019 }, isElite = true },
	{ config_id = 92003, monster_id = 20011001, pos = { x = -194.3, y = 0.8, z = -139.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008, 1019 }, isElite = true },
	{ config_id = 92004, monster_id = 20011001, pos = { x = -202.2, y = 0.8, z = -134.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008, 1019 }, isElite = true },
	{ config_id = 92005, monster_id = 20011001, pos = { x = -194.6, y = 0.8, z = -133.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008, 1019 }, isElite = true },
	{ config_id = 92006, monster_id = 20011001, pos = { x = -189.5, y = 0.8, z = -138.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008, 1019 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92007, gadget_id = 70300099, pos = { x = -193.3, y = 0.8, z = -136.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
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
	rand_suite = false,
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
		-- description = ,
		monsters = { 92001, 92002, 92003, 92004, 92005, 92006 },
		gadgets = { 92007 },
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
--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 25050201, pos = { x = -121.3, y = 0.8, z = -136.9 }, rot = { x = 0.0, y = 53.9, z = 0.0 }, level = 1, affix = { 1024 }, isElite = true, pose_id = 0 },
	{ config_id = 91002, monster_id = 25050101, pos = { x = -112.8, y = 0.8, z = -133.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1007, 1008, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 91003, monster_id = 25050101, pos = { x = -117.5, y = 0.8, z = -138.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1007, 1008, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 91004, monster_id = 25050101, pos = { x = -125.5, y = 0.8, z = -133.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1007, 1008, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 91005, monster_id = 25050101, pos = { x = -117.9, y = 0.8, z = -132.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1007, 1008, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 91006, monster_id = 25050101, pos = { x = -112.8, y = 0.8, z = -137.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1007, 1008, 1019 }, isElite = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91007, gadget_id = 70300099, pos = { x = -116.6, y = 0.8, z = -135.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
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
		monsters = { 91001, 91002, 91003, 91004, 91005, 91006 },
		gadgets = { 91007 },
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

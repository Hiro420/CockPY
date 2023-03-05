--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 566001, monster_id = 22010301, pos = { x = 1091.2, y = 200.2, z = -85.6 }, rot = { x = 0.0, y = 321.5, z = 0.0 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 1403 }, isElite = true },
	{ config_id = 566002, monster_id = 21010901, pos = { x = 1091.9, y = 200.5, z = -82.8 }, rot = { x = 0.0, y = 263.3, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true },
	{ config_id = 566003, monster_id = 21010201, pos = { x = 1087.4, y = 201.3, z = -80.2 }, rot = { x = 0.0, y = 179.8, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true },
	{ config_id = 566004, monster_id = 21010201, pos = { x = 1084.7, y = 201.3, z = -83.1 }, rot = { x = 0.0, y = 84.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true },
	{ config_id = 566005, monster_id = 21010901, pos = { x = 1088.0, y = 200.7, z = -86.5 }, rot = { x = 0.0, y = 339.4, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 566006, gadget_id = 70300107, pos = { x = 1087.4, y = 201.1, z = -82.7 }, rot = { x = 351.8, y = 325.0, z = 356.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 566007, gadget_id = 70220013, pos = { x = 1085.2, y = 200.9, z = -88.3 }, rot = { x = 7.2, y = 69.8, z = 346.3 }, level = 1 },
	{ config_id = 566008, gadget_id = 70220013, pos = { x = 1094.1, y = 200.6, z = -80.4 }, rot = { x = 348.6, y = 329.7, z = 1.5 }, level = 1 }
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
		-- description = suite_1,
		monsters = { 566001, 566002, 566003, 566004, 566005 },
		gadgets = { 566006, 566007, 566008 },
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

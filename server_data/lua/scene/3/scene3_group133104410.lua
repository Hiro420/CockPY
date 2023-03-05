--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410001, monster_id = 22010101, pos = { x = 496.9, y = 197.5, z = 298.8 }, rot = { x = 4.7, y = 164.4, z = 7.0 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 1403, 1408 }, isElite = true, pose_id = 9013 },
	{ config_id = 410002, monster_id = 21011001, pos = { x = 495.0, y = 197.9, z = 297.0 }, rot = { x = 15.1, y = 117.6, z = 6.8 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true },
	{ config_id = 410003, monster_id = 21010201, pos = { x = 501.0, y = 197.5, z = 295.2 }, rot = { x = 358.9, y = 263.5, z = 6.2 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true, pose_id = 9012 },
	{ config_id = 410004, monster_id = 21010201, pos = { x = 497.9, y = 197.1, z = 293.0 }, rot = { x = 352.2, y = 8.6, z = 357.9 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1403, 1408 }, isElite = true, pose_id = 9012 },
	{ config_id = 410005, monster_id = 21011001, pos = { x = 500.0, y = 197.5, z = 300.0 }, rot = { x = 13.2, y = 207.5, z = 348.3 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1408 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 410006, gadget_id = 70300107, pos = { x = 498.5, y = 197.4, z = 295.7 }, rot = { x = 353.5, y = 345.8, z = 359.8 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 410007, gadget_id = 70220013, pos = { x = 498.4, y = 197.6, z = 305.2 }, rot = { x = 353.0, y = 90.8, z = 352.0 }, level = 1 },
	{ config_id = 410008, gadget_id = 70220013, pos = { x = 501.0, y = 197.9, z = 304.6 }, rot = { x = 352.4, y = 351.7, z = 15.1 }, level = 1 }
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
		monsters = { 410001, 410002, 410003, 410004, 410005 },
		gadgets = { 410006, 410007, 410008 },
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

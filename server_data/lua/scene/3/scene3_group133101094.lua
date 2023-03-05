--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 22010101, pos = { x = 1582.5, y = 201.4, z = 1138.0 }, rot = { x = 0.0, y = 123.0, z = 0.0 }, level = 1, drop_tag = "深渊法师", affix = { 1401 }, isElite = true },
	{ config_id = 94002, monster_id = 21010601, pos = { x = 1590.6, y = 201.8, z = 1138.3 }, rot = { x = 0.0, y = 317.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1408 }, isElite = true, pose_id = 9014 },
	{ config_id = 94003, monster_id = 21010201, pos = { x = 1588.0, y = 201.4, z = 1133.5 }, rot = { x = 0.0, y = 300.2, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1408 }, isElite = true, pose_id = 9014 },
	{ config_id = 94004, monster_id = 21010201, pos = { x = 1584.3, y = 201.3, z = 1133.6 }, rot = { x = 0.0, y = 7.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1408 }, isElite = true, pose_id = 9014 },
	{ config_id = 94009, monster_id = 21011001, pos = { x = 1576.6, y = 201.6, z = 1132.9 }, rot = { x = 0.0, y = 61.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", affix = { 1408 }, isElite = true, pose_id = 32 },
	{ config_id = 94012, monster_id = 21030401, pos = { x = 1577.9, y = 202.6, z = 1142.6 }, rot = { x = 0.0, y = 121.5, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", affix = { 1401 }, isElite = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94006, gadget_id = 70300107, pos = { x = 1585.6, y = 201.1, z = 1137.1 }, rot = { x = 0.0, y = 28.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 94007, gadget_id = 70220013, pos = { x = 1578.6, y = 202.2, z = 1136.6 }, rot = { x = 350.8, y = 212.1, z = 10.4 }, level = 1 },
	{ config_id = 94008, gadget_id = 70220013, pos = { x = 1580.3, y = 201.4, z = 1131.8 }, rot = { x = 357.8, y = 34.2, z = 355.3 }, level = 1 }
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
		monsters = { 94001, 94002, 94003, 94004, 94009, 94012 },
		gadgets = { 94006, 94007, 94008 },
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

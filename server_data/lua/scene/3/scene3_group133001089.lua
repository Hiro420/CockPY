--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 415, monster_id = 21010901, pos = { x = 1228.9, y = 261.5, z = -1489.6 }, rot = { x = 0.0, y = 67.8, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, affix = { 1001, 1002 }, isElite = true, pose_id = 32 },
	{ config_id = 416, monster_id = 21011001, pos = { x = 1251.0, y = 261.5, z = -1446.8 }, rot = { x = 0.0, y = 166.5, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, affix = { 1001, 1002 }, isElite = true, pose_id = 32 },
	{ config_id = 417, monster_id = 21010501, pos = { x = 1255.6, y = 261.5, z = -1507.4 }, rot = { x = 0.0, y = 358.7, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", affix = { 1001, 1002 }, isElite = true, pose_id = 32 },
	{ config_id = 418, monster_id = 21011001, pos = { x = 1278.9, y = 261.5, z = -1479.9 }, rot = { x = 0.0, y = 279.8, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", affix = { 1001, 1002 }, isElite = true, pose_id = 32 },
	{ config_id = 421, monster_id = 21010201, pos = { x = 1253.2, y = 254.0, z = -1471.5 }, rot = { x = 0.0, y = 170.2, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 422, monster_id = 21010201, pos = { x = 1246.9, y = 254.2, z = -1474.8 }, rot = { x = 0.0, y = 170.7, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
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
	rand_suite = true
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
		monsters = { 415, 416, 417, 418, 421, 422 },
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

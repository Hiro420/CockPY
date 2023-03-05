--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 194, monster_id = 21010201, pos = { x = 897.1, y = 253.8, z = -253.2 }, rot = { x = 0.0, y = 250.7, z = 0.0 }, level = 25, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 195, monster_id = 21010201, pos = { x = 895.3, y = 253.7, z = -253.2 }, rot = { x = 0.0, y = 216.7, z = 0.0 }, level = 26, drop_tag = "丘丘人", pose_id = 9013 },
	{ config_id = 206, monster_id = 24010101, pos = { x = 894.2, y = 253.8, z = -254.3 }, rot = { x = 0.0, y = 30.7, z = 0.0 }, level = 25, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101 },
	{ config_id = 116001, monster_id = 28020102, pos = { x = 814.1, y = 263.5, z = -134.7 }, rot = { x = 0.0, y = 214.8, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 116002, monster_id = 28020102, pos = { x = 839.8, y = 270.0, z = -171.2 }, rot = { x = 0.0, y = 214.8, z = 0.0 }, level = 19, drop_tag = "走兽" }
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
		monsters = { 194, 195, 206, 116001, 116002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 206 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 194, 195, 206 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
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

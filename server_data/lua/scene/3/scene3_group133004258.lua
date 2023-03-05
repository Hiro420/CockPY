--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 673, monster_id = 28020504, pos = { x = 2238.2, y = 217.0, z = -873.5 }, rot = { x = 0.0, y = 61.8, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 674, monster_id = 28020504, pos = { x = 2238.7, y = 220.3, z = -873.2 }, rot = { x = 0.0, y = 10.5, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 675, monster_id = 28020506, pos = { x = 2285.6, y = 216.1, z = -914.1 }, rot = { x = 0.0, y = 277.6, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 676, monster_id = 28020504, pos = { x = 2305.4, y = 214.1, z = -933.2 }, rot = { x = 0.0, y = 260.8, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 677, monster_id = 28020503, pos = { x = 2323.1, y = 220.1, z = -876.9 }, rot = { x = 0.0, y = 302.8, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 678, monster_id = 28020506, pos = { x = 2314.4, y = 250.2, z = -693.2 }, rot = { x = 0.0, y = 179.1, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 745, monster_id = 28020504, pos = { x = 2204.5, y = 230.2, z = -787.4 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 746, monster_id = 28020504, pos = { x = 2352.3, y = 224.1, z = -831.4 }, rot = { x = 0.0, y = 119.1, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 747, monster_id = 28020504, pos = { x = 2228.4, y = 216.1, z = -899.5 }, rot = { x = 0.0, y = 91.6, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 748, monster_id = 28020506, pos = { x = 2186.2, y = 210.1, z = -879.0 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 749, monster_id = 28020506, pos = { x = 2234.6, y = 214.1, z = -901.9 }, rot = { x = 0.0, y = 265.6, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 750, monster_id = 28020506, pos = { x = 2291.2, y = 238.9, z = -842.6 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 751, monster_id = 28020506, pos = { x = 2304.2, y = 214.9, z = -918.6 }, rot = { x = 0.0, y = 251.2, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 752, monster_id = 28020504, pos = { x = 2254.8, y = 212.2, z = -941.8 }, rot = { x = 0.0, y = 347.4, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 753, monster_id = 28020504, pos = { x = 2292.3, y = 230.1, z = -843.4 }, rot = { x = 0.0, y = 176.6, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 13 }
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
		monsters = { 673, 674, 678, 745, 746 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 747, 748, 749, 750, 751 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 675, 676, 677, 752, 753 },
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

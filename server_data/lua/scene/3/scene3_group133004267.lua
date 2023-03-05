--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 754, monster_id = 28020402, pos = { x = 2305.9, y = 220.1, z = -857.2 }, rot = { x = 0.0, y = 263.9, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 755, monster_id = 28020401, pos = { x = 2251.2, y = 236.0, z = -740.7 }, rot = { x = 0.0, y = 81.7, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2 },
	{ config_id = 756, monster_id = 28020402, pos = { x = 2329.5, y = 260.0, z = -686.5 }, rot = { x = 0.0, y = 27.1, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 2 },
	{ config_id = 757, monster_id = 28020401, pos = { x = 2206.9, y = 210.1, z = -895.5 }, rot = { x = 0.0, y = 161.3, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 3 },
	{ config_id = 758, monster_id = 28020401, pos = { x = 2293.5, y = 214.1, z = -902.3 }, rot = { x = 0.0, y = 204.4, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 2 },
	{ config_id = 759, monster_id = 28020402, pos = { x = 2202.8, y = 230.2, z = -802.8 }, rot = { x = 0.0, y = 85.7, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 3 },
	{ config_id = 760, monster_id = 28020402, pos = { x = 2262.3, y = 216.1, z = -905.8 }, rot = { x = 0.0, y = 324.1, z = 0.0 }, level = 1, drop_tag = "走兽", pose_id = 3 }
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
		monsters = { 754, 755, 760 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 756, 757 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 758, 759, 760 },
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

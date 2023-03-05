--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 801001, monster_id = 28020402, pos = { x = -496.2, y = 210.0, z = 366.7 }, rot = { x = 0.0, y = 192.6, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 2 },
	{ config_id = 801002, monster_id = 28020504, pos = { x = -560.2, y = 223.3, z = 306.1 }, rot = { x = 0.0, y = 126.2, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 801003, monster_id = 28020502, pos = { x = -558.9, y = 223.3, z = 306.6 }, rot = { x = 0.0, y = 259.8, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 801004, monster_id = 28020404, pos = { x = -682.5, y = 213.7, z = 146.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 3 },
	{ config_id = 801005, monster_id = 28020505, pos = { x = -639.1, y = 228.1, z = 285.3 }, rot = { x = 0.0, y = 259.8, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 801006, monster_id = 28020505, pos = { x = -585.2, y = 258.8, z = 351.3 }, rot = { x = 0.0, y = 49.8, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 801007, monster_id = 28020403, pos = { x = -367.0, y = 209.1, z = 359.6 }, rot = { x = 0.0, y = 120.8, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 3 },
	{ config_id = 801008, monster_id = 28020403, pos = { x = -721.8, y = 223.1, z = 314.3 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true },
	{ config_id = 801009, monster_id = 28020506, pos = { x = -465.2, y = 202.5, z = 411.3 }, rot = { x = 0.0, y = 52.6, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 801010, monster_id = 28020501, pos = { x = -624.5, y = 226.7, z = 323.2 }, rot = { x = 0.0, y = 66.0, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 801011, monster_id = 28020504, pos = { x = -577.2, y = 226.4, z = 329.6 }, rot = { x = 0.0, y = 313.6, z = 0.0 }, level = 18, drop_tag = "走兽", pose_id = 13 },
	{ config_id = 801012, monster_id = 28020403, pos = { x = -720.3, y = 223.1, z = 309.0 }, rot = { x = 0.0, y = 138.9, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true },
	{ config_id = 801013, monster_id = 28020502, pos = { x = -707.1, y = 225.6, z = 287.4 }, rot = { x = 0.0, y = 319.4, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 13 },
	{ config_id = 801014, monster_id = 28020404, pos = { x = -683.5, y = 223.2, z = 278.2 }, rot = { x = 0.0, y = 107.2, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 3 },
	{ config_id = 801015, monster_id = 28020404, pos = { x = -682.5, y = 223.2, z = 276.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 3 }
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
		monsters = { 801001, 801002, 801003, 801004, 801005, 801006, 801007, 801008, 801009, 801010, 801011, 801012, 801013, 801014, 801015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 782, monster_id = 28030401, pos = { x = 2044.9, y = 197.0, z = -1183.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 783, monster_id = 28030401, pos = { x = 2043.9, y = 197.3, z = -1185.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 784, monster_id = 28030401, pos = { x = 2044.0, y = 196.9, z = -1182.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 785, monster_id = 28030401, pos = { x = 2042.7, y = 197.4, z = -1186.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 786, monster_id = 28030401, pos = { x = 2042.9, y = 197.2, z = -1184.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 831, monster_id = 28030401, pos = { x = 2009.1, y = 221.3, z = -1553.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 832, monster_id = 28030401, pos = { x = 2009.9, y = 221.3, z = -1555.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 833, monster_id = 28030401, pos = { x = 2008.2, y = 221.2, z = -1554.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 834, monster_id = 28030401, pos = { x = 2009.1, y = 221.3, z = -1552.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 835, monster_id = 28030401, pos = { x = 2009.5, y = 221.2, z = -1556.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 836, monster_id = 28030401, pos = { x = 2007.1, y = 221.2, z = -1539.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 837, monster_id = 28030401, pos = { x = 2006.2, y = 221.2, z = -1540.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 838, monster_id = 28030401, pos = { x = 1993.8, y = 221.1, z = -1580.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 839, monster_id = 28030401, pos = { x = 1999.4, y = 221.6, z = -1573.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 840, monster_id = 28030401, pos = { x = 1996.5, y = 221.4, z = -1573.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 841, monster_id = 28030401, pos = { x = 2006.5, y = 221.3, z = -1574.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 783, 785, 831, 833, 835, 837, 839, 841 },
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

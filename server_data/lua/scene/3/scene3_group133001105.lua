--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 515, monster_id = 21010301, pos = { x = 1262.4, y = 257.1, z = -1422.7 }, rot = { x = 0.0, y = 267.5, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 629, monster_id = 21010201, pos = { x = 1258.9, y = 256.8, z = -1423.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1771, gadget_id = 70211103, pos = { x = 1258.6, y = 258.6, z = -1412.9 }, rot = { x = 0.0, y = 187.4, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, persistent = true },
	{ config_id = 1877, gadget_id = 70220005, pos = { x = 1261.7, y = 258.6, z = -1419.3 }, rot = { x = 0.0, y = 220.3, z = 0.0 }, level = 15 },
	{ config_id = 1878, gadget_id = 70220005, pos = { x = 1262.9, y = 257.3, z = -1420.3 }, rot = { x = 0.0, y = 116.3, z = 0.0 }, level = 15 },
	{ config_id = 1879, gadget_id = 70310001, pos = { x = 1258.0, y = 256.5, z = -1425.3 }, rot = { x = 0.0, y = 239.4, z = 0.0 }, level = 15 }
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
	suite = 2,
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
		monsters = { 515, 629 },
		gadgets = { 1771, 1877, 1878, 1879 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

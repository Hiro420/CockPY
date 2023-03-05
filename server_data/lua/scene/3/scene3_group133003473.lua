--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1620, monster_id = 21020201, pos = { x = 2370.1, y = 253.6, z = -1371.1 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 5, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 1621, monster_id = 21010601, pos = { x = 2366.7, y = 252.1, z = -1374.7 }, rot = { x = 0.0, y = 344.3, z = 0.0 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1622, monster_id = 21010601, pos = { x = 2363.6, y = 251.3, z = -1372.8 }, rot = { x = 0.0, y = 64.7, z = 0.0 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1623, monster_id = 21010601, pos = { x = 2365.1, y = 252.1, z = -1369.5 }, rot = { x = 0.0, y = 168.9, z = 0.0 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1624, monster_id = 21010601, pos = { x = 2374.6, y = 254.8, z = -1357.5 }, rot = { x = 0.0, y = 335.8, z = 0.0 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4248, gadget_id = 70220013, pos = { x = 2372.6, y = 254.4, z = -1370.6 }, rot = { x = 0.0, y = 182.0, z = 0.0 }, level = 5 },
	{ config_id = 4249, gadget_id = 70220013, pos = { x = 2366.4, y = 251.6, z = -1377.3 }, rot = { x = 0.0, y = 273.1, z = 0.0 }, level = 5 },
	{ config_id = 4250, gadget_id = 70310006, pos = { x = 2366.6, y = 252.4, z = -1372.3 }, rot = { x = 0.0, y = 204.7, z = 0.0 }, level = 5 },
	{ config_id = 4251, gadget_id = 70220014, pos = { x = 2373.3, y = 254.4, z = -1358.4 }, rot = { x = 0.0, y = 336.0, z = 0.0 }, level = 5 },
	{ config_id = 4252, gadget_id = 70220014, pos = { x = 2372.3, y = 254.3, z = -1368.9 }, rot = { x = 0.0, y = 91.4, z = 0.0 }, level = 5 },
	{ config_id = 4253, gadget_id = 70220014, pos = { x = 2364.9, y = 251.4, z = -1376.6 }, rot = { x = 0.0, y = 157.2, z = 0.0 }, level = 5 },
	{ config_id = 4254, gadget_id = 70220014, pos = { x = 2362.0, y = 250.4, z = -1375.1 }, rot = { x = 0.0, y = 219.8, z = 0.0 }, level = 5 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1620, 1621, 1622, 1623, 1624 },
		gadgets = { 4248, 4249, 4250, 4251, 4252, 4253, 4254 },
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

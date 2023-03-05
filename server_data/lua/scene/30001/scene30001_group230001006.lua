--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12, gadget_id = 70220003, pos = { x = 53.9, y = -0.5, z = -132.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 13, gadget_id = 70220003, pos = { x = 55.7, y = -0.5, z = -132.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14, gadget_id = 70220003, pos = { x = 58.4, y = -0.5, z = -141.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15, gadget_id = 70220003, pos = { x = 56.3, y = -0.5, z = -141.1 }, rot = { x = 0.0, y = 352.0, z = 0.0 }, level = 1 },
	{ config_id = 16, gadget_id = 70220003, pos = { x = 53.8, y = -0.5, z = -150.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 17, gadget_id = 70220003, pos = { x = 56.1, y = -0.5, z = -151.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18, gadget_id = 70220013, pos = { x = 59.6, y = -0.5, z = -132.7 }, rot = { x = 0.0, y = 243.4, z = 0.0 }, level = 1 },
	{ config_id = 19, gadget_id = 70220013, pos = { x = 53.4, y = -0.5, z = -141.1 }, rot = { x = 0.0, y = 116.5, z = 0.0 }, level = 1 },
	{ config_id = 20, gadget_id = 70220013, pos = { x = 59.6, y = -0.5, z = -151.4 }, rot = { x = 0.0, y = 92.1, z = 0.0 }, level = 1 },
	{ config_id = 21, gadget_id = 70211001, pos = { x = 44.2, y = -0.5, z = -129.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德" },
	{ config_id = 108, gadget_id = 70320001, pos = { x = 50.1, y = -0.5, z = -136.2 }, rot = { x = 0.0, y = 120.9, z = 0.0 }, level = 1 },
	{ config_id = 109, gadget_id = 70220013, pos = { x = 52.8, y = -0.6, z = -132.9 }, rot = { x = 0.0, y = 196.5, z = 0.0 }, level = 1 },
	{ config_id = 110, gadget_id = 70220013, pos = { x = 52.7, y = -0.5, z = -151.0 }, rot = { x = 0.0, y = 198.1, z = 0.0 }, level = 1 },
	{ config_id = 111, gadget_id = 70220013, pos = { x = 59.9, y = -0.5, z = -141.7 }, rot = { x = 0.0, y = 291.5, z = 0.0 }, level = 1 },
	{ config_id = 112, gadget_id = 70220003, pos = { x = 59.1, y = -0.5, z = -133.3 }, rot = { x = 0.0, y = 0.1, z = 0.0 }, level = 1 },
	{ config_id = 113, gadget_id = 70220003, pos = { x = 56.4, y = -0.5, z = -133.3 }, rot = { x = 0.0, y = 3.5, z = 0.0 }, level = 1 },
	{ config_id = 114, gadget_id = 70220003, pos = { x = 54.3, y = -0.5, z = -142.0 }, rot = { x = 0.0, y = 2.7, z = 0.0 }, level = 1 },
	{ config_id = 115, gadget_id = 70220003, pos = { x = 55.8, y = -0.5, z = -141.0 }, rot = { x = 0.0, y = 3.1, z = 0.0 }, level = 1 },
	{ config_id = 116, gadget_id = 70220003, pos = { x = 56.1, y = -0.5, z = -150.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 117, gadget_id = 70220003, pos = { x = 59.5, y = 0.1, z = -150.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
	rand_suite = true,
	npcs = { }
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
		gadgets = { 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 108 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 21, 109, 110, 111, 112, 113, 114, 115, 116, 117 },
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

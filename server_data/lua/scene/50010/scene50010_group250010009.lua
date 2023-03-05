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
	{ config_id = 50, gadget_id = 70900033, pos = { x = 487.0, y = 3.4, z = -33.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 51, gadget_id = 70900033, pos = { x = 487.0, y = 3.4, z = -36.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 52, gadget_id = 70900033, pos = { x = 487.0, y = 3.4, z = -39.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 54, gadget_id = 70900033, pos = { x = 487.0, y = 3.4, z = -45.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 55, gadget_id = 70900033, pos = { x = 490.0, y = 3.4, z = -33.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 57, gadget_id = 70900033, pos = { x = 490.0, y = 3.4, z = -39.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 58, gadget_id = 70900033, pos = { x = 490.0, y = 3.4, z = -42.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 59, gadget_id = 70900033, pos = { x = 490.0, y = 3.4, z = -45.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 60, gadget_id = 70900033, pos = { x = 493.1, y = 3.4, z = -33.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 61, gadget_id = 70900033, pos = { x = 493.1, y = 3.4, z = -36.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62, gadget_id = 70900033, pos = { x = 493.1, y = 3.4, z = -39.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 63, gadget_id = 70900033, pos = { x = 493.1, y = 3.4, z = -42.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 64, gadget_id = 70900033, pos = { x = 493.1, y = 3.4, z = -45.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 67, gadget_id = 70900033, pos = { x = 496.2, y = 3.4, z = -39.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 68, gadget_id = 70900033, pos = { x = 496.2, y = 3.4, z = -42.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 69, gadget_id = 70900033, pos = { x = 496.2, y = 3.4, z = -45.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 70, gadget_id = 70900033, pos = { x = 499.3, y = 3.4, z = -33.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 71, gadget_id = 70900033, pos = { x = 499.3, y = 3.4, z = -36.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 72, gadget_id = 70900033, pos = { x = 499.3, y = 3.4, z = -39.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 73, gadget_id = 70900033, pos = { x = 499.3, y = 3.4, z = -42.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 74, gadget_id = 70900033, pos = { x = 499.3, y = 3.4, z = -45.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_24", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "" }
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
	rand_suite = false,
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
		gadgets = { 50, 51, 52, 54, 55, 57, 58, 59, 60, 61, 62, 63, 64, 67, 68, 69, 70, 71, 72, 73, 74 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_24" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作

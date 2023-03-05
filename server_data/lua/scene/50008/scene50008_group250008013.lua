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
	{ config_id = 59, gadget_id = 70900289, pos = { x = 128.0, y = 5.2, z = -648.7 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1 },
	{ config_id = 60, gadget_id = 70900289, pos = { x = 121.7, y = 13.1, z = -649.6 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1 },
	{ config_id = 61, gadget_id = 70900289, pos = { x = 123.3, y = 4.0, z = -637.1 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1 },
	{ config_id = 62, gadget_id = 70900289, pos = { x = 137.4, y = 10.8, z = -630.4 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1 },
	{ config_id = 63, gadget_id = 70900289, pos = { x = 130.2, y = 11.7, z = -632.2 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1 },
	{ config_id = 64, gadget_id = 70900289, pos = { x = 129.6, y = 4.9, z = -629.0 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1 },
	{ config_id = 65, gadget_id = 70900293, pos = { x = 141.9, y = 4.0, z = -658.2 }, rot = { x = 0.0, y = 0.0, z = 90.2 }, level = 1 },
	{ config_id = 66, gadget_id = 70900293, pos = { x = 132.5, y = 4.0, z = -640.4 }, rot = { x = 0.0, y = 0.0, z = 90.2 }, level = 1 },
	{ config_id = 67, gadget_id = 70900293, pos = { x = 115.6, y = 8.1, z = -632.9 }, rot = { x = 0.0, y = 0.0, z = 90.2 }, level = 1 },
	{ config_id = 68, gadget_id = 70900293, pos = { x = 124.8, y = 15.5, z = -651.7 }, rot = { x = 0.0, y = 0.0, z = 90.2 }, level = 1 },
	{ config_id = 69, gadget_id = 70900293, pos = { x = 122.0, y = 11.7, z = -648.0 }, rot = { x = 0.0, y = 0.0, z = 90.2 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_32", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementRune_Fire", condition = "", action = "", trigger_count = 0 }
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
		gadgets = { 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_32" },
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

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
	{ config_id = 141, gadget_id = 70900221, pos = { x = 105.3, y = 0.5, z = 51.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 142, gadget_id = 70900223, pos = { x = 111.3, y = 0.5, z = 51.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 143, gadget_id = 71000004, pos = { x = 114.1, y = 0.5, z = 48.3 }, rot = { x = 0.0, y = 301.5, z = 0.0 }, level = 1 },
	{ config_id = 148, gadget_id = 70500000, pos = { x = 99.1, y = 0.5, z = 57.4 }, rot = { x = 0.0, y = 104.3, z = 0.0 }, level = 1, point_type = 20001001 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_76", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Un_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_76" }
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
		gadgets = { 141, 142, 148 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_76" },
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
function action_EVENT_CLIENT_EXECUTE_76(context, evt)
	-- 创建id为143的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143 }) then
	  return -1
	end
	
	return 0
end

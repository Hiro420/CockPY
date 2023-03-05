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
	{ config_id = 34001, gadget_id = 70380003, pos = { x = 83.9, y = -1.3, z = 364.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 34002, gadget_id = 70900007, pos = { x = 83.9, y = 0.3, z = 364.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 34003, gadget_id = 70380003, pos = { x = 81.2, y = 14.3, z = 445.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 34005, gadget_id = 70350004, pos = { x = 83.5, y = 5.8, z = 360.5 }, rot = { x = 81.2, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 34006, gadget_id = 70350004, pos = { x = 77.4, y = 5.8, z = 360.5 }, rot = { x = 81.2, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 34007, gadget_id = 70350004, pos = { x = 89.7, y = 5.8, z = 360.4 }, rot = { x = 81.2, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_34004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34004", action = "action_EVENT_GADGET_STATE_CHANGE_34004" }
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
		gadgets = { 34001, 34002, 34003, 34005, 34006, 34007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34004(context, evt)
	if 34002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34003) then
	  return -1
	end
	
	return 0
end

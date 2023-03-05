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
	{ config_id = 644, gadget_id = 70900242, pos = { x = -150.0, y = -37.0, z = -618.0 }, rot = { x = 0.0, y = 267.4, z = 0.0 }, level = 1, route_id = 50004020 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_129", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129", action = "action_EVENT_GADGET_STATE_CHANGE_129", trigger_count = 0 },
	{ name = "PLATFORM_REACH_POINT_130", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_130", trigger_count = 0 }
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
		gadgets = { 644 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_129", "PLATFORM_REACH_POINT_130" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_129(context, evt)
	if 644 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_129(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 644, 50004020) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_130(context, evt)
	-- 将configid为 644 的物件更改为状态 GadgetState.Default
	if 644 == evt.param1 then
		if 50004020 == evt.param2 then
			if 1 == evt.param3 then
	  		ScriptLib.SetGadgetStateByConfigId(context, 644, GadgetState.Default)
			ScriptLib.SetPlatformRouteId(context, 644, 50004021)
			ScriptLib.StopPlatform(context, 644)
			end
		end
	end
	
	return 0
end

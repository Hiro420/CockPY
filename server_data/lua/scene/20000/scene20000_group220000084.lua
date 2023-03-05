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
	{ config_id = 605, gadget_id = 70220032, pos = { x = 134.1, y = -12.0, z = 637.6 }, rot = { x = 0.0, y = 94.1, z = 0.0 }, level = 1 },
	{ config_id = 606, gadget_id = 70380003, pos = { x = 123.9, y = -13.3, z = 647.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000022, start_route = false },
	{ config_id = 607, gadget_id = 70310001, pos = { x = 127.4, y = -12.0, z = 637.2 }, rot = { x = 0.0, y = 59.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_165", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165", action = "action_EVENT_GADGET_STATE_CHANGE_165", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_166", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166", action = "action_EVENT_GADGET_STATE_CHANGE_166", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_167", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167", action = "action_EVENT_GADGET_STATE_CHANGE_167", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_168", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168", action = "action_EVENT_GADGET_STATE_CHANGE_168", trigger_count = 0 }
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
		gadgets = { 605, 606, 607 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_165", "GADGET_STATE_CHANGE_166", "GADGET_STATE_CHANGE_167", "GADGET_STATE_CHANGE_168" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165(context, evt)
	if 605 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165(context, evt)
	-- 将configid为 607 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 607, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166(context, evt)
	if 605 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166(context, evt)
	-- 将configid为 607 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 607, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167(context, evt)
	if 605 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 606) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168(context, evt)
	if 605 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 606) then
	  return -1
	end
	
	return 0
end

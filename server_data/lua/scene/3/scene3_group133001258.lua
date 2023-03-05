-- Trigger变量
local defs = {
	gadget_id_1 = 2931
}


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
	{ config_id = 2928, gadget_id = 70900008, pos = { x = 1706.6, y = 266.0, z = -1343.3 }, rot = { x = 0.0, y = 330.8, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2929, gadget_id = 70900008, pos = { x = 1716.9, y = 265.6, z = -1338.5 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2930, gadget_id = 70900008, pos = { x = 1709.7, y = 265.5, z = -1336.3 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2931, gadget_id = 70211111, pos = { x = 1711.8, y = 265.7, z = -1340.8 }, rot = { x = 0.0, y = 330.5, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 352, shape = RegionShape.SPHERE, radius = 10.3, pos = { x = 1708.5, y = 265.6, z = -1336.5 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_346", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_346", action = "action_EVENT_GADGET_STATE_CHANGE_346", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_347", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_347", action = "action_EVENT_GADGET_STATE_CHANGE_347", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_348", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348", action = "action_EVENT_GADGET_STATE_CHANGE_348", trigger_count = 0 },
	{ name = "TIMER_EVENT_349", event = EventType.EVENT_TIMER_EVENT, source = "stop1711", condition = "condition_EVENT_TIMER_EVENT_349", action = "action_EVENT_TIMER_EVENT_349", trigger_count = 0 },
	{ name = "TIMER_EVENT_350", event = EventType.EVENT_TIMER_EVENT, source = "stop1712", condition = "condition_EVENT_TIMER_EVENT_350", action = "action_EVENT_TIMER_EVENT_350", trigger_count = 0 },
	{ name = "TIMER_EVENT_351", event = EventType.EVENT_TIMER_EVENT, source = "stop1713", condition = "condition_EVENT_TIMER_EVENT_351", action = "action_EVENT_TIMER_EVENT_351", trigger_count = 0 },
	{ name = "ENTER_REGION_352", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_352", action = "" },
	{ name = "GADGET_CREATE_435", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_435", action = "", tlog_tag = "小平原_石碑解谜_丽莎门前_结束" }
}

-- 变量
variables = {
	{ name = "t1711", value = 0, no_refresh = true },
	{ name = "t1712", value = 0, no_refresh = true },
	{ name = "t1713", value = 0, no_refresh = true },
	{ name = "isoff", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 2928, 2929, 2930 },
		regions = { 352 },
		triggers = { "GADGET_STATE_CHANGE_346", "GADGET_STATE_CHANGE_347", "GADGET_STATE_CHANGE_348", "TIMER_EVENT_349", "TIMER_EVENT_350", "TIMER_EVENT_351", "ENTER_REGION_352", "GADGET_CREATE_435" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346(context, evt)
	if 2928 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346(context, evt)
	-- 将本组内变量名为 "t1711" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1711", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001258, "stop1711", 10) then
		  return -1
		end
		end
		
		if ScriptLib.GetGroupVariableValue(context, "t1711") + ScriptLib.GetGroupVariableValue(context, "t1712") + ScriptLib.GetGroupVariableValue(context, "t1713") == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
		  return -1
		end
		
		end
		
		end
		
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_347(context, evt)
	if 2929 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_347(context, evt)
	-- 将本组内变量名为 "t1712" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1712", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001258, "stop1712", 10) then
		  return -1
		end
		end
		
		if ScriptLib.GetGroupVariableValue(context, "t1711") + ScriptLib.GetGroupVariableValue(context, "t1712") + ScriptLib.GetGroupVariableValue(context, "t1713") == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
		  return -1
		end
		
		end
		
		end
		
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348(context, evt)
	if 2930 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_348(context, evt)
	-- 将本组内变量名为 "t1712" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1713", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001258, "stop1713", 10) then
		  return -1
		end
		end
		
		if ScriptLib.GetGroupVariableValue(context, "t1711") + ScriptLib.GetGroupVariableValue(context, "t1712") + ScriptLib.GetGroupVariableValue(context, "t1713") == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
		  return -1
		end
		
		end
		
		end
		
		
		return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_349(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_349(context, evt)
	-- 将configid为 2928 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2928, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "t1711" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1711", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_350(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_350(context, evt)
	-- 将configid为 2929 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2929, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "t1712" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1712", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_351(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_351(context, evt)
	-- 将configid为 2930 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2930, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "t1713" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1713", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_352(context, evt)
	if evt.param1 ~= 352 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_CREATE_435(context, evt)
	if 2931 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

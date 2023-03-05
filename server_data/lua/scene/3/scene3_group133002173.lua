--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 691, monster_id = 20010801, pos = { x = 1739.7, y = 271.0, z = -932.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 692, monster_id = 20010801, pos = { x = 1741.6, y = 271.4, z = -927.3 }, rot = { x = 0.0, y = 259.4, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 693, monster_id = 20010801, pos = { x = 1734.9, y = 270.6, z = -930.0 }, rot = { x = 0.0, y = 123.6, z = 0.0 }, level = 13, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1502, gadget_id = 70900009, pos = { x = 1737.4, y = 271.4, z = -920.5 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 10, persistent = true },
	{ config_id = 1503, gadget_id = 70900009, pos = { x = 1745.7, y = 271.7, z = -929.1 }, rot = { x = 0.0, y = 151.2, z = 0.0 }, level = 10, persistent = true },
	{ config_id = 1504, gadget_id = 70900009, pos = { x = 1748.2, y = 272.4, z = -918.1 }, rot = { x = 0.0, y = 223.7, z = 0.0 }, level = 10, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_186", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_186", action = "action_EVENT_GADGET_STATE_CHANGE_186", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_187", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187", action = "action_EVENT_GADGET_STATE_CHANGE_187", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_188", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_188", action = "action_EVENT_GADGET_STATE_CHANGE_188", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_189", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189", action = "action_EVENT_GADGET_STATE_CHANGE_189", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_190", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190", action = "action_EVENT_GADGET_STATE_CHANGE_190", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_191", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191", action = "action_EVENT_GADGET_STATE_CHANGE_191", trigger_count = 0 },
	{ name = "TIMER_EVENT_192", event = EventType.EVENT_TIMER_EVENT, source = "stop1385", condition = "condition_EVENT_TIMER_EVENT_192", action = "action_EVENT_TIMER_EVENT_192", trigger_count = 0 },
	{ name = "TIMER_EVENT_193", event = EventType.EVENT_TIMER_EVENT, source = "stop1386", condition = "condition_EVENT_TIMER_EVENT_193", action = "action_EVENT_TIMER_EVENT_193", trigger_count = 0 },
	{ name = "TIMER_EVENT_194", event = EventType.EVENT_TIMER_EVENT, source = "stop1387", condition = "condition_EVENT_TIMER_EVENT_194", action = "action_EVENT_TIMER_EVENT_194", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "t1386", value = 0, no_refresh = true },
	{ name = "t1385", value = 0, no_refresh = true },
	{ name = "t1387", value = 0, no_refresh = true },
	{ name = "isoff", value = 0, no_refresh = true }
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
		monsters = { 691, 692, 693 },
		gadgets = { 1502, 1503, 1504 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_186", "GADGET_STATE_CHANGE_187", "GADGET_STATE_CHANGE_188", "GADGET_STATE_CHANGE_189", "GADGET_STATE_CHANGE_190", "GADGET_STATE_CHANGE_191", "TIMER_EVENT_192", "TIMER_EVENT_193", "TIMER_EVENT_194" },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_186(context, evt)
	if 1502 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_186(context, evt)
	-- 将本组内变量名为 "t1385" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1385", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_187(context, evt)
	if 1503 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187(context, evt)
	-- 将本组内变量名为 "t1386" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1386", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_188(context, evt)
	if 1504 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_188(context, evt)
	-- 将本组内变量名为 "t1387" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1387", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_189(context, evt)
	if 1502 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189(context, evt)
	-- 将本组内变量名为 "t1385" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1385", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002173, "stop1385", 8) then
		  return -1
		end
		end
		
		if ScriptLib.GetGroupVariableValue(context, "t1385") + ScriptLib.GetGroupVariableValue(context, "t1386") + ScriptLib.GetGroupVariableValue(context, "t1387") == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002182, suite =2 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_190(context, evt)
	if 1503 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190(context, evt)
	-- 将本组内变量名为 "t1386" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1386", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002173, "stop1386", 8) then
		  return -1
		end
		end
		
		if ScriptLib.GetGroupVariableValue(context, "t1385") + ScriptLib.GetGroupVariableValue(context, "t1386") + ScriptLib.GetGroupVariableValue(context, "t1387") == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002182, suite = 2 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_191(context, evt)
	if 1504 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191(context, evt)
	-- 将本组内变量名为 "t1387" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t1387", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002173, "stop1387", 8) then
		  return -1
		end
		end
		
		if ScriptLib.GetGroupVariableValue(context, "t1385") + ScriptLib.GetGroupVariableValue(context, "t1386") + ScriptLib.GetGroupVariableValue(context, "t1387") == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002182, suite = 2 }) then
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
function condition_EVENT_TIMER_EVENT_192(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_192(context, evt)
	-- 将configid为 1502 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1502, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_193(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_193(context, evt)
	-- 将configid为 1503 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1503, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_194(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_194(context, evt)
	-- 将configid为 1504 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1504, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

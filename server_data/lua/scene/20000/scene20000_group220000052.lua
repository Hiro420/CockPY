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
	{ config_id = 268, gadget_id = 70900236, pos = { x = -56.1, y = 16.3, z = 286.5 }, rot = { x = 0.0, y = 86.9, z = 0.0 }, level = 1 },
	{ config_id = 327, gadget_id = 70900015, pos = { x = 44.7, y = -0.3, z = 280.9 }, rot = { x = 0.0, y = 359.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_84", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_84", action = "action_EVENT_GADGET_STATE_CHANGE_84", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_85", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_87", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87", action = "action_EVENT_GADGET_STATE_CHANGE_87", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false },
	{ name = "ison", value = 0, no_refresh = false }
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
		gadgets = { 268, 327 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_84", "CLIENT_EXECUTE_85", "GADGET_STATE_CHANGE_87" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_84(context, evt)
	if 268 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_84(context, evt)
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000058, suite = 2 }) then
			return -1
		end
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then 
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_87(context, evt)
	if 268 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220000058, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
			return -1
		end
	
		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 0) then 
	return -1
	end
	
		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then 
	return -1
	end
	
	
	return 0
end

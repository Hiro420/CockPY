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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_318006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_318006", action = "action_EVENT_GATHER_318006" },
	{ name = "GATHER_318007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_318007", action = "action_EVENT_GATHER_318007" },
	{ name = "GATHER_318008", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_318008", action = "action_EVENT_GATHER_318008" },
	{ name = "GATHER_318009", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_318009", action = "action_EVENT_GATHER_318009" },
	{ name = "VARIABLE_CHANGE_318010", event = EventType.EVENT_VARIABLE_CHANGE, source = "None", condition = "condition_EVENT_VARIABLE_CHANGE_318010", action = "action_EVENT_VARIABLE_CHANGE_318010" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "GATHER_318006", "GATHER_318007", "GATHER_318008", "GATHER_318009", "VARIABLE_CHANGE_318010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_318006(context, evt)
	if 318001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_318006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_318007(context, evt)
	if 318002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_318007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_318008(context, evt)
	if 318003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_318008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_318009(context, evt)
	if 318004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_318009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_318010(context, evt)
	-- 判断变量"None"为4
	if ScriptLib.GetGroupVariableValue(context, "None") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_318010(context, evt)
	-- 创建id为318005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 318005 }) then
	  return -1
	end
	
	return 0
end

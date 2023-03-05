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
	{ config_id = 369001, gadget_id = 70310011, pos = { x = 1554.8, y = 214.1, z = 238.4 }, rot = { x = 359.8, y = 216.8, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 369002, gadget_id = 70310011, pos = { x = 1558.4, y = 213.9, z = 229.9 }, rot = { x = 359.3, y = 217.2, z = 359.3 }, level = 1, persistent = true },
	{ config_id = 369003, gadget_id = 70310011, pos = { x = 1550.4, y = 213.9, z = 229.2 }, rot = { x = 359.2, y = 216.8, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 369011, gadget_id = 70211111, pos = { x = 1554.8, y = 212.7, z = 229.6 }, rot = { x = 1.7, y = 337.9, z = 357.1 }, level = 1, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_369004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369004", action = "action_EVENT_GADGET_STATE_CHANGE_369004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_369005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369005", action = "action_EVENT_GADGET_STATE_CHANGE_369005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_369006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369006", action = "action_EVENT_GADGET_STATE_CHANGE_369006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_369007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369007", action = "action_EVENT_GADGET_STATE_CHANGE_369007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_369008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369008", action = "action_EVENT_GADGET_STATE_CHANGE_369008", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_369009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369009", action = "action_EVENT_GADGET_STATE_CHANGE_369009", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_369010", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_369010", action = "action_EVENT_VARIABLE_CHANGE_369010" }
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
		gadgets = { 369001, 369002, 369003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_369004", "GADGET_STATE_CHANGE_369005", "GADGET_STATE_CHANGE_369006", "GADGET_STATE_CHANGE_369007", "GADGET_STATE_CHANGE_369008", "GADGET_STATE_CHANGE_369009", "VARIABLE_CHANGE_369010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369004(context, evt)
	if 369002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369005(context, evt)
	if 369002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369006(context, evt)
	if 369001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369007(context, evt)
	if 369001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369008(context, evt)
	if 369003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369009(context, evt)
	if 369003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_369010(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_369010(context, evt)
	-- 创建id为369011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 369011 }) then
	  return -1
	end
	
	return 0
end

-- Trigger变量
local defs = {
	gadget_id = 235004
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
	{ config_id = 235001, gadget_id = 70360005, pos = { x = 420.7, y = 199.5, z = -168.7 }, rot = { x = 0.0, y = 134.5, z = 0.0 }, level = 1 },
	{ config_id = 235003, gadget_id = 70360005, pos = { x = 427.5, y = 199.5, z = -161.7 }, rot = { x = 0.0, y = 317.4, z = 0.0 }, level = 1 },
	{ config_id = 235004, gadget_id = 70211111, pos = { x = 423.8, y = 199.5, z = -165.8 }, rot = { x = 0.0, y = 50.1, z = 0.0 }, level = 1, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_235002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235002", action = "action_EVENT_GADGET_STATE_CHANGE_235002", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_235005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235005", action = "action_EVENT_GADGET_STATE_CHANGE_235005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_235006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235006", action = "action_EVENT_GADGET_STATE_CHANGE_235006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_235007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235007", action = "action_EVENT_GADGET_STATE_CHANGE_235007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_235008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_235008", action = "action_EVENT_VARIABLE_CHANGE_235008" }
}

-- 变量
variables = {
	{ name = "on", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 235001, 235003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235002", "GADGET_STATE_CHANGE_235005", "GADGET_STATE_CHANGE_235006", "GADGET_STATE_CHANGE_235007", "VARIABLE_CHANGE_235008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235002(context, evt)
	if 235001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235002(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235005(context, evt)
	if 235003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235005(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235006(context, evt)
	-- 检测config_id为235001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 235001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235006(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235007(context, evt)
	-- 检测config_id为235003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 235003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235007(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_235008(context, evt)
	-- 判断变量"on"为2
	if ScriptLib.GetGroupVariableValue(context, "on") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_235008(context, evt)
	-- 创建id为235004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 235004 }) then
	  return -1
	end
	
	return 0
end

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
	{ config_id = 222001, gadget_id = 70310002, pos = { x = 968.8, y = 210.3, z = 320.9 }, rot = { x = 0.0, y = 137.7, z = 0.0 }, level = 16 },
	{ config_id = 222002, gadget_id = 70310002, pos = { x = 975.4, y = 210.3, z = 313.5 }, rot = { x = 0.0, y = 317.9, z = 0.0 }, level = 16 },
	{ config_id = 222003, gadget_id = 70310002, pos = { x = 965.1, y = 210.3, z = 317.5 }, rot = { x = 0.0, y = 135.5, z = 0.0 }, level = 16 },
	{ config_id = 222004, gadget_id = 70310002, pos = { x = 971.7, y = 210.3, z = 310.2 }, rot = { x = 0.0, y = 322.3, z = 0.0 }, level = 16 },
	{ config_id = 222005, gadget_id = 70211101, pos = { x = 969.8, y = 210.2, z = 315.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_222006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222006", action = "action_EVENT_GADGET_STATE_CHANGE_222006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222007", action = "action_EVENT_GADGET_STATE_CHANGE_222007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222008", action = "action_EVENT_GADGET_STATE_CHANGE_222008", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222009", action = "action_EVENT_GADGET_STATE_CHANGE_222009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222010", action = "action_EVENT_GADGET_STATE_CHANGE_222010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222011", action = "action_EVENT_GADGET_STATE_CHANGE_222011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222012", action = "action_EVENT_GADGET_STATE_CHANGE_222012", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_222013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222013", action = "action_EVENT_GADGET_STATE_CHANGE_222013", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_222014", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_222014", action = "action_EVENT_VARIABLE_CHANGE_222014" }
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
		gadgets = { 222001, 222002, 222003, 222004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_222006", "GADGET_STATE_CHANGE_222007", "GADGET_STATE_CHANGE_222008", "GADGET_STATE_CHANGE_222009", "GADGET_STATE_CHANGE_222010", "GADGET_STATE_CHANGE_222011", "GADGET_STATE_CHANGE_222012", "GADGET_STATE_CHANGE_222013", "VARIABLE_CHANGE_222014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222006(context, evt)
	if 222001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222007(context, evt)
	if 222002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222008(context, evt)
	if 222003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222009(context, evt)
	if 222004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222010(context, evt)
	if 222004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222010(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222011(context, evt)
	if 222003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222012(context, evt)
	if 222002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222012(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222013(context, evt)
	if 222001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222013(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_222014(context, evt)
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_222014(context, evt)
	-- 创建id为222005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222005 }) then
	  return -1
	end
	
	return 0
end

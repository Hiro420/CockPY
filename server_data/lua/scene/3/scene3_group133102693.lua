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
	{ config_id = 693001, gadget_id = 70360005, pos = { x = 1043.9, y = 206.5, z = 375.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 693002, gadget_id = 70360005, pos = { x = 1037.7, y = 206.7, z = 383.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 693003, gadget_id = 70211111, pos = { x = 1040.7, y = 205.8, z = 378.8 }, rot = { x = 0.0, y = 55.4, z = 0.0 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_693004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_693004", action = "action_EVENT_GADGET_STATE_CHANGE_693004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_693005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_693005", action = "action_EVENT_GADGET_STATE_CHANGE_693005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_693006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_693006", action = "action_EVENT_GADGET_STATE_CHANGE_693006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_693007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_693007", action = "action_EVENT_GADGET_STATE_CHANGE_693007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_693008", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_693008", action = "action_EVENT_VARIABLE_CHANGE_693008", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false }
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
		gadgets = { 693001, 693002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_693004", "GADGET_STATE_CHANGE_693005", "GADGET_STATE_CHANGE_693006", "GADGET_STATE_CHANGE_693007", "VARIABLE_CHANGE_693008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_693004(context, evt)
	if 693001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_693004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_693005(context, evt)
	if 693002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_693005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_693006(context, evt)
	-- 检测config_id为693001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 693001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_693006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_693007(context, evt)
	-- 检测config_id为693002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 693002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_693007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_693008(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_693008(context, evt)
	-- 创建id为693003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 693003 }) then
	  return -1
	end
	
	-- 将configid为 693001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 693001, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 将configid为 693002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 693002, GadgetState.GearAction2) then
			return -1
		end 
	
	return 0
end

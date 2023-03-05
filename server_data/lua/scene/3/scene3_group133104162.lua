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
	{ config_id = 534, gadget_id = 70360005, pos = { x = 136.7, y = 203.0, z = 757.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 535, gadget_id = 70360005, pos = { x = 152.8, y = 203.0, z = 760.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 536, gadget_id = 70360005, pos = { x = 142.8, y = 203.0, z = 772.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 537, gadget_id = 70211111, pos = { x = 145.0, y = 204.6, z = 762.3 }, rot = { x = 355.4, y = 359.6, z = 9.8 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_263", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263", action = "action_EVENT_GADGET_STATE_CHANGE_263", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_264", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264", action = "action_EVENT_GADGET_STATE_CHANGE_264", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_265", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265", action = "action_EVENT_GADGET_STATE_CHANGE_265", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_266", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266", action = "action_EVENT_GADGET_STATE_CHANGE_266", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_267", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_267", action = "action_EVENT_GADGET_STATE_CHANGE_267", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_268", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_268", action = "action_EVENT_GADGET_STATE_CHANGE_268", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_269", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_269", action = "action_EVENT_VARIABLE_CHANGE_269" }
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
		gadgets = { 534, 535, 536 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_263", "GADGET_STATE_CHANGE_264", "GADGET_STATE_CHANGE_265", "GADGET_STATE_CHANGE_266", "GADGET_STATE_CHANGE_267", "GADGET_STATE_CHANGE_268", "VARIABLE_CHANGE_269" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_263(context, evt)
	if 534 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264(context, evt)
	if 536 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	if 535 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_266(context, evt)
	-- 检测config_id为534的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 534 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_267(context, evt)
	-- 检测config_id为536的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 536 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_267(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_268(context, evt)
	-- 检测config_id为535的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 535 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_268(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_269(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_269(context, evt)
	-- 创建id为537的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 537 }) then
	  return -1
	end
	
	-- 将configid为 534 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 将configid为 535 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 535, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 将configid为 536 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 536, GadgetState.GearAction2) then
			return -1
		end 
	
	return 0
end

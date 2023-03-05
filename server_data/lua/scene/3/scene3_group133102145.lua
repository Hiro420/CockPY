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
	{ config_id = 506, gadget_id = 70360005, pos = { x = 1317.1, y = 200.2, z = -75.5 }, rot = { x = 358.1, y = 91.9, z = 357.6 }, level = 16 },
	{ config_id = 507, gadget_id = 70360005, pos = { x = 1316.8, y = 200.2, z = -91.1 }, rot = { x = 359.6, y = 92.0, z = 359.2 }, level = 16 },
	{ config_id = 508, gadget_id = 70211102, pos = { x = 1316.9, y = 200.2, z = -82.9 }, rot = { x = 359.5, y = 91.3, z = 2.3 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_253", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_253", action = "action_EVENT_GADGET_STATE_CHANGE_253", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_254", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254", action = "action_EVENT_GADGET_STATE_CHANGE_254", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_255", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255", action = "action_EVENT_GADGET_STATE_CHANGE_255", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_256", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256", action = "action_EVENT_GADGET_STATE_CHANGE_256", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_257", event = EventType.EVENT_VARIABLE_CHANGE, source = "Switch", condition = "condition_EVENT_VARIABLE_CHANGE_257", action = "action_EVENT_VARIABLE_CHANGE_257" },
	{ name = "GADGET_STATE_CHANGE_265", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265", action = "action_EVENT_GADGET_STATE_CHANGE_265" }
}

-- 变量
variables = {
	{ name = "Switch", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 506, 507, 508 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_253", "GADGET_STATE_CHANGE_254", "GADGET_STATE_CHANGE_255", "GADGET_STATE_CHANGE_256", "VARIABLE_CHANGE_257", "GADGET_STATE_CHANGE_265" },
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
function condition_EVENT_GADGET_STATE_CHANGE_253(context, evt)
	if 506 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_253(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254(context, evt)
	-- 检测config_id为506的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 506 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255(context, evt)
	if 507 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_256(context, evt)
	-- 检测config_id为507的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 507 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_256(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_257(context, evt)
	-- 判断变量"Switch"为2
	if ScriptLib.GetGroupVariableValue(context, "Switch") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_257(context, evt)
	-- 将configid为 508 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 508, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	if 508 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102145, 2) then
		return -1
	end
	
	return 0
end

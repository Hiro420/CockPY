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
	{ config_id = 723, gadget_id = 70360005, pos = { x = 281.0, y = 206.6, z = 79.4 }, rot = { x = 0.9, y = 114.8, z = 348.4 }, level = 19, persistent = true },
	{ config_id = 724, gadget_id = 70360005, pos = { x = 270.9, y = 206.4, z = 76.0 }, rot = { x = 1.0, y = 114.9, z = 0.8 }, level = 19, persistent = true },
	{ config_id = 726, gadget_id = 70211111, pos = { x = 276.2, y = 206.4, z = 77.5 }, rot = { x = 1.0, y = 91.5, z = 352.4 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_346", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_346", action = "action_EVENT_GADGET_STATE_CHANGE_346", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_348", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348", action = "action_EVENT_GADGET_STATE_CHANGE_348", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_349", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_349", action = "action_EVENT_GADGET_STATE_CHANGE_349", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_351", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_351", action = "action_EVENT_GADGET_STATE_CHANGE_351", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_352", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_352", action = "action_EVENT_VARIABLE_CHANGE_352" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false },
	{ name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 723, 724 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_346", "GADGET_STATE_CHANGE_348", "GADGET_STATE_CHANGE_349", "GADGET_STATE_CHANGE_351", "VARIABLE_CHANGE_352" },
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
	if 723 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348(context, evt)
	if 724 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_348(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_349(context, evt)
	-- 检测config_id为723的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 723 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_349(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_351(context, evt)
	-- 检测config_id为724的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 724 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_351(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_352(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352(context, evt)
	-- 创建id为726的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 726 }) then
	  return -1
	end
	
	-- 将configid为 723 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 将configid为 724 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 724, GadgetState.GearAction2) then
			return -1
		end 
	
	return 0
end

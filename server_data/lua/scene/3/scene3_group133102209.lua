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
	{ name = "ANY_GADGET_DIE_406", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_406", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_442", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_442", action = "action_EVENT_VARIABLE_CHANGE_442", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_443", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_443", action = "action_EVENT_GADGET_STATE_CHANGE_443", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "interactTimes", value = 0, no_refresh = false },
	{ name = "wrongTimes", value = 0, no_refresh = false },
	{ name = "destroyedTimes", value = 0, no_refresh = false }
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
		triggers = { },
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

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_406(context, evt)
	-- 针对当前group内变量名为 "interactTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "interactTimes", 1) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "destroyedTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "destroyedTimes", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_442(context, evt)
	-- 判断变量"wrongTimes"为0
	if ScriptLib.GetGroupVariableValue(context, "wrongTimes") ~= 0 then
			return false
	end
	
	-- 判断变量"interactTimes"为1
	if ScriptLib.GetGroupVariableValue(context, "interactTimes") ~= 1 then
			return false
	end
	
	-- 判断变量"destroyedTimes"为1
	if ScriptLib.GetGroupVariableValue(context, "destroyedTimes") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_442(context, evt)
	-- 将configid为 758 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 758, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_443(context, evt)
	if 759 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_443(context, evt)
	-- 针对当前group内变量名为 "wrongTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wrongTimes", 1) then
	  return -1
	end
	
	return 0
end

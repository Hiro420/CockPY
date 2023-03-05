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
	{ config_id = 98, gadget_id = 70220032, pos = { x = 20.4, y = 238.0, z = 700.6 }, rot = { x = 1.6, y = 179.0, z = 7.3 }, level = 19 },
	{ config_id = 99, gadget_id = 70220032, pos = { x = 26.7, y = 239.0, z = 698.7 }, rot = { x = 350.2, y = 268.1, z = 5.5 }, level = 19 },
	{ config_id = 100, gadget_id = 70220032, pos = { x = 25.8, y = 240.7, z = 701.4 }, rot = { x = 355.2, y = 198.8, z = 2.7 }, level = 19 },
	{ config_id = 125, gadget_id = 70211101, pos = { x = 22.6, y = 236.9, z = 698.6 }, rot = { x = 12.4, y = 228.5, z = 2.9 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_88", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88", action = "action_EVENT_GADGET_STATE_CHANGE_88", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_89", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89", action = "action_EVENT_GADGET_STATE_CHANGE_89", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_90", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90", action = "action_EVENT_GADGET_STATE_CHANGE_90", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_91", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91", action = "action_EVENT_GADGET_STATE_CHANGE_91", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_92", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_92", action = "action_EVENT_GADGET_STATE_CHANGE_92", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_93", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93", action = "action_EVENT_GADGET_STATE_CHANGE_93", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_94", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "", action = "action_EVENT_VARIABLE_CHANGE_94", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_95", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95", action = "action_EVENT_GADGET_STATE_CHANGE_95" }
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
	end_suite = 3,
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
		gadgets = { 98, 99, 100 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_88", "GADGET_STATE_CHANGE_89", "GADGET_STATE_CHANGE_90", "GADGET_STATE_CHANGE_91", "GADGET_STATE_CHANGE_92", "GADGET_STATE_CHANGE_93", "VARIABLE_CHANGE_94", "GADGET_STATE_CHANGE_95" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 125 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_GADGET_STATE_CHANGE_88(context, evt)
	if 99 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89(context, evt)
	if 98 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90(context, evt)
	if 100 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	if 99 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_92(context, evt)
	if 98 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_92(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93(context, evt)
	if 100 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "count") >=3 then
	
	    ScriptLib.AddExtraGroupSuite(context, 133104050, 2)
	else
	
		ScriptLib.RemoveExtraGroupSuite(context, 133104050, 2)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95(context, evt)
	if 125 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104050, 3) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104050, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104050, 1)
	
	return 0
end

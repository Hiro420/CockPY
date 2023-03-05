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
	{ config_id = 352001, gadget_id = 70360007, pos = { x = -71.0, y = 278.1, z = 237.9 }, rot = { x = 1.6, y = 359.9, z = 354.5 }, level = 19 },
	{ config_id = 352002, gadget_id = 70211111, pos = { x = -69.1, y = 277.7, z = 235.3 }, rot = { x = 351.5, y = 347.7, z = 349.9 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 352003, gadget_id = 70380002, pos = { x = -63.0, y = 278.6, z = 224.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, start_route = false },
	{ config_id = 352004, gadget_id = 70380002, pos = { x = -70.6, y = 282.1, z = 226.9 }, rot = { x = 0.0, y = 351.6, z = 0.0 }, level = 19, start_route = false },
	{ config_id = 352005, gadget_id = 70380002, pos = { x = -77.3, y = 285.7, z = 227.0 }, rot = { x = 0.0, y = 22.2, z = 0.0 }, level = 19, start_route = false },
	{ config_id = 352009, gadget_id = 70900201, pos = { x = -63.0, y = 279.5, z = 224.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 352010, gadget_id = 70900201, pos = { x = -70.7, y = 282.1, z = 226.8 }, rot = { x = 0.0, y = 351.6, z = 0.0 }, level = 19 },
	{ config_id = 352011, gadget_id = 70900201, pos = { x = -77.3, y = 286.5, z = 227.1 }, rot = { x = 0.0, y = 22.2, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_352006", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_352006", action = "action_EVENT_VARIABLE_CHANGE_352006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_352007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352007", action = "action_EVENT_GADGET_STATE_CHANGE_352007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_352008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352008", action = "action_EVENT_GADGET_STATE_CHANGE_352008" },
	{ name = "GADGET_STATE_CHANGE_352015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352015", action = "action_EVENT_GADGET_STATE_CHANGE_352015", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_352018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352018", action = "action_EVENT_ANY_GADGET_DIE_352018", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_352019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352019", action = "action_EVENT_ANY_GADGET_DIE_352019", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_352020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352020", action = "action_EVENT_ANY_GADGET_DIE_352020", trigger_count = 0 }
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
	end_suite = 8,
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
		gadgets = { 352001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_352006", "GADGET_STATE_CHANGE_352007", "GADGET_STATE_CHANGE_352008", "GADGET_STATE_CHANGE_352015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 352003, 352004, 352005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_352018", "ANY_GADGET_DIE_352019", "ANY_GADGET_DIE_352020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 352009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 352010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 352011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
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
function condition_EVENT_VARIABLE_CHANGE_352006(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352006(context, evt)
	-- 创建id为352002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 352002 }) then
	  return -1
	end
	
	-- 将configid为 352001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352001, GadgetState.GearAction2) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352007(context, evt)
	if 352001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352007(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352008(context, evt)
	if 352002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104352, 8) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352015(context, evt)
	if 352001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352015(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352018(context, evt)
	if 352003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352018(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 3)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352019(context, evt)
	if 352004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352019(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 4)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352020(context, evt)
	if 352005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352020(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 5)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

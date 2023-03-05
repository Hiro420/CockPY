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
	{ config_id = 584, gadget_id = 70900008, pos = { x = -611.0, y = -11.0, z = -637.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 585, gadget_id = 70900008, pos = { x = -603.4, y = -11.0, z = -637.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 586, gadget_id = 70900008, pos = { x = -595.5, y = -11.0, z = -637.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 587, gadget_id = 70211001, pos = { x = -603.4, y = -7.7, z = -626.3 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_102", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102", action = "action_EVENT_GADGET_STATE_CHANGE_102" },
	{ name = "GADGET_STATE_CHANGE_103", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103", action = "action_EVENT_GADGET_STATE_CHANGE_103" },
	{ name = "GADGET_STATE_CHANGE_104", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104", action = "action_EVENT_GADGET_STATE_CHANGE_104" },
	{ name = "VARIABLE_CHANGE_105", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_105", action = "action_EVENT_VARIABLE_CHANGE_105", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "num", value = 0, no_refresh = false }
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
	rand_suite = true,
	npcs = { }
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
		gadgets = { 584, 585, 586, 587 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_102", "GADGET_STATE_CHANGE_103", "GADGET_STATE_CHANGE_104", "VARIABLE_CHANGE_105" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102(context, evt)
	if 584 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102(context, evt)
	-- 将本组内变量名为 "num" 的变量设置为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103(context, evt)
	if 585 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103(context, evt)
	-- 将本组内变量名为 "num" 的变量设置为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104(context, evt)
	if 586 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104(context, evt)
	-- 将本组内变量名为 "num" 的变量设置为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_105(context, evt)
	-- 判断变量"num"为3
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_105(context, evt)
	-- 将configid为 587 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 587, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

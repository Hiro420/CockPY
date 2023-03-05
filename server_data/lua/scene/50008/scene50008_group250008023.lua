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
	{ config_id = 114, gadget_id = 70900303, pos = { x = -66.9, y = 6.4, z = -684.6 }, rot = { x = 0.0, y = 53.0, z = 0.0 }, level = 1 },
	{ config_id = 115, gadget_id = 70211001, pos = { x = -62.0, y = 4.0, z = -686.8 }, rot = { x = 0.0, y = 320.4, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 116, gadget_id = 70360001, pos = { x = -67.2, y = 5.8, z = -682.6 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 1 },
	{ config_id = 117, gadget_id = 70360001, pos = { x = -61.4, y = 4.7, z = -692.2 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 1 },
	{ config_id = 197, gadget_id = 70900310, pos = { x = -54.7, y = 4.0, z = -697.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "TIMER_EVENT_60", event = EventType.EVENT_TIMER_EVENT, source = "SpawnChest", condition = "", action = "action_EVENT_TIMER_EVENT_60" },
	{ name = "GADGET_CREATE_61", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61", action = "action_EVENT_GADGET_CREATE_61" },
	{ name = "SELECT_OPTION_62", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62", action = "action_EVENT_SELECT_OPTION_62", trigger_count = 0, forbid_guest = false },
	{ name = "GADGET_CREATE_63", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_63", action = "action_EVENT_GADGET_CREATE_63" },
	{ name = "SELECT_OPTION_64", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_64", action = "action_EVENT_SELECT_OPTION_64", trigger_count = 0, forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_67", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67", action = "action_EVENT_GADGET_STATE_CHANGE_67", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_128", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128", action = "action_EVENT_GADGET_STATE_CHANGE_128" },
	{ name = "GADGET_STATE_CHANGE_129", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129", action = "action_EVENT_GADGET_STATE_CHANGE_129", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 114, 116, 117, 197 },
		regions = { },
		triggers = { "TIMER_EVENT_60", "GADGET_CREATE_61", "SELECT_OPTION_62", "GADGET_CREATE_63", "SELECT_OPTION_64", "GADGET_STATE_CHANGE_67", "GADGET_STATE_CHANGE_128", "GADGET_STATE_CHANGE_129" },
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
function action_EVENT_TIMER_EVENT_60(context, evt)
	-- 创建id为115的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 115 }) then
	  return -1
	end
	
	-- 删除指定group： 250008023 ；指定config：116；物件身上指定option：172；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250008023, 116, 172) then
		return -1
	end
	
	-- 删除指定group： 250008023 ；指定config：117；物件身上指定option：172；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250008023, 117, 172) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61(context, evt)
	if 116 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008023, 116, {172}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62(context, evt)
	-- 判断是gadgetid 116 option_id 172
	if 116 ~= evt.param1 then
		return false	
	end
	
	if 172 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62(context, evt)
	-- 调用提示id为 500090101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500090101) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_63(context, evt)
	if 117 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_63(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008023, 117, {172}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_64(context, evt)
	-- 判断是gadgetid 117 option_id 172
	if 117 ~= evt.param1 then
		return false	
	end
	
	if 172 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_64(context, evt)
	-- 调用提示id为 500090101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500090101) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67(context, evt)
	if 197 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67(context, evt)
	-- 将configid为 114 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_128(context, evt)
	if 114 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128(context, evt)
	-- 延迟1秒后,向groupId为：250008023的对象,请求一次调用,并将string参数："SpawnChest" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250008023, "SpawnChest", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_129(context, evt)
	if 197 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_129(context, evt)
	-- 将configid为 114 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

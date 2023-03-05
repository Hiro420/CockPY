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
	{ config_id = 358, gadget_id = 70310001, pos = { x = -53.2, y = 1.2, z = 515.7 }, rot = { x = 0.0, y = 120.1, z = 0.0 }, level = 1 },
	{ config_id = 359, gadget_id = 70310001, pos = { x = -46.1, y = 1.2, z = 515.6 }, rot = { x = 0.0, y = 159.3, z = 0.0 }, level = 1 },
	{ config_id = 360, gadget_id = 70310001, pos = { x = -46.2, y = 1.2, z = 523.8 }, rot = { x = 0.0, y = 142.7, z = 0.0 }, level = 1 },
	{ config_id = 361, gadget_id = 70310001, pos = { x = -53.2, y = 1.2, z = 523.7 }, rot = { x = 0.0, y = 78.6, z = 0.0 }, level = 1 },
	{ config_id = 362, gadget_id = 70900007, pos = { x = -38.0, y = 6.0, z = 515.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 363, gadget_id = 70900007, pos = { x = -50.0, y = 0.9, z = 519.8 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 364, gadget_id = 70360002, pos = { x = -37.8, y = 6.0, z = 523.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 365, gadget_id = 70220013, pos = { x = -37.8, y = 6.0, z = 518.1 }, rot = { x = 0.0, y = 236.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 119, shape = RegionShape.SPHERE, radius = 5, pos = { x = -53.8, y = 0.5, z = 531.7 } }
}

-- 触发器
triggers = {
	{ name = "TIMER_EVENT_109", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_109" },
	{ name = "GADGET_STATE_CHANGE_110", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_110", action = "action_EVENT_GADGET_STATE_CHANGE_110", trigger_count = 0 },
	{ name = "GADGET_CREATE_111", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_111", action = "action_EVENT_GADGET_CREATE_111" },
	{ name = "SELECT_OPTION_112", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_112", action = "action_EVENT_SELECT_OPTION_112", trigger_count = 0, forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_113", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113", action = "action_EVENT_GADGET_STATE_CHANGE_113", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_114", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114", action = "action_EVENT_GADGET_STATE_CHANGE_114", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115", action = "action_EVENT_GADGET_STATE_CHANGE_115", trigger_count = 0 },
	{ name = "TIMER_EVENT_116", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_116" },
	{ name = "TIMER_EVENT_117", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_117" },
	{ name = "TIMER_EVENT_118", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_118" },
	{ name = "ENTER_REGION_119", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ name = "TIMER_EVENT_120", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "", action = "action_EVENT_TIMER_EVENT_120" },
	{ name = "GADGET_STATE_CHANGE_121", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121", action = "action_EVENT_GADGET_STATE_CHANGE_121" },
	{ name = "GADGET_STATE_CHANGE_122", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122", action = "action_EVENT_GADGET_STATE_CHANGE_122" },
	{ name = "GADGET_STATE_CHANGE_123", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123", action = "action_EVENT_GADGET_STATE_CHANGE_123" },
	{ name = "GADGET_STATE_CHANGE_124", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124", action = "action_EVENT_GADGET_STATE_CHANGE_124" },
	{ name = "GADGET_STATE_CHANGE_125", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125", action = "action_EVENT_GADGET_STATE_CHANGE_125" },
	{ name = "VARIABLE_CHANGE_126", event = EventType.EVENT_VARIABLE_CHANGE, source = "num_1", condition = "condition_EVENT_VARIABLE_CHANGE_126", action = "action_EVENT_VARIABLE_CHANGE_126" }
}

-- 变量
variables = {
	{ name = "num_1", value = 0, no_refresh = false }
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
	rand_suite = false,
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
		gadgets = { 358, 359, 360, 361, 362, 363, 364, 365 },
		regions = { 119 },
		triggers = { "TIMER_EVENT_109", "GADGET_STATE_CHANGE_110", "GADGET_CREATE_111", "SELECT_OPTION_112", "GADGET_STATE_CHANGE_113", "GADGET_STATE_CHANGE_114", "GADGET_STATE_CHANGE_115", "TIMER_EVENT_116", "TIMER_EVENT_117", "TIMER_EVENT_118", "ENTER_REGION_119", "TIMER_EVENT_120", "GADGET_STATE_CHANGE_121" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 358, 359, 360, 361, 362, 363, 364 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_122", "GADGET_STATE_CHANGE_123", "GADGET_STATE_CHANGE_124", "GADGET_STATE_CHANGE_125", "VARIABLE_CHANGE_126" },
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
function action_EVENT_TIMER_EVENT_109(context, evt)
	-- 将configid为 358 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_110(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_110(context, evt)
	-- 延迟2秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time1", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_111(context, evt)
	if 364 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_111(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_112(context, evt)
	if 364 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_112(context, evt)
	-- 将configid为 364 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 364, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 362 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 362, GadgetState.GearStart) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-50，1，520），持续时间为10秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-50, y=1, z=520}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 10, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1046 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1046) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_113(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_113(context, evt)
	-- 延迟4秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time2", 4) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114(context, evt)
	-- 延迟6秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time3", 6) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115(context, evt)
	-- 延迟8秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time4", 8) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_116(context, evt)
	-- 将configid为 359 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 359, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_117(context, evt)
	-- 将configid为 360 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_118(context, evt)
	-- 将configid为 361 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_120(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121(context, evt)
	-- 延迟10秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time5", 10) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122(context, evt)
	if 358 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 0 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123(context, evt)
	if 359 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 1 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124(context, evt)
	if 360 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 2 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125(context, evt)
	if 361 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 3 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126(context, evt)
	-- 判断变量"num_1"为1
	if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126(context, evt)
	-- 解锁目标363
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 363, state = GadgetState.Default }) then
		return -1
	end
	
	-- 调用提示id为 1048 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1048) then
		return -1
	end
	
	return 0
end

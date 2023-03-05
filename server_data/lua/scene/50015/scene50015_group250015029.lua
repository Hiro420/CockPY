--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 21010701, pos = { x = 1636.8, y = 202.0, z = 1011.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 29002, monster_id = 21010701, pos = { x = 1647.2, y = 202.1, z = 1003.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 29003, monster_id = 21020101, pos = { x = 1636.8, y = 202.0, z = 1004.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 29004, monster_id = 21020101, pos = { x = 1648.9, y = 202.0, z = 1011.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 29005, monster_id = 21010501, pos = { x = 1636.7, y = 200.9, z = 981.9 }, rot = { x = 1.9, y = 11.4, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 29006, monster_id = 21010501, pos = { x = 1649.6, y = 215.8, z = 1017.8 }, rot = { x = 0.0, y = 191.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29007, gadget_id = 70220007, pos = { x = 1655.0, y = 200.0, z = 999.8 }, rot = { x = 0.0, y = 140.0, z = 0.0 }, level = 1 },
	{ config_id = 29008, gadget_id = 70300090, pos = { x = 1630.9, y = 201.1, z = 1011.5 }, rot = { x = 0.0, y = 355.0, z = 0.0 }, level = 1 },
	{ config_id = 29012, gadget_id = 70220007, pos = { x = 1658.6, y = 200.0, z = 1003.6 }, rot = { x = 0.0, y = 130.0, z = 0.0 }, level = 1 },
	{ config_id = 29016, gadget_id = 70300090, pos = { x = 1630.9, y = 201.1, z = 1011.5 }, rot = { x = 0.0, y = 355.0, z = 0.0 }, level = 1 },
	{ config_id = 29017, gadget_id = 70350006, pos = { x = 1654.0, y = 200.1, z = 1000.3 }, rot = { x = 0.0, y = 140.0, z = 0.0 }, level = 1 },
	{ config_id = 29018, gadget_id = 70900007, pos = { x = 1644.4, y = 202.0, z = 1016.9 }, rot = { x = 0.0, y = 14.6, z = 0.0 }, level = 1 },
	{ config_id = 29019, gadget_id = 70900007, pos = { x = 1641.1, y = 201.9, z = 1000.2 }, rot = { x = 0.0, y = 14.3, z = 0.0 }, level = 1 },
	{ config_id = 29020, gadget_id = 70350006, pos = { x = 1657.8, y = 200.3, z = 1003.9 }, rot = { x = 0.0, y = 130.0, z = 0.0 }, level = 1 },
	{ config_id = 29029, gadget_id = 70220006, pos = { x = 1652.2, y = 200.0, z = 998.4 }, rot = { x = 0.0, y = 140.0, z = 0.0 }, level = 1 },
	{ config_id = 29030, gadget_id = 70220006, pos = { x = 1660.0, y = 200.6, z = 1006.5 }, rot = { x = 0.0, y = 130.0, z = 0.0 }, level = 1 },
	{ config_id = 29036, gadget_id = 70220005, pos = { x = 1650.3, y = 215.8, z = 1016.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 29039, gadget_id = 40200001, pos = { x = 1664.2, y = 200.0, z = 1008.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_29021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29021", action = "action_EVENT_ANY_MONSTER_DIE_29021" },
	{ name = "GADGET_STATE_CHANGE_29022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29022", action = "action_EVENT_GADGET_STATE_CHANGE_29022", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_29023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29023", action = "action_EVENT_GADGET_STATE_CHANGE_29023", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_29024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29024", action = "action_EVENT_GADGET_STATE_CHANGE_29024", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_29025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29025", action = "action_EVENT_GADGET_STATE_CHANGE_29025", trigger_count = 0 },
	{ name = "TIMER_EVENT_29026", event = EventType.EVENT_TIMER_EVENT, source = "stop23019", condition = "condition_EVENT_TIMER_EVENT_29026", action = "action_EVENT_TIMER_EVENT_29026", trigger_count = 0 },
	{ name = "TIMER_EVENT_29027", event = EventType.EVENT_TIMER_EVENT, source = "stop23020", condition = "condition_EVENT_TIMER_EVENT_29027", action = "action_EVENT_TIMER_EVENT_29027", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "t23019", value = 0, no_refresh = false },
	{ name = "t23020", value = 0, no_refresh = false },
	{ name = "ison", value = 0, no_refresh = false }
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
		monsters = { 29001, 29002 },
		gadgets = { 29007, 29008, 29012, 29016, 29017, 29020, 29029, 29030, 29036, 29039 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 29003, 29004, 29005, 29006 },
		gadgets = { 29018, 29019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_29022", "GADGET_STATE_CHANGE_29023", "GADGET_STATE_CHANGE_29024", "GADGET_STATE_CHANGE_29025", "TIMER_EVENT_29026", "TIMER_EVENT_29027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015029, 2)
	
	-- 调用提示id为 200050203 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050203) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29022(context, evt)
	if 29018 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29022(context, evt)
	-- 将本组内变量名为 "t23019" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23019", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29023(context, evt)
	if 29019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29023(context, evt)
	-- 将本组内变量名为 "t23020" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23020", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29024(context, evt)
	if 29018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29024(context, evt)
	-- 将本组内变量名为 "t23019" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23019", 1) 
	then
	return -1
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "ison") == 0 
	then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250015029, "stop23019", 5) 
		then
		return -1
		end
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "t23019") + ScriptLib.GetGroupVariableValue(context, "t23020") == 2 
	then
		
		if ScriptLib.GetGroupVariableValue(context, "ison") == 0 
		then
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29017,GadgetState.GearStart) then
			return -1
			end
	
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29020,GadgetState.GearStart) then
			return -1
			end
	
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) 
			then
		  	return -1
			end
		
		end
		
	end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29025(context, evt)
	if 29019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29025(context, evt)
	-- 将本组内变量名为 "t23019" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23020", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "ison") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250015029, "stop23020", 5) then
		  return -1
		end
	end
		
	
	
	if ScriptLib.GetGroupVariableValue(context, "t23019") + ScriptLib.GetGroupVariableValue(context, "t23020") == 2 
	then
		
		if ScriptLib.GetGroupVariableValue(context, "ison") == 0 
		then
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29017,GadgetState.GearStart) then
			return -1
			end
	
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29020,GadgetState.GearStart) then
			return -1
			end
	
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) 
			then
		  	return -1
			end
		
		end
		
	end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_29026(context, evt)
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_29026(context, evt)
	-- 将configid为 29018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29018, GadgetState.Default) then
			return -1
		end 
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_29027(context, evt)
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_29027(context, evt)
	-- 将configid为 29019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29019, GadgetState.Default) then
			return -1
		end 
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
		return -1
	end
	
	return 0
end

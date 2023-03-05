--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8004, monster_id = 24010201, pos = { x = 1496.8, y = 219.7, z = 579.7 }, rot = { x = 8.0, y = 240.1, z = 354.4 }, level = 20, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8005, gadget_id = 70900051, pos = { x = 1494.4, y = 221.5, z = 550.7 }, rot = { x = 0.0, y = 265.4, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8006, gadget_id = 70900051, pos = { x = 1488.7, y = 221.9, z = 546.2 }, rot = { x = 0.0, y = 357.9, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8007, gadget_id = 70900051, pos = { x = 1480.0, y = 220.2, z = 580.0 }, rot = { x = 0.0, y = 305.6, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8008, gadget_id = 70900051, pos = { x = 1489.3, y = 219.4, z = 604.3 }, rot = { x = 0.0, y = 272.2, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8009, gadget_id = 70900051, pos = { x = 1508.0, y = 221.8, z = 559.5 }, rot = { x = 0.0, y = 282.2, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8010, gadget_id = 70900051, pos = { x = 1490.3, y = 219.7, z = 563.3 }, rot = { x = 0.0, y = 269.8, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8011, gadget_id = 70900051, pos = { x = 1516.6, y = 222.5, z = 586.9 }, rot = { x = 0.0, y = 267.5, z = 0.0 }, level = 18, state = GadgetState.GearStop, persistent = true },
	{ config_id = 8012, gadget_id = 70360040, pos = { x = 1470.8, y = 219.9, z = 543.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_25", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25", action = "action_EVENT_ANY_MONSTER_DIE_25", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_33", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33", action = "action_EVENT_GADGET_STATE_CHANGE_33", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_34", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34", action = "action_EVENT_VARIABLE_CHANGE_34", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_35", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35", action = "action_EVENT_GADGET_STATE_CHANGE_35", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_36", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36", action = "action_EVENT_GADGET_STATE_CHANGE_36", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_37", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37", action = "action_EVENT_GADGET_STATE_CHANGE_37", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_38", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38", action = "action_EVENT_GADGET_STATE_CHANGE_38", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_39", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39", action = "action_EVENT_GADGET_STATE_CHANGE_39", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_40", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40", action = "action_EVENT_GADGET_STATE_CHANGE_40", trigger_count = 0 },
	{ name = "TIMER_EVENT_44", event = EventType.EVENT_TIMER_EVENT, source = "StartAllOperators", condition = "", action = "action_EVENT_TIMER_EVENT_44" },
	{ name = "VARIABLE_CHANGE_62", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62", action = "action_EVENT_VARIABLE_CHANGE_62", trigger_count = 0 },
	{ name = "TIMER_EVENT_63", event = EventType.EVENT_TIMER_EVENT, source = "WaitForReset", condition = "", action = "action_EVENT_TIMER_EVENT_63", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_64", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_64", action = "action_EVENT_VARIABLE_CHANGE_64", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_65", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65", action = "action_EVENT_VARIABLE_CHANGE_65", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_8001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8001", action = "action_EVENT_VARIABLE_CHANGE_8001", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_8002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8002", action = "action_EVENT_VARIABLE_CHANGE_8002", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "InteractTimes", value = 0, no_refresh = false },
	{ name = "CorrectCounter", value = 0, no_refresh = false },
	{ name = "wrongCounter", value = 0, no_refresh = false }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25(context, evt)
	if 8004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8011, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8009, GadgetState.Default) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "showControllerUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "showControllerUI", 1, 133102319) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_1") then
	  return -1
	end
	
	-- 创建id为8012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8012 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33(context, evt)
	if 8008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34(context, evt)
	-- 判断变量"InteractTimes"为3
	if ScriptLib.GetGroupVariableValue(context, "InteractTimes") ~= 3 then
			return false
	end
	
	-- 判断变量"CorrectCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "CorrectCounter") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_2") then
	  return -1
	end
	
	-- 延迟4秒后,向groupId为：133102008的对象,请求一次调用,并将string参数："StartAllOperators" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102008, "StartAllOperators", 4) then
	  return -1
	end
	
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 107)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_35(context, evt)
	if 8005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36(context, evt)
	if 8006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "CorrectCounter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "CorrectCounter", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37(context, evt)
	if 8007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "CorrectCounter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "CorrectCounter", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38(context, evt)
	if 8010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39(context, evt)
	if 8011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "CorrectCounter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "CorrectCounter", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40(context, evt)
	if 8009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40(context, evt)
	-- 针对当前group内变量名为 "InteractTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "InteractTimes", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_44(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 8010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 8010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 8009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8009, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62(context, evt)
	-- 判断变量"InteractTimes"为3
	if ScriptLib.GetGroupVariableValue(context, "InteractTimes") ~= 3 then
			return false
	end
	
	-- 判断变量"CorrectCounter"为0
	if ScriptLib.GetGroupVariableValue(context, "CorrectCounter") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62(context, evt)
	-- 延迟2秒后,向groupId为：133102008的对象,请求一次调用,并将string参数："WaitForReset" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102008, "WaitForReset", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_63(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8011, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 8009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8009, GadgetState.Default) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "showClueUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "showClueUI", 1, 133102319) then
	  return -1
	end
	
	-- 将本组内变量名为 "InteractTimes" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "InteractTimes", 0) then
	  return -1
	end
	
	-- 将本组内变量名为 "CorrectCounter" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CorrectCounter", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_64(context, evt)
	-- 判断变量"InteractTimes"为3
	if ScriptLib.GetGroupVariableValue(context, "InteractTimes") ~= 3 then
			return false
	end
	
	-- 判断变量"CorrectCounter"为1
	if ScriptLib.GetGroupVariableValue(context, "CorrectCounter") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_64(context, evt)
	-- 延迟2秒后,向groupId为：133102008的对象,请求一次调用,并将string参数："WaitForReset" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102008, "WaitForReset", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65(context, evt)
	-- 判断变量"InteractTimes"为3
	if ScriptLib.GetGroupVariableValue(context, "InteractTimes") ~= 3 then
			return false
	end
	
	-- 判断变量"CorrectCounter"为2
	if ScriptLib.GetGroupVariableValue(context, "CorrectCounter") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65(context, evt)
	-- 延迟2秒后,向groupId为：133102008的对象,请求一次调用,并将string参数："WaitForReset" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102008, "WaitForReset", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8001(context, evt)
	-- 判断变量"wrongCounter"为1
	if ScriptLib.GetGroupVariableValue(context, "wrongCounter") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8001(context, evt)
	-- 针对当前group内变量名为 "showClueUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "showClueUI", 1, 133102319) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8002(context, evt)
	-- 判断变量"wrongCounter"为2
	if ScriptLib.GetGroupVariableValue(context, "wrongCounter") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8002(context, evt)
	-- 针对当前group内变量名为 "showTreeUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "showTreeUI", 1, 133102319) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "showShapeUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "showShapeUI", 1, 133102319) then
	  return -1
	end
	
	return 0
end

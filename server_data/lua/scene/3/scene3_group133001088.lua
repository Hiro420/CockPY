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
	{ config_id = 1715, gadget_id = 70800004, pos = { x = 1374.3, y = 235.5, z = -1569.1 }, rot = { x = 0.0, y = 71.9, z = 0.0 }, level = 15 },
	{ config_id = 1775, gadget_id = 70800008, pos = { x = 1374.3, y = 235.1, z = -1569.1 }, rot = { x = 0.0, y = 169.1, z = 0.0 }, level = 15 },
	{ config_id = 1776, gadget_id = 70800009, pos = { x = 1374.3, y = 235.0, z = -1569.1 }, rot = { x = 0.0, y = 55.5, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
	{ config_id = 438, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1574.9, y = 248.9, z = -1620.6 } },
	{ config_id = 439, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1269.6, y = 259.1, z = -1690.5 } },
	{ config_id = 440, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1239.9, y = 255.2, z = -1469.2 } }
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_387", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_387", action = "action_EVENT_ANY_GADGET_DIE_387" },
	{ name = "ANY_GADGET_DIE_388", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_388", action = "action_EVENT_ANY_GADGET_DIE_388" },
	{ name = "ANY_GADGET_DIE_389", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_389", action = "action_EVENT_ANY_GADGET_DIE_389" },
	{ name = "VARIABLE_CHANGE_390", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_390", action = "action_EVENT_VARIABLE_CHANGE_390" },
	{ name = "TIMER_EVENT_391", event = EventType.EVENT_TIMER_EVENT, source = "questfinish", condition = "", action = "action_EVENT_TIMER_EVENT_391", trigger_count = 0 },
	{ name = "ENTER_REGION_438", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_438", action = "action_EVENT_ENTER_REGION_438" },
	{ name = "ENTER_REGION_439", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_439", action = "action_EVENT_ENTER_REGION_439" },
	{ name = "ENTER_REGION_440", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_440", action = "action_EVENT_ENTER_REGION_440" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false },
	{ name = "JZbegin", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 1715, 1775, 1776 },
		regions = { 438, 439, 440 },
		triggers = { "ANY_GADGET_DIE_387", "ANY_GADGET_DIE_388", "ANY_GADGET_DIE_389", "VARIABLE_CHANGE_390", "TIMER_EVENT_391", "ENTER_REGION_438", "ENTER_REGION_439", "ENTER_REGION_440" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_387(context, evt)
	if 1715 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_387(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_388(context, evt)
	if 1775 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_388(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_389(context, evt)
	if 1776 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_389(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390(context, evt)
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390(context, evt)
	-- 延迟5秒后,向groupId为：133001088的对象,请求一次调用,并将string参数："questfinish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001088, "questfinish", 5) then
	  return -1
	end
	
	-- 延迟1.4秒后,向groupId为：133001109的对象,请求一次调用,并将string参数："chest" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001109, "chest", 1.4) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_391(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "jianzhong") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_438(context, evt)
	if evt.param1 ~= 438 then return false end
	
	-- 判断变量"JZbegin"为0
	if ScriptLib.GetGroupVariableValue(context, "JZbegin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_438(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZ") then
	  return -1
	end
	
	-- 针对当前group内变量名为 "JZbegin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "JZbegin", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_439(context, evt)
	if evt.param1 ~= 439 then return false end
	
	-- 判断变量"JZbegin"为0
	if ScriptLib.GetGroupVariableValue(context, "JZbegin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_439(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZ") then
	  return -1
	end
	
	-- 针对当前group内变量名为 "JZbegin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "JZbegin", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_440(context, evt)
	if evt.param1 ~= 440 then return false end
	
	-- 判断变量"JZbegin"为0
	if ScriptLib.GetGroupVariableValue(context, "JZbegin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_440(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZ") then
	  return -1
	end
	
	-- 针对当前group内变量名为 "JZbegin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "JZbegin", 1) then
	  return -1
	end
	
	return 0
end

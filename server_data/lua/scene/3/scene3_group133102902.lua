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
	{ config_id = 902003, gadget_id = 70900201, pos = { x = 1760.0, y = 244.6, z = 150.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
	{ config_id = 902001, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1778.0, y = 200.5, z = 132.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_902001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_902001", action = "action_EVENT_ENTER_REGION_902001", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_902006", event = EventType.EVENT_VARIABLE_CHANGE, source = "133102584", condition = "condition_EVENT_VARIABLE_CHANGE_902006", action = "action_EVENT_VARIABLE_CHANGE_902006", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "902001", value = 1, no_refresh = false },
	{ name = "902002", value = 1, no_refresh = false },
	{ name = "902004", value = 1, no_refresh = false },
	{ name = "902005", value = 1, no_refresh = false },
	{ name = "902006", value = 1, no_refresh = false },
	{ name = "133102584", value = 0, no_refresh = false }
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
		regions = { 902001 },
		triggers = { "ENTER_REGION_902001", "VARIABLE_CHANGE_902006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 902003 },
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
function condition_EVENT_ENTER_REGION_902001(context, evt)
	if evt.param1 ~= 902001 then return false end
	
	-- 判断变量"902001"为1
	if ScriptLib.GetGroupVariableValue(context, "902001") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_902001(context, evt)
	-- 调用提示id为 1110044 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110044) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310290202") then
	  return -1
	end
	
	-- 变量"902001"赋值为0
	ScriptLib.SetGroupVariableValue(context, "902001", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_902006(context, evt)
	-- 判断变量"Dug"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Dug", 133102584) ~= 1 then
			return false
	end
	
	-- 判断变量"902006"为1
	if ScriptLib.GetGroupVariableValue(context, "902006") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_902006(context, evt)
	-- 调用提示id为 1110070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110070) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310290201") then
	  return -1
	end
	
	-- 变量"133102584"赋值为0
	if evt.param1 ~= 0 then
		ScriptLib.SetGroupVariableValue(context, "133102584", 0)
	end
	
	return 0
end

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
	{ config_id = 1554, gadget_id = 70300111, pos = { x = 2265.9, y = 236.3, z = -738.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1555, gadget_id = 70300111, pos = { x = 2262.0, y = 236.3, z = -737.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1556, gadget_id = 70300111, pos = { x = 2261.3, y = 236.3, z = -735.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1557, gadget_id = 70300111, pos = { x = 2266.7, y = 236.3, z = -736.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1558, gadget_id = 70300111, pos = { x = 2264.0, y = 236.3, z = -739.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270004, gadget_id = 70300111, pos = { x = 2266.7, y = 236.2, z = -738.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270005, gadget_id = 70300111, pos = { x = 2268.6, y = 236.3, z = -736.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270006, gadget_id = 70300111, pos = { x = 2261.4, y = 236.2, z = -737.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270007, gadget_id = 70300111, pos = { x = 2259.8, y = 236.4, z = -735.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270008, gadget_id = 70310001, pos = { x = 2264.2, y = 236.2, z = -734.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270011, gadget_id = 70300111, pos = { x = 2266.5, y = 236.2, z = -741.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270012, gadget_id = 70300111, pos = { x = 2267.4, y = 236.3, z = -738.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270013, gadget_id = 70300111, pos = { x = 2259.0, y = 236.2, z = -734.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270014, gadget_id = 70300111, pos = { x = 2256.8, y = 236.2, z = -732.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270015, gadget_id = 70300111, pos = { x = 2259.9, y = 236.3, z = -731.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270017, gadget_id = 70300113, pos = { x = 2269.3, y = 236.4, z = -736.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270018, gadget_id = 70300113, pos = { x = 2266.5, y = 236.3, z = -737.0 }, rot = { x = 0.0, y = 328.2, z = 0.0 }, level = 1 },
	{ config_id = 270019, gadget_id = 70300113, pos = { x = 2264.1, y = 236.4, z = -737.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270020, gadget_id = 70300113, pos = { x = 2261.5, y = 236.4, z = -737.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270021, gadget_id = 70300113, pos = { x = 2259.1, y = 236.4, z = -737.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_327", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327", action = "action_EVENT_ANY_GADGET_DIE_327", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_270001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_270001", action = "action_EVENT_ANY_GADGET_DIE_270001", trigger_count = 0 },
	{ name = "TIMER_EVENT_270002", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge", condition = "condition_EVENT_TIMER_EVENT_270002", action = "action_EVENT_TIMER_EVENT_270002" },
	{ name = "GADGET_CREATE_270003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270003", action = "action_EVENT_GADGET_CREATE_270003" },
	{ name = "ANY_GADGET_DIE_270009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_270009", action = "action_EVENT_ANY_GADGET_DIE_270009", trigger_count = 0 },
	{ name = "TIMER_EVENT_270010", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge", condition = "condition_EVENT_TIMER_EVENT_270010", action = "action_EVENT_TIMER_EVENT_270010" },
	{ name = "GADGET_CREATE_270016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270016", action = "action_EVENT_GADGET_CREATE_270016" },
	{ name = "GADGET_CREATE_270022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270022", action = "action_EVENT_GADGET_CREATE_270022" },
	{ name = "TIMER_EVENT_270023", event = EventType.EVENT_TIMER_EVENT, source = "delaymessage", condition = "", action = "action_EVENT_TIMER_EVENT_270023" }
}

-- 变量
variables = {
	{ name = "isfail", value = 0, no_refresh = false }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1554, 1555, 1556, 1557, 1558 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "ANY_GADGET_DIE_270001", "TIMER_EVENT_270002", "GADGET_CREATE_270003", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 1558, 270004, 270005, 270006, 270007, 270008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_270001", "GADGET_CREATE_270003", "ANY_GADGET_DIE_270009", "TIMER_EVENT_270010", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 1558, 270011, 270012, 270013, 270014, 270015 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "ANY_GADGET_DIE_270001", "TIMER_EVENT_270002", "GADGET_CREATE_270016", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 270017, 270018, 270019, 270020, 270021 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "ANY_GADGET_DIE_270001", "TIMER_EVENT_270002", "GADGET_CREATE_270022", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270}) ~= 0 then
		return false
	end
	
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004270") then
	  return -1
	end
	
	-- 调用提示id为 1110034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110034) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_270001(context, evt)
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_270001(context, evt)
	-- 延迟2秒后,向groupId为：133004270的对象,请求一次调用,并将string参数："delayJudge" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004270, "delayJudge", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_270002(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270})  == 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_270002(context, evt)
	-- 将本组内变量名为 "isfail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfail", 1) then
	  return -1
	end
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133004270的对象,请求一次调用,并将string参数："delaymessage" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004270, "delaymessage", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270003(context, evt)
	if 1558 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270003(context, evt)
	-- 调用提示id为 1110032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110032) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_270009(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270}) ~= 1 then
		return false
	end
	
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_270009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004270") then
	  return -1
	end
	
	-- 调用提示id为 1110034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110034) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_270010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270})  == 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_270010(context, evt)
	-- 将本组内变量名为 "isfail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfail", 1) then
	  return -1
	end
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133004270的对象,请求一次调用,并将string参数："delaymessage" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004270, "delaymessage", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270016(context, evt)
	if 1558 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270016(context, evt)
	-- 调用提示id为 1110032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110032) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270022(context, evt)
	if 270019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270022(context, evt)
	-- 调用提示id为 1110032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110032) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_270023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300427001") then
	  return -1
	end
	
	return 0
end

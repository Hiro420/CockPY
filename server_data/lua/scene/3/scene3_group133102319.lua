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
}

-- 区域
regions = {
	{ config_id = 319004, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1458.2, y = 241.6, z = 581.3 } },
	{ config_id = 319005, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1512.4, y = 233.1, z = 540.3 } },
	{ config_id = 319006, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1519.4, y = 246.7, z = 653.5 } }
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_319001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_319001", action = "action_EVENT_VARIABLE_CHANGE_319001", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_319002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_319002", action = "action_EVENT_VARIABLE_CHANGE_319002", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_319003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_319003", action = "action_EVENT_VARIABLE_CHANGE_319003", trigger_count = 0 },
	{ name = "ENTER_REGION_319004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_319004", action = "action_EVENT_ENTER_REGION_319004", trigger_count = 0 },
	{ name = "ENTER_REGION_319005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_319005", action = "action_EVENT_ENTER_REGION_319005" },
	{ name = "ENTER_REGION_319006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_319006", action = "action_EVENT_ENTER_REGION_319006" },
	{ name = "TIMER_EVENT_319007", event = EventType.EVENT_TIMER_EVENT, source = "reminderdelay", condition = "", action = "action_EVENT_TIMER_EVENT_319007" }
}

-- 变量
variables = {
	{ name = "showControllerUI", value = 0, no_refresh = false },
	{ name = "showClueUI", value = 0, no_refresh = false },
	{ name = "showTreeUI", value = 0, no_refresh = false },
	{ name = "showShapeUI", value = 0, no_refresh = false }
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
		regions = { 319004, 319005, 319006 },
		triggers = { "VARIABLE_CHANGE_319001", "VARIABLE_CHANGE_319002", "VARIABLE_CHANGE_319003", "ENTER_REGION_319004", "ENTER_REGION_319005", "ENTER_REGION_319006", "TIMER_EVENT_319007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_319001(context, evt)
	-- 判断变量"showControllerUI"为1
	if ScriptLib.GetGroupVariableValue(context, "showControllerUI") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_319001(context, evt)
	-- 针对当前group内变量名为 "showControllerUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "showControllerUI", 1) then
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：133102319的对象,请求一次调用,并将string参数："reminderdelay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102319, "reminderdelay", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_319002(context, evt)
	-- 判断变量"showClueUI"为1
	if ScriptLib.GetGroupVariableValue(context, "showClueUI") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_319002(context, evt)
	-- 调用提示id为 31020103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020103) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_319003(context, evt)
	-- 判断变量"showClueUI"为2
	if ScriptLib.GetGroupVariableValue(context, "showClueUI") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_319003(context, evt)
	-- 调用提示id为 31020106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020106) then
		return -1
	end
	
	-- 针对当前group内变量名为 "showClueUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "showClueUI", 1) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1461，243，586），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1461, y=243, z=586}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_319004(context, evt)
	if evt.param1 ~= 319004 then return false end
	
	-- 判断变量"showClueUI"为3
	if ScriptLib.GetGroupVariableValue(context, "showClueUI") ~= 3 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_319004(context, evt)
	-- 触发镜头注目，注目位置为坐标（1525，222，597），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1525, y=222, z=597}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 31020109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020109) then
		return -1
	end
	
	-- 针对当前group内变量名为 "showClueUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "showClueUI", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_319005(context, evt)
	if evt.param1 ~= 319005 then return false end
	
	-- 判断变量"showClueUI"为3
	if ScriptLib.GetGroupVariableValue(context, "showClueUI") ~= 3 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_319005(context, evt)
	-- 触发镜头注目，注目位置为坐标（1480，219，580），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1480, y=219, z=580}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 31020109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020109) then
		return -1
	end
	
	-- 针对当前group内变量名为 "showClueUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "showClueUI", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_319006(context, evt)
	if evt.param1 ~= 319006 then return false end
	
	-- 判断变量"showClueUI"为3
	if ScriptLib.GetGroupVariableValue(context, "showClueUI") ~= 3 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_319006(context, evt)
	-- 触发镜头注目，注目位置为坐标（1490，221，545），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1490, y=221, z=545}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 31020109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020109) then
		return -1
	end
	
	-- 针对当前group内变量名为 "showClueUI" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "showClueUI", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_319007(context, evt)
	-- 调用提示id为 31020101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020101) then
		return -1
	end
	
	return 0
end

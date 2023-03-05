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
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_503001", event = EventType.EVENT_QUEST_FINISH, source = "2101901", condition = "", action = "action_EVENT_QUEST_FINISH_503001" },
	{ name = "QUEST_FINISH_503002", event = EventType.EVENT_QUEST_FINISH, source = "2101904", condition = "", action = "action_EVENT_QUEST_FINISH_503002", trigger_count = 0 },
	{ name = "QUEST_FINISH_503003", event = EventType.EVENT_QUEST_FINISH, source = "2101905", condition = "", action = "action_EVENT_QUEST_FINISH_503003", trigger_count = 0 },
	{ name = "QUEST_FINISH_503004", event = EventType.EVENT_QUEST_FINISH, source = "2101906", condition = "", action = "action_EVENT_QUEST_FINISH_503004", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_503005", event = EventType.EVENT_VARIABLE_CHANGE, source = "num", condition = "condition_EVENT_VARIABLE_CHANGE_503005", action = "action_EVENT_VARIABLE_CHANGE_503005" },
	{ name = "VARIABLE_CHANGE_503006", event = EventType.EVENT_VARIABLE_CHANGE, source = "num", condition = "condition_EVENT_VARIABLE_CHANGE_503006", action = "action_EVENT_VARIABLE_CHANGE_503006" },
	{ name = "VARIABLE_CHANGE_503007", event = EventType.EVENT_VARIABLE_CHANGE, source = "num", condition = "condition_EVENT_VARIABLE_CHANGE_503007", action = "action_EVENT_VARIABLE_CHANGE_503007" }
}

-- 变量
variables = {
	{ name = "num", value = 0, no_refresh = true }
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

-- 触发操作
function action_EVENT_QUEST_FINISH_503001(context, evt)
	-- 调用提示id为 31020101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020101) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_503002(context, evt)
	-- 触发镜头注目，注目位置为坐标（1489，222，546），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1489, y=222, z=546}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_503003(context, evt)
	-- 触发镜头注目，注目位置为坐标（1480，220，580），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1480, y=220, z=580}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_503004(context, evt)
	-- 触发镜头注目，注目位置为坐标（1516，222，587），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1516, y=222, z=587}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_503005(context, evt)
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_503005(context, evt)
	-- 调用提示id为 31020601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020601) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_503006(context, evt)
	-- 判断变量"num"为2
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_503006(context, evt)
	-- 调用提示id为 31020602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020602) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_503007(context, evt)
	-- 判断变量"num"为3
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_503007(context, evt)
	-- 调用提示id为 31020603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020603) then
		return -1
	end
	
	return 0
end

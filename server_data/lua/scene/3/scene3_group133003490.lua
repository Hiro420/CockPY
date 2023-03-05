--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490001, monster_id = 21020201, pos = { x = 2326.5, y = 279.7, z = -1684.7 }, rot = { x = 0.0, y = 224.1, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, affix = { 1007 }, isElite = true, pose_id = 401 },
	{ config_id = 490002, monster_id = 21010201, pos = { x = 2327.3, y = 280.4, z = -1690.5 }, rot = { x = 0.0, y = 303.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 490003, monster_id = 21010201, pos = { x = 2321.6, y = 279.9, z = -1686.9 }, rot = { x = 0.0, y = 125.4, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 490004, monster_id = 21010201, pos = { x = 2322.4, y = 280.5, z = -1692.1 }, rot = { x = 0.0, y = 22.5, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490005, gadget_id = 70310006, pos = { x = 2324.5, y = 280.0, z = -1688.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 490007, gadget_id = 70210102, pos = { x = 2429.0, y = 321.4, z = -1743.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 490008, gadget_id = 70210102, pos = { x = 2391.6, y = 297.8, z = -1798.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 490009, gadget_id = 70210102, pos = { x = 2294.7, y = 284.3, z = -1738.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 490010, gadget_id = 70210102, pos = { x = 2307.7, y = 280.1, z = -1684.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_490006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490006", action = "action_EVENT_GADGET_STATE_CHANGE_490006" },
	{ name = "GADGET_STATE_CHANGE_490011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490011", action = "action_EVENT_GADGET_STATE_CHANGE_490011" },
	{ name = "GADGET_STATE_CHANGE_490012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490012", action = "action_EVENT_GADGET_STATE_CHANGE_490012" },
	{ name = "GADGET_STATE_CHANGE_490013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490013", action = "action_EVENT_GADGET_STATE_CHANGE_490013" }
}

-- 变量
variables = {
	{ name = "A", value = 0, no_refresh = false },
	{ name = "B", value = 0, no_refresh = false },
	{ name = "C", value = 0, no_refresh = false },
	{ name = "D", value = 0, no_refresh = false }
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
		gadgets = { 490007, 490008, 490009, 490010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_490006", "GADGET_STATE_CHANGE_490011", "GADGET_STATE_CHANGE_490012", "GADGET_STATE_CHANGE_490013" },
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
function condition_EVENT_GADGET_STATE_CHANGE_490006(context, evt)
	if 490007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490006(context, evt)
		-- 针对当前group内变量名为 "A" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "A", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349001") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110035 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110035) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490011(context, evt)
	if 490008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490011(context, evt)
		-- 针对当前group内变量名为 "B" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "B", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349002") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110038 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110038) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490012(context, evt)
	if 490009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490012(context, evt)
		-- 针对当前group内变量名为 "C" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349003") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110039 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110039) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490013(context, evt)
	if 490010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490013(context, evt)
		-- 针对当前group内变量名为 "D" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349004") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110042) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

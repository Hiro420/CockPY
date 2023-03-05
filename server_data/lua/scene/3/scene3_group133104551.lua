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
	{ config_id = 551001, gadget_id = 70360001, pos = { x = 336.8, y = 298.6, z = 723.4 }, rot = { x = 0.0, y = 29.6, z = 0.0 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 551002, gadget_id = 70211111, pos = { x = 337.3, y = 298.5, z = 723.7 }, rot = { x = 8.5, y = 36.9, z = 351.6 }, level = 19, chest_drop_id = 2000300, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 551005, gadget_id = 70211111, pos = { x = 328.7, y = 292.3, z = 720.0 }, rot = { x = 9.5, y = 29.4, z = 11.6 }, level = 19, chest_drop_id = 2000400, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 551006, gadget_id = 70211111, pos = { x = 342.2, y = 294.0, z = 719.3 }, rot = { x = 5.4, y = 212.9, z = 18.3 }, level = 19, chest_drop_id = 2000500, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 551013, gadget_id = 70360001, pos = { x = 328.9, y = 292.3, z = 720.2 }, rot = { x = 8.7, y = 33.0, z = 12.1 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 551014, gadget_id = 70360001, pos = { x = 341.9, y = 294.0, z = 719.0 }, rot = { x = 7.4, y = 206.9, z = 17.6 }, level = 19, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 551007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 327.2, y = 293.1, z = 720.1 } },
	{ config_id = 551008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 336.6, y = 299.2, z = 722.8 } },
	{ config_id = 551009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 343.2, y = 294.0, z = 719.8 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_551003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_551003", action = "action_EVENT_GADGET_CREATE_551003", trigger_count = 0 },
	{ name = "SELECT_OPTION_551004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_551004", action = "action_EVENT_SELECT_OPTION_551004" },
	{ name = "ENTER_REGION_551007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_551007", action = "action_EVENT_ENTER_REGION_551007" },
	{ name = "ENTER_REGION_551008", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_551008", action = "action_EVENT_ENTER_REGION_551008" },
	{ name = "ENTER_REGION_551009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_551009", action = "action_EVENT_ENTER_REGION_551009" },
	{ name = "GADGET_STATE_CHANGE_551010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551010", action = "action_EVENT_GADGET_STATE_CHANGE_551010" },
	{ name = "GADGET_STATE_CHANGE_551011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551011", action = "action_EVENT_GADGET_STATE_CHANGE_551011" },
	{ name = "GADGET_STATE_CHANGE_551012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551012", action = "action_EVENT_GADGET_STATE_CHANGE_551012" },
	{ name = "GADGET_CREATE_551015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_551015", action = "action_EVENT_GADGET_CREATE_551015", trigger_count = 0 },
	{ name = "GADGET_CREATE_551016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_551016", action = "action_EVENT_GADGET_CREATE_551016", trigger_count = 0 },
	{ name = "SELECT_OPTION_551017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_551017", action = "action_EVENT_SELECT_OPTION_551017" },
	{ name = "SELECT_OPTION_551018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_551018", action = "action_EVENT_SELECT_OPTION_551018" }
}

-- 变量
variables = {
	{ name = "wishIndex", value = 0, no_refresh = true },
	{ name = "isActive", value = 0, no_refresh = true }
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
		-- description = suite_1,
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
		gadgets = { 551001 },
		regions = { 551008 },
		triggers = { "GADGET_CREATE_551003", "SELECT_OPTION_551004", "ENTER_REGION_551008", "GADGET_STATE_CHANGE_551010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 551002 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 551013 },
		regions = { 551007 },
		triggers = { "ENTER_REGION_551007", "GADGET_STATE_CHANGE_551011", "GADGET_CREATE_551015", "SELECT_OPTION_551017" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 551005 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 551014 },
		regions = { 551009 },
		triggers = { "ENTER_REGION_551009", "GADGET_STATE_CHANGE_551012", "GADGET_CREATE_551016", "SELECT_OPTION_551018" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 551006 },
		regions = { },
		triggers = { },
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
function condition_EVENT_GADGET_CREATE_551003(context, evt)
	-- 判断是gadgetid 551001
	if 551001 ~= evt.param1 then
			return false
		end
	
	-- 判断变量"isActive"为0
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_551003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_551004(context, evt)
	if 551001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_551004(context, evt)
	-- 删除指定group： 133104551 ；指定config：551001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104551, 551001, 169) then
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104551, 3)
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_551007(context, evt)
	if evt.param1 ~= 551007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_551007(context, evt)
	-- 调用提示id为 31040509 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040509) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551_1") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_551008(context, evt)
	if evt.param1 ~= 551008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_551008(context, evt)
	-- 调用提示id为 31040509 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040509) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551_1") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_551009(context, evt)
	if evt.param1 ~= 551009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_551009(context, evt)
	-- 调用提示id为 31040509 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040509) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551_1") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_551010(context, evt)
	if 551002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_551010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551_Finish") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_551011(context, evt)
	if 551005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_551011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551_Finish") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_551012(context, evt)
	if 551006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_551012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551_Finish") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_551015(context, evt)
	-- 判断是gadgetid 551013
	if 551013 ~= evt.param1 then
			return false
		end
	
	-- 判断变量"isActive"为0
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_551015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_551016(context, evt)
	-- 判断是gadgetid 551014
	if 551014 ~= evt.param1 then
			return false
		end
	
	-- 判断变量"isActive"为0
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_551016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_551017(context, evt)
	if 551013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_551017(context, evt)
	-- 删除指定group： 133104551 ；指定config：551013；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104551, 551013, 169) then
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104551, 5)
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_551018(context, evt)
	if 551014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_551018(context, evt)
	-- 删除指定group： 133104551 ；指定config：551014；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104551, 551014, 169) then
		return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104551, 7)
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

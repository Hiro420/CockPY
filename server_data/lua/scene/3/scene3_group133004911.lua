-- Trigger变量
local defs = {
	gadget_1 = 911001,
	gadget_2 = 911002
}


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
	{ config_id = 911001, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2369.3, y = 260.0, z = -703.9 } },
	{ config_id = 911002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2330.6, y = 260.0, z = -684.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_911001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_911001", action = "action_EVENT_ENTER_REGION_911001" },
	{ name = "ENTER_REGION_911002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_911002", action = "action_EVENT_ENTER_REGION_911002" }
}

-- 变量
variables = {
	{ name = "AnyTrigger", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		regions = { 911001, 911002 },
		triggers = { "ENTER_REGION_911001", "ENTER_REGION_911002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ENTER_REGION_911001(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2004203) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 and ScriptLib.GetGroupVariableValue(context, "AnyTrigger") == 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_911001(context, evt)
	-- 调用提示id为 1110037 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110037) then
		return -1
	end
	
	-- 将本组内变量名为 "AnyTrigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AnyTrigger", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_911002(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2004203) == QuestState.UNFINISHED and evt.param1 == defs.gadget_2 and ScriptLib.GetGroupVariableValue(context, "AnyTrigger") == 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_911002(context, evt)
	-- 调用提示id为 1110037 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110037) then
		return -1
	end
	
	-- 将本组内变量名为 "AnyTrigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AnyTrigger", 1) then
	  return -1
	end
	
	return 0
end

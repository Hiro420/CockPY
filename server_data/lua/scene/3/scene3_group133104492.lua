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
	{ config_id = 492001, npc_id = 20046, pos = { x = 251.0, y = 236.8, z = 524.2 }, rot = { x = 0.0, y = 173.5, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 492002, gadget_id = 70310004, pos = { x = 251.0, y = 238.0, z = 524.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
	{ config_id = 492004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 251.6, y = 237.5, z = 524.3 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_492003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_492003", action = "action_EVENT_GADGET_STATE_CHANGE_492003" },
	{ name = "ENTER_REGION_492004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_492004", action = "action_EVENT_ENTER_REGION_492004" },
	{ name = "QUEST_FINISH_492005", event = EventType.EVENT_QUEST_FINISH, source = "2102010", condition = "", action = "action_EVENT_QUEST_FINISH_492005" },
	{ name = "QUEST_FINISH_492006", event = EventType.EVENT_QUEST_FINISH, source = "2102020", condition = "", action = "action_EVENT_QUEST_FINISH_492006" }
}

-- 变量
variables = {
	{ name = "isFinished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		triggers = { "QUEST_FINISH_492006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 492002 },
		regions = { 492004 },
		triggers = { "GADGET_STATE_CHANGE_492003", "ENTER_REGION_492004", "QUEST_FINISH_492005" },
		npcs = { 492001 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
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
function condition_EVENT_GADGET_STATE_CHANGE_492003(context, evt)
	if 492002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_492003(context, evt)
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104492_1") then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 492001 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_492004(context, evt)
	if evt.param1 ~= 492004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_492004(context, evt)
	-- 调用提示id为 31040506 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040506) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_492005(context, evt)
	-- 调用提示id为 31040502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040502) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_492006(context, evt)
	-- 调用提示id为 31040507 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040507) then
		return -1
	end
	
	return 0
end

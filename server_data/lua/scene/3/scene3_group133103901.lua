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
	{ config_id = 1, npc_id = 20019, pos = { x = 615.9, y = 204.0, z = 1280.7 }, rot = { x = 0.0, y = 79.9, z = 0.0 } },
	{ config_id = 2, npc_id = 20022, pos = { x = 770.4, y = 294.2, z = 1416.2 }, rot = { x = 0.0, y = 232.5, z = 0.0 } },
	{ config_id = 3, npc_id = 20023, pos = { x = 791.9, y = 323.0, z = 1517.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 } },
	{ config_id = 901007, npc_id = 20044, pos = { x = 835.0, y = 480.9, z = 1426.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 } },
	{ config_id = 901008, npc_id = 20045, pos = { x = 838.1, y = 542.6, z = 1426.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 } },
	{ config_id = 901009, npc_id = 20042, pos = { x = 646.8, y = 231.6, z = 1723.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 } }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 95, shape = RegionShape.SPHERE, radius = 4, pos = { x = 834.8, y = 480.9, z = 1425.8 } },
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1062.2, y = 431.7, z = 1595.5 } },
	{ config_id = 901002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 919.7, y = 397.1, z = 1356.5 } },
	{ config_id = 901003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 774.1, y = 405.8, z = 1791.7 } },
	{ config_id = 901004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 657.8, y = 166.7, z = 1260.8 } },
	{ config_id = 901005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 836.1, y = 542.1, z = 1429.8 } },
	{ config_id = 901006, shape = RegionShape.SPHERE, radius = 7, pos = { x = 834.8, y = 480.9, z = 1425.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_95", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_95", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901002", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901003", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901004", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901005", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901006", action = "", trigger_count = 0 }
}

-- 变量
variables = {
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
		regions = { 95, 901001, 901002, 901003, 901004, 901005, 901006 },
		triggers = { "ENTER_REGION_95", "ENTER_REGION_901001", "ENTER_REGION_901002", "ENTER_REGION_901003", "ENTER_REGION_901004", "ENTER_REGION_901005", "ENTER_REGION_901006" },
		npcs = { 1, 2, 3, 901007, 901008, 901009 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_95(context, evt)
	-- 判断任务2100104未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100104) == QuestState.UNFINISHED and evt.param1 == 95 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	-- 判断任务2100103未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100103) == QuestState.UNFINISHED and
	evt.param1 == 901001 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901002(context, evt)
	-- 判断任务2100103未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100103) == QuestState.UNFINISHED and
	evt.param1 == 901002 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901003(context, evt)
	-- 判断任务2100103未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100103) == QuestState.UNFINISHED and
	evt.param1 == 901003 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901004(context, evt)
	-- 判断任务1100601未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7100101) == QuestState.UNFINISHED and
	evt.param1 == 901004 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901005(context, evt)
	-- 判断任务2100106未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100106) == QuestState.UNFINISHED and
	evt.param1 == 901005 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901006(context, evt)
	-- 判断任务2100102未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100102) == QuestState.UNFINISHED and evt.param1 == 901006 then
		return true
	end
	return false
end

-- 触发操作

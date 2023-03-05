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
	{ config_id = 282, shape = RegionShape.SPHERE, radius = 6.7, pos = { x = 2248.4, y = 216.0, z = -890.2 } },
	{ config_id = 283, shape = RegionShape.SPHERE, radius = 10.2, pos = { x = 2246.5, y = 236.0, z = -787.3 } },
	{ config_id = 284, shape = RegionShape.SPHERE, radius = 10.9, pos = { x = 2246.4, y = 236.0, z = -788.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_282", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_282", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_283", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_283", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_284", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284", action = "", trigger_count = 0 }
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
		gadgets = { },
		regions = { 282, 283, 284 },
		triggers = { "ENTER_REGION_282", "ENTER_REGION_283", "ENTER_REGION_284" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_282(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 48601) == QuestState.UNFINISHED and evt.param1 == 282 then
	 return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_283(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 48604) == QuestState.UNFINISHED and evt.param1 == 283 then
	 return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_284(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 48609) == QuestState.UNFINISHED and evt.param1 == 284 then
	 return true
	end
	return false
end

-- 触发操作

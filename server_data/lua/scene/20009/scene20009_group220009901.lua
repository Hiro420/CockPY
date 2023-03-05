-- Trigger变量
local defs = {
	gadget_id_1 = 28,
	gadget_id_2 = 29,
	gadget_id_3 = 30,
	gadget_id_4 = 56
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
	{ config_id = 28, shape = RegionShape.SPHERE, radius = 20.4, pos = { x = -63.7, y = -8.0, z = 96.7 } },
	{ config_id = 29, shape = RegionShape.CUBIC, size = { x = 28.6, y = 9.9, z = 5.3 }, pos = { x = -78.3, y = -9.8, z = 104.3 } },
	{ config_id = 30, shape = RegionShape.SPHERE, radius = 16.2, pos = { x = -128.4, y = -12.5, z = 126.0 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 5, pos = { x = -127.3, y = -12.4, z = 101.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_30", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30", action = "", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "", trigger_count = 0, forbid_guest = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 28, 29, 56 },
		triggers = { "ENTER_REGION_28", "ENTER_REGION_29", "ENTER_REGION_56" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30607) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30608) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_30(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30609) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30612) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_4 then
			return true
		end
		return false
	
end

-- 触发操作

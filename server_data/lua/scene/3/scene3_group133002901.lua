-- Trigger变量
local defs = {
	gadget_id_1 = 66,
	gadget_id_2 = 67,
	gadget_id_3 = 68,
	gadget_id_4 = 69,
	gadget_id_5 = 107,
	gadget_id_6 = 185,
	gadget_id_7 = 225,
	gadget_id_8 = 226,
	gadget_id_9 = 227,
	gadget_id_10 = 316,
	gadget_id_11 = 317,
	gadget_id_12 = 318,
	gadget_id_13 = 321,
	gadget_id_14 = 331,
	gadget_id_15 = 366,
	gadget_id_16 = 373,
	gadget_id_17 = 901001,
	gadget_id_18 = 901002,
	gadget_id_19 = 901003,
	gadget_id_20 = 901004,
	gadget_id_21 = 901005,
	gadget_id_22 = 901006,
	gadget_id_23 = 901007
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
	{ config_id = 66, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1765.6, y = 221.9, z = -405.6 } },
	{ config_id = 67, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2137.0, y = 207.0, z = -1174.0 } },
	{ config_id = 68, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2157.0, y = 235.4, z = -1644.1 } },
	{ config_id = 69, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1644.8, y = 255.4, z = -1414.1 } },
	{ config_id = 107, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2009.1, y = 204.2, z = -881.3 } },
	{ config_id = 185, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1773.6, y = 221.9, z = -390.5 } },
	{ config_id = 225, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1660.2, y = 255.8, z = -1426.9 } },
	{ config_id = 226, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1772.1, y = 221.9, z = -393.1 } },
	{ config_id = 227, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1814.0, y = 218.7, z = -395.3 } },
	{ config_id = 316, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1999.3, y = 250.8, z = -277.1 } },
	{ config_id = 317, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2011.4, y = 255.8, z = -321.3 } },
	{ config_id = 318, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2060.9, y = 260.0, z = -343.7 } },
	{ config_id = 321, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1772.3, y = 221.9, z = -391.8 } },
	{ config_id = 331, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1980.3, y = 203.4, z = -823.9 } },
	{ config_id = 366, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1956.8, y = 219.4, z = -550.3 } },
	{ config_id = 373, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2016.2, y = 205.5, z = -926.3 } },
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1974.1, y = 202.6, z = -800.7 } },
	{ config_id = 901002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1935.1, y = 209.1, z = -809.6 } },
	{ config_id = 901003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1971.7, y = 207.8, z = -756.7 } },
	{ config_id = 901004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1974.3, y = 202.6, z = -800.3 } },
	{ config_id = 901005, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1980.8, y = 202.7, z = -821.0 } },
	{ config_id = 901006, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2009.1, y = 226.0, z = -696.6 } },
	{ config_id = 901007, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1858.0, y = 200.8, z = -170.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_67", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_68", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_69", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_107", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_185", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_225", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_226", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_226", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_227", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_316", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_317", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_317", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_318", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_318", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_321", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_331", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_331", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_366", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_366", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_373", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_373", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901002", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901003", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901004", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901005", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901006", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901007", action = "", trigger_count = 0 }
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
		regions = { 66, 67, 68, 69, 107, 185, 225, 226, 227, 316, 317, 318, 321, 331, 366, 373, 901001, 901002, 901003, 901004, 901005, 901006, 901007 },
		triggers = { "ENTER_REGION_66", "ENTER_REGION_67", "ENTER_REGION_68", "ENTER_REGION_69", "ENTER_REGION_107", "ENTER_REGION_185", "ENTER_REGION_225", "ENTER_REGION_226", "ENTER_REGION_227", "ENTER_REGION_316", "ENTER_REGION_317", "ENTER_REGION_318", "ENTER_REGION_321", "ENTER_REGION_331", "ENTER_REGION_366", "ENTER_REGION_373", "ENTER_REGION_901001", "ENTER_REGION_901002", "ENTER_REGION_901003", "ENTER_REGION_901004", "ENTER_REGION_901005", "ENTER_REGION_901006", "ENTER_REGION_901007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_66(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38301) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_67(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30600) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_68(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30700) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_69(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30800) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_4 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_107(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45202) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_5 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_185(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46504) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_6 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_225(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46506) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_7 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_226(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46601) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_8 then
		return true
	end
	return false
	
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_227(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46603) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_9 then
		return true
	end
	return false
	
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_316(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45414) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_10 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_317(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45408) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_11 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_318(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45409) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_12 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_321(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39701) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_13 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_331(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2000709) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_14 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_366(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001709) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_15 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_373(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001809) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_16 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006106) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_17 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901002(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006107) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_18 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901003(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006108) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_19 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901004(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006110) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_20 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901005(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006102) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_21 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901006(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006111) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_22 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901007(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006306) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_23 then
		return true
	end
	return false
end

-- 触发操作

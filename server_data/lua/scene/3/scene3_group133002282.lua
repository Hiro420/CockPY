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
	{ config_id = 2349, gadget_id = 70210103, pos = { x = 1631.9, y = 201.1, z = -322.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 2364, gadget_id = 70300086, pos = { x = 1636.9, y = 190.5, z = -326.0 }, rot = { x = 20.2, y = 0.0, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
	{ config_id = 375, shape = RegionShape.SPHERE, radius = 30.06, pos = { x = 1631.8, y = 202.2, z = -323.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_375", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_375", action = "action_EVENT_ENTER_REGION_375" },
	{ name = "ANY_GADGET_DIE_376", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_376", action = "action_EVENT_ANY_GADGET_DIE_376", trigger_count = 0 },
	{ name = "QUEST_START_382", event = EventType.EVENT_QUEST_START, source = "2002705", condition = "", action = "action_EVENT_QUEST_START_382", trigger_count = 0 }
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
		gadgets = { 2364 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2364 },
		regions = { 375 },
		triggers = { "ENTER_REGION_375", "ANY_GADGET_DIE_376", "QUEST_START_382" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_375(context, evt)
	if evt.param1 ~= 375 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_375(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228202") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_376(context, evt)
	if 2349 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_376(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002283, suite = 2 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228303") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_382(context, evt)
	-- 创生gadget 2349
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2349 }) then
		return -1
	end
	
	return 0
end

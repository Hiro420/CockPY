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
	{ config_id = 2400, gadget_id = 70210103, pos = { x = 1683.1, y = 276.7, z = -1101.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 2409, gadget_id = 70220009, pos = { x = 1692.7, y = 274.8, z = -1108.2 }, rot = { x = 0.0, y = 0.0, z = 214.4 }, level = 10 }
}

-- 区域
regions = {
	{ config_id = 393, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1683.5, y = 275.8, z = -1102.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_393", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_393", action = "action_EVENT_ENTER_REGION_393" },
	{ name = "QUEST_START_395", event = EventType.EVENT_QUEST_START, source = "2002805", condition = "", action = "action_EVENT_QUEST_START_395", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_396", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_396", action = "action_EVENT_ANY_GADGET_DIE_396", trigger_count = 0 }
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
		gadgets = { 2409 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2409 },
		regions = { 393 },
		triggers = { "ENTER_REGION_393", "QUEST_START_395", "ANY_GADGET_DIE_396" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_393(context, evt)
	if evt.param1 ~= 393 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_393(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228803") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_395(context, evt)
	-- 创生gadget 2400
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2400 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_396(context, evt)
	if 2400 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_396(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002289, suite = 2 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228804") then
	  return -1
	end
	
	return 0
end

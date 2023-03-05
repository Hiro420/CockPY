--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1727, monster_id = 21020201, pos = { x = 2068.5, y = 208.0, z = -1037.7 }, rot = { x = 0.0, y = 351.8, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 1728, monster_id = 21010201, pos = { x = 2065.7, y = 206.9, z = -1031.0 }, rot = { x = 0.0, y = 40.2, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9010 },
	{ config_id = 1729, monster_id = 21010201, pos = { x = 2065.9, y = 207.1, z = -1026.0 }, rot = { x = 0.0, y = 154.1, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9010 },
	{ config_id = 1730, monster_id = 21010601, pos = { x = 2070.8, y = 207.0, z = -1025.1 }, rot = { x = 0.0, y = 236.5, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9011 },
	{ config_id = 1731, monster_id = 21010501, pos = { x = 2066.3, y = 208.3, z = -1036.1 }, rot = { x = 0.0, y = 15.5, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4354, gadget_id = 70300083, pos = { x = 2071.6, y = 206.0, z = -1030.0 }, rot = { x = 356.6, y = 286.6, z = 0.0 }, level = 2 },
	{ config_id = 4355, gadget_id = 70220013, pos = { x = 2065.1, y = 208.1, z = -1037.9 }, rot = { x = 0.0, y = 23.2, z = 0.0 }, level = 2 },
	{ config_id = 4356, gadget_id = 70300093, pos = { x = 2069.1, y = 206.8, z = -1025.3 }, rot = { x = 0.0, y = 63.3, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
	{ config_id = 588, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2070.5, y = 206.2, z = -1030.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_588", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_588", action = "action_EVENT_ENTER_REGION_588" },
	{ name = "ANY_MONSTER_DIE_589", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_589", trigger_count = 5 },
	{ name = "ANY_GADGET_DIE_590", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_590", action = "action_EVENT_ANY_GADGET_DIE_590" }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1727, 1728, 1729, 1730, 1731 },
		gadgets = { 4354, 4355, 4356 },
		regions = { 588 },
		triggers = { "ENTER_REGION_588", "ANY_MONSTER_DIE_589", "ANY_GADGET_DIE_590" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_588(context, evt)
	if evt.param1 ~= 588 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_588(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348301") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_589(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348302") then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348303") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_590(context, evt)
	if 4354 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_590(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348303") then
	  return -1
	end
	
	return 0
end

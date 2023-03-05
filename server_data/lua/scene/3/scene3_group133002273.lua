--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1000, monster_id = 21020201, pos = { x = 1950.9, y = 219.8, z = -561.1 }, rot = { x = 0.0, y = 248.1, z = 0.0 }, level = 15, drop_id = 1000100 },
	{ config_id = 1001, monster_id = 21010201, pos = { x = 1953.8, y = 219.3, z = -568.6 }, rot = { x = 0.0, y = 133.8, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9010 },
	{ config_id = 1002, monster_id = 21010601, pos = { x = 1947.2, y = 220.0, z = -568.3 }, rot = { x = 0.0, y = 314.7, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011 },
	{ config_id = 1003, monster_id = 21010601, pos = { x = 1949.4, y = 219.7, z = -563.5 }, rot = { x = 0.0, y = 283.5, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011 },
	{ config_id = 1004, monster_id = 21030201, pos = { x = 1949.5, y = 220.0, z = -560.1 }, rot = { x = 0.0, y = 217.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2283, gadget_id = 70300083, pos = { x = 1955.4, y = 219.2, z = -565.6 }, rot = { x = 0.0, y = 2.2, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
	{ config_id = 356, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1956.0, y = 215.9, z = -571.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_356", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_356", action = "action_EVENT_ENTER_REGION_356" },
	{ name = "ANY_MONSTER_DIE_357", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_357", trigger_count = 5 },
	{ name = "ANY_GADGET_DIE_358", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_358", action = "action_EVENT_ANY_GADGET_DIE_358" }
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
		monsters = { 1000, 1001, 1002, 1003, 1004 },
		gadgets = { 2283 },
		regions = { 356 },
		triggers = { "ENTER_REGION_356", "ANY_MONSTER_DIE_357", "ANY_GADGET_DIE_358" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_356(context, evt)
	if evt.param1 ~= 356 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_356(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227301") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227302") then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227303") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_358(context, evt)
	if 2283 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_358(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227303") then
	  return -1
	end
	
	return 0
end

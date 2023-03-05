--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 995, monster_id = 21010301, pos = { x = 1811.5, y = 234.8, z = -772.2 }, rot = { x = 0.0, y = 223.3, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9010 },
	{ config_id = 996, monster_id = 21010201, pos = { x = 1808.2, y = 235.2, z = -776.6 }, rot = { x = 0.0, y = 5.8, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9010 },
	{ config_id = 997, monster_id = 21020101, pos = { x = 1813.1, y = 235.6, z = -767.1 }, rot = { x = 0.0, y = 195.4, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 401 },
	{ config_id = 998, monster_id = 21030101, pos = { x = 1799.1, y = 237.5, z = -775.8 }, rot = { x = 0.0, y = 82.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 999, monster_id = 21010901, pos = { x = 1810.7, y = 235.9, z = -766.5 }, rot = { x = 0.0, y = 176.5, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2282, gadget_id = 70300083, pos = { x = 1807.3, y = 235.4, z = -771.0 }, rot = { x = 359.9, y = 322.4, z = 357.2 }, level = 10 }
}

-- 区域
regions = {
	{ config_id = 353, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1807.5, y = 236.2, z = -771.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_353", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_353", action = "action_EVENT_ENTER_REGION_353" },
	{ name = "ANY_MONSTER_DIE_354", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_354", trigger_count = 5 },
	{ name = "ANY_GADGET_DIE_355", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_355", action = "action_EVENT_ANY_GADGET_DIE_355" }
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
		monsters = { 995, 996, 997, 998, 999 },
		gadgets = { 2282 },
		regions = { 353 },
		triggers = { "ENTER_REGION_353", "ANY_MONSTER_DIE_354", "ANY_GADGET_DIE_355" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_353(context, evt)
	if evt.param1 ~= 353 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_353(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227201") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_354(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227202") then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227203") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_355(context, evt)
	if 2282 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_355(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227203") then
	  return -1
	end
	
	return 0
end

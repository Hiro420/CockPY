--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1601, monster_id = 21010501, pos = { x = 2144.2, y = 222.5, z = -1265.1 }, rot = { x = 0.0, y = 323.8, z = 0.0 }, level = 14, drop_id = 1000100, disableWander = true },
	{ config_id = 1602, monster_id = 21010501, pos = { x = 2145.8, y = 222.6, z = -1264.5 }, rot = { x = 0.0, y = 44.7, z = 0.0 }, level = 14, drop_id = 1000100, disableWander = true },
	{ config_id = 1603, monster_id = 21020201, pos = { x = 2142.9, y = 219.4, z = -1248.9 }, rot = { x = 0.0, y = 179.3, z = 0.0 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 0 },
	{ config_id = 1604, monster_id = 21010201, pos = { x = 2142.9, y = 219.0, z = -1257.9 }, rot = { x = 0.0, y = 346.3, z = 0.0 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 9010 },
	{ config_id = 1605, monster_id = 21010201, pos = { x = 2141.6, y = 219.0, z = -1251.7 }, rot = { x = 0.0, y = 163.0, z = 0.0 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 9010 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4244, gadget_id = 70300083, pos = { x = 2139.3, y = 217.9, z = -1256.3 }, rot = { x = 7.5, y = 272.7, z = 358.2 }, level = 5 }
}

-- 区域
regions = {
	{ config_id = 567, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2142.8, y = 218.9, z = -1253.9 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_564", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_564", trigger_count = 5 },
	{ name = "ANY_GADGET_DIE_565", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_565", action = "action_EVENT_ANY_GADGET_DIE_565" },
	{ name = "ANY_MONSTER_DIE_566", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_566", trigger_count = 5 },
	{ name = "ENTER_REGION_567", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567", action = "action_EVENT_ENTER_REGION_567", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 1601, 1602, 1603, 1604, 1605 },
		gadgets = { 4244 },
		regions = { 567 },
		triggers = { "ANY_MONSTER_DIE_564", "ANY_GADGET_DIE_565", "ANY_MONSTER_DIE_566", "ENTER_REGION_567" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003469") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_565(context, evt)
	if 4244 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_565(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034691") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_566(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034691") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567(context, evt)
	if evt.param1 ~= 567 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034692") then
	  return -1
	end
	
	return 0
end

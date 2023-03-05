--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 950, monster_id = 20011201, pos = { x = 1826.0, y = 235.2, z = -840.2 }, rot = { x = 0.0, y = 83.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 951, monster_id = 20011201, pos = { x = 1834.1, y = 236.6, z = -834.0 }, rot = { x = 0.0, y = 293.8, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 952, monster_id = 20011201, pos = { x = 1821.2, y = 236.0, z = -836.5 }, rot = { x = 0.0, y = 345.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 953, monster_id = 20011301, pos = { x = 1825.6, y = 235.9, z = -834.7 }, rot = { x = 0.0, y = 345.0, z = 0.0 }, level = 15, drop_id = 1000100, affix = { 1008 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 336, shape = RegionShape.SPHERE, radius = 28.03, pos = { x = 1825.3, y = 235.4, z = -838.4 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_334", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334", action = "action_EVENT_ANY_MONSTER_DIE_334" },
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_335", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "953", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335" },
	{ name = "ENTER_REGION_336", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_336", action = "action_EVENT_ENTER_REGION_336" }
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
		monsters = { 950, 951, 952, 953 },
		gadgets = { },
		regions = { 336 },
		triggers = { "ANY_MONSTER_DIE_334", "SPECIFIC_MONSTER_HP_CHANGE_335", "ENTER_REGION_336" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_334(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002902") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 950, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 951, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_336(context, evt)
	if evt.param1 ~= 336 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_336(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300290201") then
	  return -1
	end
	
	return 0
end

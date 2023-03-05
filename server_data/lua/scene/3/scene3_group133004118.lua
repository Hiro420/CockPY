--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 324, monster_id = 21010301, pos = { x = 2172.2, y = 207.1, z = -1055.1 }, rot = { x = 0.0, y = 23.7, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 325, monster_id = 21010301, pos = { x = 2170.1, y = 207.0, z = -1053.8 }, rot = { x = 0.0, y = 23.6, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 326, monster_id = 21010301, pos = { x = 2167.5, y = 206.8, z = -1053.1 }, rot = { x = 0.0, y = 22.7, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 327, monster_id = 22010201, pos = { x = 2168.2, y = 206.8, z = -1057.8 }, rot = { x = 0.0, y = 24.3, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 328, monster_id = 22010301, pos = { x = 2168.1, y = 206.7, z = -1057.9 }, rot = { x = 0.0, y = 29.1, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 576, monster_id = 21010501, pos = { x = 2174.0, y = 206.6, z = -1060.6 }, rot = { x = 0.0, y = 21.1, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 577, monster_id = 21010501, pos = { x = 2162.1, y = 206.4, z = -1053.3 }, rot = { x = 0.0, y = 29.9, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 578, monster_id = 21010701, pos = { x = 2177.3, y = 206.8, z = -1059.4 }, rot = { x = 0.0, y = 16.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 643, monster_id = 21010701, pos = { x = 2163.0, y = 206.8, z = -1050.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 644, monster_id = 21010301, pos = { x = 2177.6, y = 206.9, z = -1059.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 645, monster_id = 21010901, pos = { x = 2174.0, y = 206.6, z = -1060.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 646, monster_id = 21010901, pos = { x = 2161.9, y = 206.4, z = -1053.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 647, monster_id = 21010301, pos = { x = 2162.6, y = 206.8, z = -1049.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_160", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "327", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160" },
	{ name = "ANY_MONSTER_DIE_161", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_161", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_280", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_280", action = "action_EVENT_ANY_MONSTER_DIE_280" }
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
	end_suite = 1,
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
		monsters = { 324, 325, 326, 327 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_160", "ANY_MONSTER_DIE_161", "ANY_MONSTER_DIE_280" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 643, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 576, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 577, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 578, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_161(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004118") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_280(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_280(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 644, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 645, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 646, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 647, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

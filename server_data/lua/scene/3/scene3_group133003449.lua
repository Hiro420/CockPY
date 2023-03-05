--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 442, monster_id = 20011202, pos = { x = 2560.8, y = 211.5, z = -1342.4 }, rot = { x = 0.0, y = 357.2, z = 0.0 }, level = 3, drop_id = 1000100, disableWander = true },
	{ config_id = 443, monster_id = 20011202, pos = { x = 2562.0, y = 211.6, z = -1342.0 }, rot = { x = 0.0, y = 338.5, z = 0.0 }, level = 3, drop_id = 1000100, disableWander = true },
	{ config_id = 444, monster_id = 20011202, pos = { x = 2560.7, y = 211.8, z = -1341.4 }, rot = { x = 0.0, y = 349.4, z = 0.0 }, level = 3, drop_id = 1000100, disableWander = true },
	{ config_id = 445, monster_id = 20011202, pos = { x = 2561.6, y = 211.8, z = -1341.0 }, rot = { x = 0.0, y = 333.3, z = 0.0 }, level = 3, drop_id = 1000100, disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_516", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_516", action = "action_EVENT_ANY_MONSTER_DIE_516", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_535", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_535", action = "action_EVENT_ANY_MONSTER_LIVE_535" },
	{ name = "TIMER_EVENT_536", event = EventType.EVENT_TIMER_EVENT, source = "delay2", condition = "", action = "action_EVENT_TIMER_EVENT_536" },
	{ name = "QUEST_START_545", event = EventType.EVENT_QUEST_START, source = "35304", condition = "condition_EVENT_QUEST_START_545", action = "action_EVENT_QUEST_START_545", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_516", "ANY_MONSTER_LIVE_535", "TIMER_EVENT_536", "QUEST_START_545" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_516(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_516(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030024") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_535(context, evt)
	if 444 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_535(context, evt)
	-- 延迟2秒后,向groupId为：133003002的对象,请求一次调用,并将string参数："delay3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003002, "delay3", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_536(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003002delay3") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_545(context, evt)
	if 35304 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_545(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 442, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 443, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 444, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

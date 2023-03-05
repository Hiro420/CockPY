--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 440, monster_id = 20011202, pos = { x = 2560.8, y = 211.6, z = -1342.3 }, rot = { x = 0.0, y = 348.0, z = 0.0 }, level = 2, drop_id = 1000100, disableWander = true },
	{ config_id = 441, monster_id = 20011202, pos = { x = 2562.0, y = 211.6, z = -1342.0 }, rot = { x = 0.0, y = 333.7, z = 0.0 }, level = 2, drop_id = 1000100, disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_515", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_515", action = "action_EVENT_ANY_MONSTER_DIE_515", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_533", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_533", action = "action_EVENT_ANY_MONSTER_LIVE_533" },
	{ name = "TIMER_EVENT_534", event = EventType.EVENT_TIMER_EVENT, source = "delay2", condition = "", action = "action_EVENT_TIMER_EVENT_534" },
	{ name = "QUEST_START_544", event = EventType.EVENT_QUEST_START, source = "35303", condition = "condition_EVENT_QUEST_START_544", action = "action_EVENT_QUEST_START_544", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_515", "ANY_MONSTER_LIVE_533", "TIMER_EVENT_534", "QUEST_START_544" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_515(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_515(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030023") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_533(context, evt)
	if 440 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_533(context, evt)
	-- 延迟2秒后,向groupId为：133003002的对象,请求一次调用,并将string参数："delay2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003002, "delay2", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_534(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003002delay2") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_544(context, evt)
	if 35303 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_544(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 440, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 441, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

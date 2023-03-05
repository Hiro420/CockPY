--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 637, monster_id = 21010101, pos = { x = 2344.0, y = 209.2, z = -906.0 }, rot = { x = 0.0, y = 297.4, z = 0.0 }, level = 21, drop_id = 1000100 },
	{ config_id = 638, monster_id = 21010101, pos = { x = 2346.3, y = 208.4, z = -906.1 }, rot = { x = 0.0, y = 301.3, z = 0.0 }, level = 21, drop_id = 1000100 },
	{ config_id = 639, monster_id = 21010101, pos = { x = 2345.6, y = 208.4, z = -907.7 }, rot = { x = 0.0, y = 304.2, z = 0.0 }, level = 21, drop_id = 1000100 },
	{ config_id = 640, monster_id = 21010701, pos = { x = 2344.0, y = 209.2, z = -906.0 }, rot = { x = 0.0, y = 297.4, z = 0.0 }, level = 21, drop_id = 1000100 },
	{ config_id = 641, monster_id = 21010301, pos = { x = 2346.2, y = 208.5, z = -906.1 }, rot = { x = 0.0, y = 301.3, z = 0.0 }, level = 21, drop_id = 1000100 },
	{ config_id = 642, monster_id = 21010301, pos = { x = 2345.6, y = 208.4, z = -907.8 }, rot = { x = 0.0, y = 304.2, z = 0.0 }, level = 21, drop_id = 1000100 }
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
	{ name = "ANY_MONSTER_DIE_278", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_278", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_279", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_279", action = "action_EVENT_ANY_MONSTER_DIE_279" }
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
		monsters = { 637, 638, 639 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_278", "ANY_MONSTER_DIE_279" },
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
function action_EVENT_ANY_MONSTER_DIE_278(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004247") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_279(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) > 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_279(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 640, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 641, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 491001, monster_id = 28030501, pos = { x = 2232.0, y = 202.4, z = -1050.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 491002, monster_id = 28030501, pos = { x = 2220.1, y = 202.4, z = -1049.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 491003, monster_id = 28030501, pos = { x = 2245.2, y = 205.8, z = -1066.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 491004, monster_id = 28030501, pos = { x = 2245.6, y = 202.4, z = -1046.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 491005, monster_id = 28030501, pos = { x = 2201.9, y = 202.4, z = -1034.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" }
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
	{ name = "QUEST_START_491006", event = EventType.EVENT_QUEST_START, source = "2004805", condition = "condition_EVENT_QUEST_START_491006", action = "action_EVENT_QUEST_START_491006" },
	{ name = "ANY_MONSTER_DIE_491007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_491007", action = "action_EVENT_ANY_MONSTER_DIE_491007", trigger_count = 0 }
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
		monsters = { 491001, 491002, 491003, 491004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 491001, 491002, 491003, 491004, 491005 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_491006", "ANY_MONSTER_DIE_491007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_491006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 5 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_QUEST_START_491006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300349101") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_491007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 5 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_491007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300349101") then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 21010201, pos = { x = 1955.5, y = 219.8, z = -546.4 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1006, monster_id = 21010101, pos = { x = 1955.3, y = 219.5, z = -552.5 }, rot = { x = 0.0, y = 19.8, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1007, monster_id = 21010301, pos = { x = 1954.4, y = 219.7, z = -547.6 }, rot = { x = 0.0, y = 205.8, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1008, monster_id = 21010301, pos = { x = 1953.5, y = 219.9, z = -552.0 }, rot = { x = 0.0, y = 50.0, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1009, monster_id = 21030101, pos = { x = 1953.9, y = 220.8, z = -535.7 }, rot = { x = 0.0, y = 188.4, z = 0.0 }, level = 15, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1010, monster_id = 21011001, pos = { x = 1956.0, y = 219.4, z = -562.9 }, rot = { x = 0.0, y = 10.4, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1011, monster_id = 21020101, pos = { x = 1953.4, y = 219.5, z = -564.3 }, rot = { x = 0.0, y = 15.1, z = 0.0 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 1012, monster_id = 21011001, pos = { x = 1957.5, y = 221.0, z = -537.8 }, rot = { x = 0.0, y = 202.8, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_364", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364", action = "action_EVENT_ANY_MONSTER_DIE_364", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_365", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_365", action = "action_EVENT_ANY_MONSTER_DIE_365", trigger_count = 0 }
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
		monsters = { 1005, 1006, 1007, 1008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_364" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1009, 1010, 1011, 1012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_365" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_364(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022781") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_365(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_365(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022782") then
	  return -1
	end
	
	return 0
end

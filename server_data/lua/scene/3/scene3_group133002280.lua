--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1013, monster_id = 21010201, pos = { x = 2020.3, y = 204.6, z = -924.1 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1014, monster_id = 21010101, pos = { x = 2019.7, y = 204.8, z = -928.9 }, rot = { x = 0.0, y = 19.8, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1015, monster_id = 21010301, pos = { x = 2017.2, y = 205.0, z = -924.7 }, rot = { x = 0.0, y = 205.8, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1016, monster_id = 21010301, pos = { x = 2017.6, y = 205.6, z = -929.5 }, rot = { x = 0.0, y = 50.0, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 1017, monster_id = 21010501, pos = { x = 2019.0, y = 204.7, z = -915.6 }, rot = { x = 0.0, y = 188.4, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1018, monster_id = 21011001, pos = { x = 2024.7, y = 205.2, z = -936.3 }, rot = { x = 0.0, y = 336.2, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1019, monster_id = 21020201, pos = { x = 2023.2, y = 205.4, z = -937.4 }, rot = { x = 0.0, y = 345.1, z = 0.0 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 1020, monster_id = 21011001, pos = { x = 2022.3, y = 204.9, z = -915.8 }, rot = { x = 0.0, y = 202.8, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_371", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_371", action = "action_EVENT_ANY_MONSTER_DIE_371", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_372", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_372", action = "action_EVENT_ANY_MONSTER_DIE_372", trigger_count = 0 }
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
		monsters = { 1013, 1014, 1015, 1016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_371" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1017, 1018, 1019, 1020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_372" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_371(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_371(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022801") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_372(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_372(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022802") then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 940, monster_id = 21010201, pos = { x = 1979.5, y = 202.6, z = -822.1 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 941, monster_id = 21010101, pos = { x = 1978.1, y = 202.9, z = -828.4 }, rot = { x = 0.0, y = 19.8, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 942, monster_id = 21010301, pos = { x = 1982.3, y = 202.8, z = -822.4 }, rot = { x = 0.0, y = 205.8, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 943, monster_id = 21010301, pos = { x = 1977.1, y = 202.9, z = -825.6 }, rot = { x = 0.0, y = 50.0, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 944, monster_id = 21030201, pos = { x = 1977.5, y = 202.6, z = -809.3 }, rot = { x = 0.0, y = 359.5, z = 0.0 }, level = 15, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 945, monster_id = 21010201, pos = { x = 1988.9, y = 203.5, z = -833.4 }, rot = { x = 0.0, y = 301.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 946, monster_id = 21020201, pos = { x = 1985.9, y = 203.0, z = -836.7 }, rot = { x = 0.0, y = 301.3, z = 0.0 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 947, monster_id = 21010601, pos = { x = 1975.2, y = 202.5, z = -810.3 }, rot = { x = 0.0, y = 87.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_324", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_324", action = "action_EVENT_ANY_MONSTER_DIE_324", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_325", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_325", action = "action_EVENT_ANY_MONSTER_DIE_325" },
	{ name = "ANY_MONSTER_LIVE_342", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_342", action = "action_EVENT_ANY_MONSTER_LIVE_342", trigger_count = 0 }
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
		monsters = { 940, 941, 942, 943 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_324", "ANY_MONSTER_LIVE_342" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 944, 945, 946, 947 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_325" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_324(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_324(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022651") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_325(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_325(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022652") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_342(context, evt)
	if 942 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_342(context, evt)
	-- 将group 133002265 中config id为 942 的怪物血量设为 50 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002265, 942, 50) then
			return -1
		end
	
	return 0
end

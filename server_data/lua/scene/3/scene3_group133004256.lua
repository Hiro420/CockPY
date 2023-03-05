--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3, monster_id = 20011101, pos = { x = 2143.6, y = 209.7, z = -535.0 }, rot = { x = 0.0, y = 65.0, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1007, 1018 }, isElite = true },
	{ config_id = 667, monster_id = 20011001, pos = { x = 2143.0, y = 209.8, z = -536.8 }, rot = { x = 0.0, y = 65.0, z = 0.0 }, level = 27, drop_id = 1000100, disableWander = true },
	{ config_id = 668, monster_id = 20011001, pos = { x = 2141.6, y = 209.8, z = -534.4 }, rot = { x = 0.0, y = 73.7, z = 0.0 }, level = 27, drop_id = 1000100, disableWander = true }
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
	{ name = "ANY_MONSTER_LIVE_290", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_290", action = "action_EVENT_ANY_MONSTER_LIVE_290" },
	{ name = "ANY_MONSTER_DIE_292", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_292", action = "action_EVENT_ANY_MONSTER_DIE_292" }
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
		monsters = { 3 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_290", "ANY_MONSTER_DIE_292" },
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
function condition_EVENT_ANY_MONSTER_LIVE_290(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_290(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 667, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 668, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004256") then
	  return -1
	end
	
	return 0
end

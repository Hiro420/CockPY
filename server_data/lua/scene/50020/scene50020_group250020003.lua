--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010501, pos = { x = -58.3, y = -67.5, z = -174.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -45.7, y = -67.5, z = -166.9 }, rot = { x = 0.0, y = 304.4, z = 0.0 }, level = 1, affix = { 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 3003, monster_id = 21010501, pos = { x = -69.7, y = -67.5, z = -166.4 }, rot = { x = 0.0, y = 51.0, z = 0.0 }, level = 1, affix = { 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 3004, monster_id = 20011201, pos = { x = -54.7, y = -67.5, z = -167.1 }, rot = { x = 0.0, y = 298.1, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 20011201, pos = { x = -61.7, y = -67.5, z = -167.5 }, rot = { x = 0.0, y = 67.0, z = 0.0 }, level = 1 },
	{ config_id = 3006, monster_id = 21010901, pos = { x = -54.7, y = -67.5, z = -174.1 }, rot = { x = 0.0, y = 347.9, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 21010901, pos = { x = -57.5, y = -67.5, z = -174.1 }, rot = { x = 0.0, y = 352.2, z = 0.0 }, level = 1 },
	{ config_id = 3008, monster_id = 21010901, pos = { x = -60.5, y = -67.5, z = -174.1 }, rot = { x = 0.0, y = 26.6, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 20011201, pos = { x = -71.7, y = -67.5, z = -167.5 }, rot = { x = 0.0, y = 122.6, z = 0.0 }, level = 1, affix = { 1008 }, isElite = true },
	{ config_id = 3010, monster_id = 22010101, pos = { x = -58.5, y = -67.5, z = -171.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3011, monster_id = 20011201, pos = { x = -53.5, y = -67.5, z = -165.0 }, rot = { x = 0.0, y = 326.9, z = 0.0 }, level = 1 },
	{ config_id = 3012, monster_id = 20011201, pos = { x = -65.4, y = -67.5, z = -165.7 }, rot = { x = 0.0, y = 53.1, z = 0.0 }, level = 1 },
	{ config_id = 3016, monster_id = 20011201, pos = { x = -71.5, y = -67.5, z = -163.8 }, rot = { x = 0.0, y = 49.2, z = 0.0 }, level = 1, affix = { 1008 }, isElite = true },
	{ config_id = 3017, monster_id = 20011201, pos = { x = -49.5, y = -67.5, z = -167.3 }, rot = { x = 0.0, y = 33.2, z = 0.0 }, level = 1, affix = { 1008 }, isElite = true },
	{ config_id = 3018, monster_id = 20011201, pos = { x = -47.9, y = -67.5, z = -164.2 }, rot = { x = 0.0, y = 282.7, z = 0.0 }, level = 1, affix = { 1008 }, isElite = true }
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
	{ name = "ANY_MONSTER_LIVE_3013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3013", action = "action_EVENT_ANY_MONSTER_LIVE_3013" },
	{ name = "TIMER_EVENT_3014", event = EventType.EVENT_TIMER_EVENT, source = "M1", condition = "", action = "action_EVENT_TIMER_EVENT_3014" },
	{ name = "TIMER_EVENT_3015", event = EventType.EVENT_TIMER_EVENT, source = "M2", condition = "", action = "action_EVENT_TIMER_EVENT_3015" }
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
	suite = 2,
	end_suite = 0,
	rand_suite = false,
	npcs = { }
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
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3013", "TIMER_EVENT_3014", "TIMER_EVENT_3015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3016, 3017, 3018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3013", "TIMER_EVENT_3014", "TIMER_EVENT_3015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3010, 3011, 3012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3013", "TIMER_EVENT_3014", "TIMER_EVENT_3015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3013(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3013(context, evt)
	-- 延迟30秒后,向groupId为：250020003的对象,请求一次调用,并将string参数："M1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250020003, "M1", 30) then
	  return -1
	end
	
	-- 延迟60秒后,向groupId为：250020003的对象,请求一次调用,并将string参数："M2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250020003, "M2", 60) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_3014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250020003, 3)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_3015(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250020003, 4)
	
	return 0
end

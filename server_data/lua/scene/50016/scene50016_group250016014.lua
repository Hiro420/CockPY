--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49, monster_id = 21010401, pos = { x = -121.0, y = -7.8, z = -299.7 }, rot = { x = 0.0, y = 327.2, z = 0.0 }, level = 5 },
	{ config_id = 50, monster_id = 21010401, pos = { x = -137.7, y = -7.8, z = -284.7 }, rot = { x = 0.0, y = 122.4, z = 0.0 }, level = 5 },
	{ config_id = 51, monster_id = 21011001, pos = { x = -139.4, y = -7.8, z = -300.4 }, rot = { x = 0.0, y = 45.9, z = 0.0 }, level = 5 },
	{ config_id = 52, monster_id = 21011001, pos = { x = -121.2, y = -7.8, z = -284.8 }, rot = { x = 0.0, y = 225.0, z = 0.0 }, level = 5 },
	{ config_id = 53, monster_id = 20011201, pos = { x = -126.5, y = -14.3, z = -295.0 }, rot = { x = 0.0, y = 303.7, z = 0.0 }, level = 1 },
	{ config_id = 54, monster_id = 20011201, pos = { x = -136.2, y = -14.3, z = -295.0 }, rot = { x = 0.0, y = 52.3, z = 0.0 }, level = 5 },
	{ config_id = 55, monster_id = 20011201, pos = { x = -131.5, y = -14.3, z = -287.3 }, rot = { x = 0.0, y = 181.6, z = 0.0 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40, gadget_id = 70220018, pos = { x = -121.0, y = -14.3, z = -300.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 41, gadget_id = 70220018, pos = { x = -121.2, y = -14.3, z = -284.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42, gadget_id = 70220018, pos = { x = -139.7, y = -14.3, z = -300.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 43, gadget_id = 70220018, pos = { x = -138.0, y = -14.3, z = -284.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_105", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105", action = "action_EVENT_ANY_MONSTER_DIE_105", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 49, 50, 51, 52, 53, 54, 55 },
		gadgets = { 40, 41, 42, 43 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_105" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016014) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016030, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_105(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016014) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016030, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016014, 2)
	
	return 0
end

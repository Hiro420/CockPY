--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 21010401, pos = { x = -43.6, y = -7.8, z = -214.6 }, rot = { x = 0.0, y = 299.0, z = 0.0 }, level = 5 },
	{ config_id = 40, monster_id = 21010401, pos = { x = -44.0, y = -7.8, z = -216.1 }, rot = { x = 0.0, y = 251.4, z = 0.0 }, level = 5 },
	{ config_id = 41, monster_id = 21011001, pos = { x = -61.8, y = -7.8, z = -206.9 }, rot = { x = 0.0, y = 155.3, z = 0.0 }, level = 5 },
	{ config_id = 42, monster_id = 21011001, pos = { x = -60.4, y = -7.8, z = -206.3 }, rot = { x = 0.0, y = 135.6, z = 0.0 }, level = 5 },
	{ config_id = 43, monster_id = 21020101, pos = { x = -46.8, y = -14.3, z = -214.4 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 },
	{ config_id = 47, monster_id = 21010501, pos = { x = -59.9, y = -7.8, z = -226.5 }, rot = { x = 0.0, y = 52.3, z = 0.0 }, level = 5 },
	{ config_id = 48, monster_id = 21010501, pos = { x = -60.9, y = -7.8, z = -225.3 }, rot = { x = 0.0, y = 30.7, z = 0.0 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16, gadget_id = 70220018, pos = { x = -42.7, y = -14.3, z = -216.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 17, gadget_id = 70220018, pos = { x = -42.7, y = -14.3, z = -214.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18, gadget_id = 70220018, pos = { x = -44.9, y = -14.3, z = -214.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 19, gadget_id = 70220018, pos = { x = -44.9, y = -14.3, z = -216.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20, gadget_id = 70220018, pos = { x = -59.8, y = -14.3, z = -207.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 21, gadget_id = 70220018, pos = { x = -59.8, y = -14.3, z = -205.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 22, gadget_id = 70220018, pos = { x = -62.0, y = -14.3, z = -205.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 23, gadget_id = 70220018, pos = { x = -62.0, y = -14.3, z = -207.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 24, gadget_id = 70220018, pos = { x = -59.4, y = -14.3, z = -227.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25, gadget_id = 70220018, pos = { x = -59.4, y = -14.3, z = -225.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 26, gadget_id = 70220018, pos = { x = -61.6, y = -14.3, z = -225.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 27, gadget_id = 70220018, pos = { x = -61.6, y = -14.3, z = -227.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_100", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100", action = "action_EVENT_ANY_MONSTER_DIE_100", trigger_count = 0 }
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
		monsters = { 39, 40, 41, 42, 43, 47, 48 },
		gadgets = { 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016009, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016011) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016029, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016011, 2)
	
	return 0
end

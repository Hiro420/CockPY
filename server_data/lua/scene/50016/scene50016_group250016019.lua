--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 73, monster_id = 20011001, pos = { x = -211.7, y = -11.0, z = -288.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 74, monster_id = 20011001, pos = { x = -209.3, y = -11.0, z = -289.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 75, monster_id = 20011001, pos = { x = -209.2, y = -11.0, z = -293.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 76, monster_id = 20011001, pos = { x = -211.8, y = -11.0, z = -295.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 77, monster_id = 20011101, pos = { x = -207.3, y = -11.0, z = -291.7 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_50", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50", action = "action_EVENT_ANY_MONSTER_DIE_50", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_112", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_112", action = "action_EVENT_ANY_MONSTER_DIE_112", trigger_count = 0 }
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
		monsters = { 73, 74, 75, 76, 77 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_112" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_50(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016019) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016017, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_112(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016019) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_112(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016031, 1)
	
	return 0
end

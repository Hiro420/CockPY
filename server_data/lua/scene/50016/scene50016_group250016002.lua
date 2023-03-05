--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8, monster_id = 21010701, pos = { x = -50.7, y = -10.7, z = -50.6 }, rot = { x = 0.0, y = 226.0, z = 0.0 }, level = 5 },
	{ config_id = 9, monster_id = 21010701, pos = { x = -48.1, y = -10.7, z = -52.8 }, rot = { x = 0.0, y = 256.2, z = 0.0 }, level = 5 },
	{ config_id = 10, monster_id = 21010101, pos = { x = -48.7, y = -10.7, z = -57.5 }, rot = { x = 0.0, y = 306.0, z = 0.0 }, level = 5 },
	{ config_id = 11, monster_id = 21010101, pos = { x = -51.1, y = -10.7, z = -59.1 }, rot = { x = 0.0, y = 301.1, z = 0.0 }, level = 5 },
	{ config_id = 13, monster_id = 21010101, pos = { x = -46.1, y = -10.7, z = -55.2 }, rot = { x = 0.0, y = 306.0, z = 0.0 }, level = 5 }
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
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_87", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87", action = "action_EVENT_ANY_MONSTER_DIE_87", trigger_count = 0 }
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
		monsters = { 8, 9, 10, 11, 13 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_87" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016003, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016027, 1)
	
	return 0
end

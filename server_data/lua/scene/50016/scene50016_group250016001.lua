--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011201, pos = { x = -52.6, y = -11.0, z = -49.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 1002, monster_id = 20011201, pos = { x = -50.1, y = -11.0, z = -51.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 1003, monster_id = 20011201, pos = { x = -50.1, y = -11.0, z = -54.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 1004, monster_id = 20011201, pos = { x = -52.7, y = -11.0, z = -56.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 1005, monster_id = 22010101, pos = { x = -48.1, y = -11.0, z = -53.1 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3", action = "action_EVENT_ANY_MONSTER_DIE_3", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_86", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86", action = "action_EVENT_ANY_MONSTER_DIE_86", trigger_count = 0 }
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
		monsters = { 1001, 1002, 1003, 1004, 1005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016003, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016027, 1)
	
	return 0
end

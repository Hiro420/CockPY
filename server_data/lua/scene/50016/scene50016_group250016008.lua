--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29, monster_id = 20011501, pos = { x = -48.6, y = -11.0, z = -132.0 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 },
	{ config_id = 30, monster_id = 20010501, pos = { x = -48.7, y = -11.0, z = -129.8 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 },
	{ config_id = 31, monster_id = 20010501, pos = { x = -49.2, y = -11.0, z = -134.0 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 },
	{ config_id = 32, monster_id = 20010501, pos = { x = -46.8, y = -11.0, z = -132.0 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 },
	{ config_id = 33, monster_id = 20010501, pos = { x = -50.8, y = -11.0, z = -131.9 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_16", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16", action = "action_EVENT_ANY_MONSTER_DIE_16", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_95", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95", action = "action_EVENT_ANY_MONSTER_DIE_95", trigger_count = 0 }
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
		monsters = { 29, 30, 31, 32, 33 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016008) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016004, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016008) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016028, 1)
	
	return 0
end

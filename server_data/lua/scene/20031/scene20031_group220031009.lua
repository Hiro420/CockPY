--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 20011401, pos = { x = 7.0, y = 42.0, z = 102.8 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 1 },
	{ config_id = 9002, monster_id = 20011401, pos = { x = -4.4, y = 42.0, z = 103.4 }, rot = { x = 0.0, y = 142.4, z = 0.0 }, level = 1 },
	{ config_id = 9003, monster_id = 20011401, pos = { x = 6.9, y = 42.0, z = 93.8 }, rot = { x = 0.0, y = 283.7, z = 0.0 }, level = 1 },
	{ config_id = 9005, monster_id = 20011401, pos = { x = -4.5, y = 42.0, z = 93.4 }, rot = { x = 0.0, y = 47.8, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_9004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9004", action = "action_EVENT_ANY_MONSTER_DIE_9004" }
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
		monsters = { 9001, 9002, 9003, 9005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220031009) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031010, 2)
	
	return 0
end

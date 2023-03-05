--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010201, pos = { x = 58.6, y = 16.5, z = -10.5 }, rot = { x = 0.0, y = 47.6, z = 0.0 }, level = 1 },
	{ config_id = 2002, monster_id = 21010201, pos = { x = 58.6, y = 16.5, z = 5.4 }, rot = { x = 0.0, y = 109.5, z = 0.0 }, level = 1 },
	{ config_id = 2003, monster_id = 21010201, pos = { x = 55.6, y = 16.5, z = -2.2 }, rot = { x = 0.0, y = 102.5, z = 0.0 }, level = 1 },
	{ config_id = 2004, monster_id = 21010201, pos = { x = 68.2, y = 16.5, z = -11.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2005, monster_id = 21010201, pos = { x = 67.5, y = 16.5, z = 8.0 }, rot = { x = 0.0, y = 171.0, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" }
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
		monsters = { 2001, 2002, 2003, 2004, 2005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2006" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201019002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201019003, suite = 1 }) then
			return -1
		end
	
	return 0
end

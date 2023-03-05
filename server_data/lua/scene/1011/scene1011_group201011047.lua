--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236, monster_id = 21010201, pos = { x = 22.4, y = 0.8, z = -132.1 }, rot = { x = 0.0, y = 97.4, z = 0.0 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 237, monster_id = 21010201, pos = { x = 22.1, y = 0.8, z = -141.5 }, rot = { x = 0.0, y = 84.6, z = 0.0 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 238, monster_id = 21010701, pos = { x = 25.8, y = 0.8, z = -137.0 }, rot = { x = 0.0, y = 87.2, z = 0.0 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 239, monster_id = 21020201, pos = { x = 21.4, y = 0.8, z = -137.0 }, rot = { x = 0.0, y = 92.1, z = 0.0 }, level = 7, disableWander = true, affix = { 1008, 1018 }, isElite = true },
	{ config_id = 262, monster_id = 20011201, pos = { x = 25.7, y = 0.8, z = -143.5 }, rot = { x = 0.0, y = 46.6, z = 0.0 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 263, monster_id = 20011201, pos = { x = 25.5, y = 0.8, z = -130.4 }, rot = { x = 0.0, y = 118.9, z = 0.0 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true }
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
	{ name = "ANY_MONSTER_DIE_156", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156", action = "action_EVENT_ANY_MONSTER_DIE_156" }
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
		monsters = { 236, 237, 238, 239, 262, 263 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011051, suite = 2 }) then
			return -1
		end
	
	return 0
end

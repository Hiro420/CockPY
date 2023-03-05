--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25020201, pos = { x = -645.5, y = 221.4, z = 667.7 }, rot = { x = 0.0, y = 356.4, z = 0.0 }, level = 20, drop_id = 1000100, disableWander = true },
	{ config_id = 5002, monster_id = 25020201, pos = { x = -648.5, y = 221.8, z = 676.4 }, rot = { x = 0.0, y = 40.4, z = 0.0 }, level = 20, drop_id = 1000100, disableWander = true },
	{ config_id = 5003, monster_id = 25010201, pos = { x = -646.9, y = 221.3, z = 675.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_id = 1000100 },
	{ config_id = 5004, monster_id = 25010201, pos = { x = -642.0, y = 221.3, z = 674.9 }, rot = { x = 0.0, y = 301.1, z = 0.0 }, level = 20, drop_id = 1000100 }
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
	{ name = "ANY_MONSTER_DIE_5005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5005", action = "action_EVENT_ANY_MONSTER_DIE_5005" }
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
		monsters = { 5001, 5002, 5003, 5004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "301001005") then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1772, monster_id = 21020201, pos = { x = 2310.3, y = 275.5, z = -1639.5 }, rot = { x = 0.0, y = 224.1, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, affix = { 1007 }, isElite = true, pose_id = 401 },
	{ config_id = 1773, monster_id = 21010201, pos = { x = 2311.1, y = 275.2, z = -1645.4 }, rot = { x = 0.0, y = 303.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 1774, monster_id = 21010201, pos = { x = 2305.4, y = 275.4, z = -1641.8 }, rot = { x = 0.0, y = 125.4, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 1775, monster_id = 21010201, pos = { x = 2306.2, y = 275.5, z = -1647.0 }, rot = { x = 0.0, y = 22.5, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 489001, monster_id = 21030201, pos = { x = 2306.3, y = 275.5, z = -1637.7 }, rot = { x = 0.0, y = 153.6, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4595, gadget_id = 70310006, pos = { x = 2308.3, y = 275.3, z = -1643.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_609", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_609", action = "action_EVENT_ANY_MONSTER_DIE_609" }
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
		monsters = { 1772, 1773, 1774, 1775, 489001 },
		gadgets = { 4595 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_609" },
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
function condition_EVENT_ANY_MONSTER_DIE_609(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_609(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003489") then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 995, monster_id = 20011201, pos = { x = 1712.1, y = 263.2, z = -1295.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 996, monster_id = 20011201, pos = { x = 1707.9, y = 262.9, z = -1291.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 997, monster_id = 20011201, pos = { x = 1708.2, y = 263.4, z = -1298.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 998, monster_id = 20011301, pos = { x = 1709.5, y = 263.1, z = -1293.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
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
	{ name = "ANY_MONSTER_DIE_231001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231001", action = "action_EVENT_ANY_MONSTER_DIE_231001", trigger_count = 0 }
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
		monsters = { 995, 996, 997, 998 },
		gadgets = { },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 995, 996, 997 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_231001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_231001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_231001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330012311") then
	  return -1
	end
	
	return 0
end

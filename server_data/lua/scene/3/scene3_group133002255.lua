--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 877, monster_id = 21010301, pos = { x = 1920.9, y = 205.3, z = -742.7 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 13, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 878, monster_id = 21010301, pos = { x = 1923.0, y = 205.0, z = -742.4 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 13, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 879, monster_id = 21010301, pos = { x = 1925.5, y = 204.8, z = -742.3 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 13, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 880, monster_id = 21010301, pos = { x = 1927.7, y = 204.8, z = -742.8 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 13, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 881, monster_id = 21030101, pos = { x = 1924.2, y = 205.2, z = -738.4 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 12, drop_tag = "丘丘萨满", disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_300", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_300", action = "action_EVENT_ANY_MONSTER_DIE_300" }
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
		monsters = { 877, 878, 879, 880, 881 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_300" },
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
function condition_EVENT_ANY_MONSTER_DIE_300(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_300(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002255") then
	  return -1
	end
	
	return 0
end

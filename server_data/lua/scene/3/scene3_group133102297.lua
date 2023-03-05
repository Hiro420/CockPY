--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 23020101, pos = { x = 1184.1, y = 209.5, z = 258.3 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 16, drop_tag = "债务处理人", disableWander = true },
	{ config_id = 297002, monster_id = 21010601, pos = { x = 1181.8, y = 209.6, z = 257.3 }, rot = { x = 0.0, y = 157.2, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 297004, monster_id = 21010101, pos = { x = 1184.7, y = 209.6, z = 255.3 }, rot = { x = 0.0, y = 245.2, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 297005, monster_id = 21030101, pos = { x = 1186.3, y = 209.5, z = 255.7 }, rot = { x = 0.0, y = 161.3, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true }
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
	{ name = "ANY_MONSTER_DIE_297003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297003", action = "action_EVENT_ANY_MONSTER_DIE_297003" }
}

-- 变量
variables = {
	{ name = "isAcceptQuest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 297002, 297004, 297005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 297001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_297003" },
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
function condition_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	if 297001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102073362") then
	  return -1
	end
	
	return 0
end

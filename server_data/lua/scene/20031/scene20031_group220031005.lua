--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21020301, pos = { x = 191.6, y = 46.0, z = 180.1 }, rot = { x = 0.0, y = 183.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 5002, monster_id = 21010901, pos = { x = 197.2, y = 46.0, z = 177.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 5003, monster_id = 21011001, pos = { x = 185.4, y = 46.0, z = 178.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70300115, pos = { x = 233.5, y = 21.8, z = 259.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5006, gadget_id = 70211021, pos = { x = 190.5, y = 46.0, z = 178.6 }, rot = { x = 0.0, y = 179.4, z = 0.0 }, level = 1, chest_drop_id = 18001100, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_5004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5004", action = "action_EVENT_ANY_MONSTER_DIE_5004" }
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
		monsters = { 5001, 5002, 5003 },
		gadgets = { 5005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5006 },
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
function condition_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220031005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220031005") then
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031005, 2)
	
	return 0
end

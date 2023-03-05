--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1387, monster_id = 21010601, pos = { x = 2910.6, y = 251.5, z = -1649.9 }, rot = { x = 0.0, y = 255.8, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1388, monster_id = 21010301, pos = { x = 2908.2, y = 251.5, z = -1652.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1389, monster_id = 21010701, pos = { x = 2906.5, y = 251.7, z = -1649.0 }, rot = { x = 0.0, y = 128.6, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 1390, monster_id = 21010101, pos = { x = 2903.5, y = 251.7, z = -1653.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人" },
	{ config_id = 408001, monster_id = 21010301, pos = { x = 2905.5, y = 251.7, z = -1650.3 }, rot = { x = 0.0, y = 101.4, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 408002, monster_id = 21010201, pos = { x = 2909.2, y = 251.6, z = -1647.7 }, rot = { x = 0.0, y = 219.3, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9013 },
	{ config_id = 408003, monster_id = 21010201, pos = { x = 2910.1, y = 251.4, z = -1652.4 }, rot = { x = 0.0, y = 325.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3423, gadget_id = 70900015, pos = { x = 2907.4, y = 251.1, z = -1655.0 }, rot = { x = 0.0, y = 242.2, z = 0.0 }, level = 30 },
	{ config_id = 3424, gadget_id = 70900016, pos = { x = 2912.7, y = 248.8, z = -1648.7 }, rot = { x = 0.0, y = 158.8, z = 0.0 }, level = 30 },
	{ config_id = 3425, gadget_id = 70900019, pos = { x = 2904.4, y = 251.6, z = -1646.9 }, rot = { x = 0.0, y = 308.3, z = 0.0 }, level = 30 },
	{ config_id = 3976, gadget_id = 70310004, pos = { x = 2908.2, y = 251.6, z = -1650.6 }, rot = { x = 0.0, y = 106.7, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 3977, gadget_id = 70211011, pos = { x = 2908.1, y = 259.3, z = -1655.8 }, rot = { x = 0.0, y = 329.2, z = 0.0 }, level = 30, drop_tag = "战斗中级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_408004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_408004", action = "action_EVENT_ANY_MONSTER_DIE_408004", trigger_count = 0 }
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
	rand_suite = true
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
		monsters = { 1387, 1388, 1389, 1390 },
		gadgets = { 3423, 3424, 3425, 3976, 3977 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 408001, 408002, 408003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_408004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_408004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_408004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034081") then
	  return -1
	end
	
	return 0
end

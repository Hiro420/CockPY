--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 761, monster_id = 20011201, pos = { x = 2642.2, y = 202.9, z = -675.9 }, rot = { x = 0.0, y = 133.4, z = 0.0 }, level = 13, drop_id = 1000100, pose_id = 901 },
	{ config_id = 762, monster_id = 20011201, pos = { x = 2650.2, y = 203.0, z = -670.2 }, rot = { x = 0.0, y = 201.9, z = 0.0 }, level = 13, drop_id = 1000100, pose_id = 901 },
	{ config_id = 763, monster_id = 20011201, pos = { x = 2646.6, y = 202.7, z = -683.5 }, rot = { x = 0.0, y = 14.8, z = 0.0 }, level = 13, drop_id = 1000100, pose_id = 901 },
	{ config_id = 764, monster_id = 20011201, pos = { x = 2645.8, y = 203.0, z = -672.8 }, rot = { x = 0.0, y = 153.8, z = 0.0 }, level = 13, drop_id = 1000100, pose_id = 901 },
	{ config_id = 765, monster_id = 20011201, pos = { x = 2654.2, y = 203.0, z = -674.8 }, rot = { x = 0.0, y = 226.3, z = 0.0 }, level = 13, drop_id = 1000100, pose_id = 901 },
	{ config_id = 766, monster_id = 20011201, pos = { x = 2651.0, y = 203.0, z = -672.3 }, rot = { x = 0.0, y = 226.3, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 767, monster_id = 20011201, pos = { x = 2643.6, y = 203.0, z = -679.4 }, rot = { x = 0.0, y = 78.5, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 768, monster_id = 20011201, pos = { x = 2649.7, y = 202.8, z = -684.0 }, rot = { x = 0.0, y = 335.0, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 769, monster_id = 20011201, pos = { x = 2643.6, y = 202.9, z = -673.3 }, rot = { x = 0.0, y = 174.2, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 770, monster_id = 20011201, pos = { x = 2643.8, y = 202.8, z = -682.1 }, rot = { x = 0.0, y = 174.2, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 771, monster_id = 20011201, pos = { x = 2653.0, y = 202.8, z = -684.2 }, rot = { x = 0.0, y = 319.7, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 901 },
	{ config_id = 772, monster_id = 20011201, pos = { x = 2654.9, y = 202.9, z = -670.8 }, rot = { x = 0.0, y = 239.6, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 901 },
	{ config_id = 773, monster_id = 20011201, pos = { x = 2644.6, y = 203.0, z = -676.3 }, rot = { x = 0.0, y = 97.6, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 901 },
	{ config_id = 774, monster_id = 20011201, pos = { x = 2647.6, y = 202.9, z = -682.0 }, rot = { x = 0.0, y = 353.1, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 901 },
	{ config_id = 780, monster_id = 20011301, pos = { x = 2658.4, y = 202.8, z = -672.3 }, rot = { x = 0.0, y = 268.1, z = 0.0 }, level = 16, drop_id = 1000100, affix = { 1008, 1009, 1018 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1472, gadget_id = 70300086, pos = { x = 2643.4, y = 201.4, z = -665.3 }, rot = { x = 0.0, y = 0.0, z = 281.1 }, level = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_317", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_317", action = "action_EVENT_ANY_MONSTER_LIVE_317" },
	{ name = "CHALLENGE_SUCCESS_318", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3004268", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_318" },
	{ name = "ANY_MONSTER_DIE_319", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_319", action = "action_EVENT_ANY_MONSTER_DIE_319" },
	{ name = "ANY_MONSTER_DIE_320", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_320", action = "action_EVENT_ANY_MONSTER_DIE_320" },
	{ name = "CHALLENGE_FAIL_321", event = EventType.EVENT_CHALLENGE_FAIL, source = "3004268", condition = "", action = "action_EVENT_CHALLENGE_FAIL_321" }
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
		gadgets = { 1472 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 761, 762, 763, 764, 765 },
		gadgets = { 1472 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_317", "CHALLENGE_SUCCESS_318", "ANY_MONSTER_DIE_319", "CHALLENGE_FAIL_321" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 766, 767, 768, 769, 770 },
		gadgets = { 1472 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_320" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 771, 772, 773, 774, 780 },
		gadgets = { 1472 },
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
function condition_EVENT_ANY_MONSTER_LIVE_317(context, evt)
	if 761 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_317(context, evt)
	-- 创建编号为3004268（该挑战的识别id),挑战内容为3001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 3004268, 3001, 120, 133004268, 10, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_318(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300426103") then
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004268, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_319(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_319(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004268, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_320(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_320(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004268, 4)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_321(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300426104") then
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004268, suite = 1 }) then
			return -1
		end
	
	return 0
end

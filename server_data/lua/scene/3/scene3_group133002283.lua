--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1026, monster_id = 20010801, pos = { x = 1617.4, y = 200.0, z = -317.3 }, rot = { x = 0.0, y = 7.6, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 1027, monster_id = 20010801, pos = { x = 1634.1, y = 200.0, z = -311.1 }, rot = { x = 0.0, y = 7.6, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 1028, monster_id = 20010801, pos = { x = 1627.9, y = 200.0, z = -310.5 }, rot = { x = 0.0, y = 7.6, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 1029, monster_id = 20010801, pos = { x = 1624.2, y = 200.0, z = -314.7 }, rot = { x = 0.0, y = 7.6, z = 0.0 }, level = 15, drop_id = 1000100, pose_id = 901 },
	{ config_id = 1030, monster_id = 20010901, pos = { x = 1631.2, y = 200.0, z = -309.7 }, rot = { x = 0.0, y = 7.6, z = 0.0 }, level = 15, drop_id = 1000100, affix = { 1006 }, isElite = true },
	{ config_id = 1031, monster_id = 20010801, pos = { x = 1634.5, y = 200.0, z = -313.8 }, rot = { x = 0.0, y = 7.6, z = 0.0 }, level = 15, drop_id = 1000100, affix = { 1006 }, isElite = true, pose_id = 901 },
	{ config_id = 1032, monster_id = 20010801, pos = { x = 1626.9, y = 200.0, z = -315.0 }, rot = { x = 0.0, y = 73.7, z = 0.0 }, level = 15, drop_id = 1000100, affix = { 1006 }, isElite = true, pose_id = 901 },
	{ config_id = 1033, monster_id = 20010801, pos = { x = 1625.2, y = 200.0, z = -310.3 }, rot = { x = 0.0, y = 131.2, z = 0.0 }, level = 15, drop_id = 1000100, affix = { 1006 }, isElite = true, pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2365, gadget_id = 70300086, pos = { x = 1627.5, y = 189.0, z = -320.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_377", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_377", action = "action_EVENT_ANY_MONSTER_LIVE_377" },
	{ name = "ANY_MONSTER_DIE_378", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_378", action = "action_EVENT_ANY_MONSTER_DIE_378" },
	{ name = "CHALLENGE_SUCCESS_379", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_379" },
	{ name = "CHALLENGE_FAIL_380", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_380" }
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
		gadgets = { 2365 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1026, 1027, 1028, 1029 },
		gadgets = { 2365 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_377", "ANY_MONSTER_DIE_378", "CHALLENGE_SUCCESS_379", "CHALLENGE_FAIL_380" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_377(context, evt)
	if 1026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_377(context, evt)
	-- 创建编号为1001（该挑战的识别id),挑战内容为3001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 3001, 180, 133002283, 8, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_378(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_378(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1030, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1031, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1032, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1033, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_379(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228304") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_380(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002283, suite = 1 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228305") then
	  return -1
	end
	
	return 0
end

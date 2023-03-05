--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20010501, pos = { x = 6.5, y = 0.0, z = 9.3 }, rot = { x = 0.0, y = 195.6, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4002, monster_id = 20010501, pos = { x = -6.7, y = 0.0, z = 9.2 }, rot = { x = 0.0, y = 159.1, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4003, monster_id = 20010501, pos = { x = -6.9, y = 0.0, z = -9.4 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4004, monster_id = 21010901, pos = { x = 11.0, y = 0.0, z = 1.8 }, rot = { x = 0.0, y = 263.5, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4005, monster_id = 20010501, pos = { x = 5.9, y = 0.0, z = -10.0 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4006, monster_id = 20010601, pos = { x = 0.1, y = 0.0, z = 9.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4007, monster_id = 20010501, pos = { x = 3.9, y = 0.0, z = 11.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4008, monster_id = 20010501, pos = { x = -3.6, y = 0.0, z = 11.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4009, monster_id = 21010902, pos = { x = 0.0, y = 0.0, z = -9.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4010, monster_id = 21010901, pos = { x = 2.6, y = 0.0, z = 9.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4011, monster_id = 20030102, pos = { x = 0.1, y = 0.0, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4012, monster_id = 21010902, pos = { x = 3.6, y = 0.0, z = -9.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 32 },
	{ config_id = 4014, monster_id = 21010902, pos = { x = -3.6, y = 0.0, z = -9.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 32 },
	{ config_id = 4015, monster_id = 21010902, pos = { x = 0.1, y = 0.0, z = 12.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4018, monster_id = 20030102, pos = { x = 5.2, y = 0.0, z = 9.4 }, rot = { x = 0.0, y = 198.9, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4019, monster_id = 20010601, pos = { x = 2.6, y = 0.0, z = 9.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4020, monster_id = 23030101, pos = { x = 0.0, y = 0.0, z = -7.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221, 9002 }, isElite = true },
	{ config_id = 4024, monster_id = 21010901, pos = { x = -11.6, y = 0.0, z = 1.4 }, rot = { x = 0.0, y = 90.9, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4026, monster_id = 20010701, pos = { x = -2.3, y = 0.0, z = 9.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4027, monster_id = 20030102, pos = { x = -4.9, y = 0.0, z = 9.6 }, rot = { x = 0.0, y = 161.9, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4029, monster_id = 21010901, pos = { x = -2.3, y = 0.0, z = 9.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4031, gadget_id = 70900205, pos = { x = 6.2, y = -1.2, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_4032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4032", action = "action_EVENT_ANY_MONSTER_LIVE_4032" },
	{ name = "ANY_MONSTER_DIE_4033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4033", action = "action_EVENT_ANY_MONSTER_DIE_4033" },
	{ name = "ANY_MONSTER_DIE_4034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4034", action = "action_EVENT_ANY_MONSTER_DIE_4034" },
	{ name = "ANY_MONSTER_DIE_4035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4035", action = "action_EVENT_ANY_MONSTER_DIE_4035" },
	{ name = "CHALLENGE_SUCCESS_4036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4036" },
	{ name = "CHALLENGE_FAIL_4037", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4037" },
	{ name = "ANY_MONSTER_DIE_4038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4038", action = "action_EVENT_ANY_MONSTER_DIE_4038" }
}

-- 变量
variables = {
	{ name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 4031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4003, 4004, 4005, 4024 },
		gadgets = { 4031 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4032", "ANY_MONSTER_DIE_4033", "CHALLENGE_SUCCESS_4036", "CHALLENGE_FAIL_4037" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4006, 4007, 4008, 4009 },
		gadgets = { 4031 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4034", "CHALLENGE_SUCCESS_4036", "CHALLENGE_FAIL_4037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4012, 4014, 4019, 4026 },
		gadgets = { 4031 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4035", "CHALLENGE_SUCCESS_4036", "CHALLENGE_FAIL_4037" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4011, 4015, 4018, 4027 },
		gadgets = { 4031 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4036", "CHALLENGE_FAIL_4037", "ANY_MONSTER_DIE_4038" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 4010, 4020, 4029 },
		gadgets = { 4031 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4036", "CHALLENGE_FAIL_4037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4032(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4032(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从231002001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 231002001)
	  if tpl_time == nil or tpl_time < 0 then
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 231002004, 21, 0) then
	    return -1
	  end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231002004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4033(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231002004, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231002004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4034(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231002004, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4035(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231002004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4035(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231002004, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4036(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 231002001) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4037(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231002004, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4038(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231002004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4038(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231002004, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

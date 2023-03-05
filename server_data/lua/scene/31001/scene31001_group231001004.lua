--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 21010901, pos = { x = -6.0, y = 0.0, z = 8.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4003, monster_id = 21010901, pos = { x = 6.2, y = 0.0, z = 8.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4004, monster_id = 20010501, pos = { x = 0.0, y = 0.0, z = -12.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4005, monster_id = 20010501, pos = { x = 6.1, y = 0.0, z = -10.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4006, monster_id = 20010601, pos = { x = -12.1, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4007, monster_id = 20010901, pos = { x = 12.2, y = 0.0, z = -0.2 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1, affix = { 1029, 1221 }, isElite = true },
	{ config_id = 4008, monster_id = 20010601, pos = { x = 0.3, y = 0.0, z = 9.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4009, monster_id = 20010501, pos = { x = 6.3, y = 0.0, z = 8.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4010, monster_id = 20010501, pos = { x = -6.1, y = 0.0, z = 8.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4011, monster_id = 21010902, pos = { x = -0.1, y = 0.0, z = -12.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 32 },
	{ config_id = 4013, monster_id = 20010601, pos = { x = -12.0, y = 0.0, z = -2.4 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4014, monster_id = 20010701, pos = { x = -12.0, y = 0.0, z = 2.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4015, monster_id = 21010902, pos = { x = 12.2, y = 0.0, z = -0.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4018, monster_id = 22010204, pos = { x = 0.1, y = 0.0, z = -8.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1029, 1221 }, isElite = true },
	{ config_id = 4019, monster_id = 20010601, pos = { x = -7.3, y = 0.0, z = 7.4 }, rot = { x = 0.0, y = 134.7, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4020, monster_id = 20010701, pos = { x = 7.3, y = 0.0, z = 7.3 }, rot = { x = 0.0, y = 215.8, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4021, monster_id = 20010501, pos = { x = -6.1, y = 0.0, z = -11.1 }, rot = { x = 0.0, y = 358.1, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4022, gadget_id = 70900205, pos = { x = 6.2, y = -1.2, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_4023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4023", action = "action_EVENT_ANY_MONSTER_LIVE_4023" },
	{ name = "ANY_MONSTER_DIE_4024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4024", action = "action_EVENT_ANY_MONSTER_DIE_4024" },
	{ name = "ANY_MONSTER_DIE_4025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4025", action = "action_EVENT_ANY_MONSTER_DIE_4025" },
	{ name = "ANY_MONSTER_DIE_4026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4026", action = "action_EVENT_ANY_MONSTER_DIE_4026" },
	{ name = "CHALLENGE_SUCCESS_4027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4027" },
	{ name = "CHALLENGE_FAIL_4028", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4028" },
	{ name = "ANY_MONSTER_DIE_4029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4029", action = "action_EVENT_ANY_MONSTER_DIE_4029" }
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
		gadgets = { 4022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4002, 4003, 4004, 4005, 4021 },
		gadgets = { 4022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4023", "ANY_MONSTER_DIE_4024", "CHALLENGE_SUCCESS_4027", "CHALLENGE_FAIL_4028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4006, 4007 },
		gadgets = { 4022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4025", "CHALLENGE_SUCCESS_4027", "CHALLENGE_FAIL_4028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4008, 4009, 4010, 4011 },
		gadgets = { 4022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4026", "CHALLENGE_SUCCESS_4027", "CHALLENGE_FAIL_4028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4013, 4014, 4015 },
		gadgets = { 4022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4027", "CHALLENGE_FAIL_4028", "ANY_MONSTER_DIE_4029" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 4018, 4019, 4020 },
		gadgets = { 4022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4027", "CHALLENGE_FAIL_4028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4023(context, evt)
	if 4002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4023(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从231001001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 231001001)
	  if tpl_time == nil or tpl_time < 0 then
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 231001004, 17, 0) then
	    return -1
	  end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231001004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231001004, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231001004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231001004, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231001004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231001004, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4027(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 231001001) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231001004, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231001004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4029(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231001004, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

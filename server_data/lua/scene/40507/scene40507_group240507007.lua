--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20010801, pos = { x = 7.8, y = -0.1, z = -6.6 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 7002, monster_id = 20010801, pos = { x = -5.4, y = -0.1, z = -6.6 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 7003, monster_id = 21010301, pos = { x = -5.0, y = -0.1, z = -11.5 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 7004, monster_id = 21010301, pos = { x = 1.5, y = -0.1, z = -13.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7005, monster_id = 21010301, pos = { x = 9.4, y = -0.1, z = -13.3 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 7006, monster_id = 20010801, pos = { x = -9.7, y = -0.1, z = -2.7 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 7007, monster_id = 20010801, pos = { x = 13.4, y = -0.1, z = -2.4 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 7008, monster_id = 20010801, pos = { x = 1.8, y = -0.1, z = 6.0 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 7009, monster_id = 20010901, pos = { x = 6.0, y = -0.1, z = -8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7010, monster_id = 20010901, pos = { x = -4.3, y = -0.1, z = -9.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7011, monster_id = 21010901, pos = { x = 13.6, y = -0.1, z = 0.0 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 7012, monster_id = 21010901, pos = { x = 13.1, y = -0.1, z = -9.7 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 7013, monster_id = 21010901, pos = { x = 5.8, y = -0.1, z = -12.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 7014, monster_id = 21010901, pos = { x = -11.4, y = -0.1, z = -6.8 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 7015, monster_id = 21010901, pos = { x = -12.9, y = -0.1, z = 0.8 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 7016, monster_id = 22010202, pos = { x = -1.5, y = -0.1, z = -14.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7017, monster_id = 20010801, pos = { x = -9.9, y = -0.1, z = 0.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7018, monster_id = 20010801, pos = { x = 11.1, y = -0.1, z = -2.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7019, monster_id = 20010801, pos = { x = -0.1, y = -0.1, z = 7.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7020, monster_id = 20010801, pos = { x = 6.1, y = -0.1, z = 6.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7021, monster_id = 21010301, pos = { x = 14.4, y = -0.2, z = -5.4 }, rot = { x = 0.0, y = 274.8, z = 0.0 }, level = 1 },
	{ config_id = 7022, monster_id = 21010301, pos = { x = -12.5, y = -0.2, z = -2.9 }, rot = { x = 0.0, y = 93.5, z = 0.0 }, level = 1 },
	{ config_id = 7023, monster_id = 21010301, pos = { x = 3.6, y = -0.2, z = -13.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7024, monster_id = 20010801, pos = { x = -6.0, y = -0.2, z = 4.1 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1 },
	{ config_id = 7025, monster_id = 20010801, pos = { x = 7.2, y = -0.2, z = 4.1 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7026, gadget_id = 70900205, pos = { x = 7.8, y = -1.5, z = 1.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7027, gadget_id = 70350034, pos = { x = 0.9, y = 0.0, z = -9.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_7028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7028", action = "action_EVENT_ANY_MONSTER_LIVE_7028" },
	{ name = "ANY_MONSTER_DIE_7029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7029", action = "action_EVENT_ANY_MONSTER_DIE_7029" },
	{ name = "ANY_MONSTER_DIE_7030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7030", action = "action_EVENT_ANY_MONSTER_DIE_7030" },
	{ name = "ANY_MONSTER_DIE_7031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7031", action = "action_EVENT_ANY_MONSTER_DIE_7031" },
	{ name = "CHALLENGE_SUCCESS_7032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7032" },
	{ name = "CHALLENGE_FAIL_7033", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7033" },
	{ name = "ANY_MONSTER_DIE_7034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7034", action = "action_EVENT_ANY_MONSTER_DIE_7034" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 7001, 7002, 7003, 7004, 7005 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7028", "ANY_MONSTER_DIE_7029", "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 7006, 7007, 7008, 7009, 7010 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7030", "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 7011, 7012, 7013, 7014, 7015 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7031", "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 7016, 7017, 7018, 7019, 7020 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 7021, 7022, 7023, 7024, 7025 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7028(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7028(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240507007, 25, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240507007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240507007, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240507007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240507007, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240507007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240507007, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7032(context, evt)
	-- 改变指定group组240507005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240507005, 5002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240507007中， configid为7027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240507007, 7027, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7033(context, evt)
	-- 改变指定group组240507006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240507006, 6001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240507006, 6001, {7}) then
		return -1
	end
	
	-- 改变指定group组240507005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240507005, 5001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240507005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240507005, 5002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240507007, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240507007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240507007, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

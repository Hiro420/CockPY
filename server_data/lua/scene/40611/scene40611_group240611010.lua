--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21010501, pos = { x = 13.2, y = 0.1, z = -10.6 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 10002, monster_id = 21010501, pos = { x = -10.1, y = 0.1, z = -9.4 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 10003, monster_id = 21010301, pos = { x = -7.7, y = 0.1, z = -6.0 }, rot = { x = 0.0, y = 43.6, z = 0.0 }, level = 1 },
	{ config_id = 10004, monster_id = 21010301, pos = { x = 0.6, y = 0.1, z = -11.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10005, monster_id = 21010301, pos = { x = 7.5, y = 0.1, z = -9.2 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 10006, monster_id = 21010301, pos = { x = -10.6, y = 0.1, z = -1.3 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 10007, monster_id = 21010301, pos = { x = 12.5, y = 0.1, z = -1.0 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 10008, monster_id = 21010301, pos = { x = 0.9, y = 0.1, z = 7.4 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 10009, monster_id = 21010701, pos = { x = 5.1, y = 0.1, z = -7.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10010, monster_id = 21010701, pos = { x = -5.2, y = 0.1, z = -7.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10011, monster_id = 21010201, pos = { x = 12.7, y = 0.1, z = 1.5 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 10012, monster_id = 21010201, pos = { x = 12.2, y = 0.1, z = -8.3 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 10013, monster_id = 21020201, pos = { x = 0.2, y = 0.1, z = -13.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10014, monster_id = 21010201, pos = { x = -12.3, y = 0.1, z = -5.3 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 10015, monster_id = 21010201, pos = { x = -13.8, y = 0.1, z = 2.2 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 10016, monster_id = 22010104, pos = { x = -3.0, y = 0.1, z = -12.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10017, monster_id = 21010201, pos = { x = -10.8, y = 0.1, z = 1.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10018, monster_id = 21010201, pos = { x = 10.2, y = 0.1, z = -0.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10019, monster_id = 21010201, pos = { x = -1.0, y = 0.1, z = 9.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10020, monster_id = 21010201, pos = { x = 5.2, y = 0.1, z = 7.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10021, monster_id = 21020201, pos = { x = 13.5, y = 0.0, z = -4.0 }, rot = { x = 0.0, y = 274.8, z = 0.0 }, level = 1 },
	{ config_id = 10022, monster_id = 21010201, pos = { x = -13.4, y = 0.0, z = -1.5 }, rot = { x = 0.0, y = 93.5, z = 0.0 }, level = 1 },
	{ config_id = 10023, monster_id = 21010502, pos = { x = 2.7, y = 0.0, z = -11.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10024, monster_id = 21010201, pos = { x = -6.9, y = 0.0, z = 5.5 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1 },
	{ config_id = 10025, monster_id = 21010201, pos = { x = 6.3, y = 0.0, z = 5.5 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10026, gadget_id = 70900205, pos = { x = 6.9, y = -1.4, z = 3.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10027, gadget_id = 70350033, pos = { x = 0.0, y = 0.0, z = -7.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_10028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_10028", action = "action_EVENT_ANY_MONSTER_LIVE_10028" },
	{ name = "ANY_MONSTER_DIE_10029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10029", action = "action_EVENT_ANY_MONSTER_DIE_10029" },
	{ name = "ANY_MONSTER_DIE_10030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10030", action = "action_EVENT_ANY_MONSTER_DIE_10030" },
	{ name = "ANY_MONSTER_DIE_10031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10031", action = "action_EVENT_ANY_MONSTER_DIE_10031" },
	{ name = "CHALLENGE_SUCCESS_10032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10032" },
	{ name = "CHALLENGE_FAIL_10033", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10033" },
	{ name = "ANY_MONSTER_DIE_10034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10034", action = "action_EVENT_ANY_MONSTER_DIE_10034" }
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
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 10001, 10002, 10003, 10004, 10005 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_10028", "ANY_MONSTER_DIE_10029", "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 10006, 10007, 10008, 10009, 10010 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10030", "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 10011, 10012, 10013, 10014, 10015 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10031", "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 10016, 10017, 10018, 10019, 10020 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 10021, 10022, 10023, 10024, 10025 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_10028(context, evt)
	if 10001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_10028(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 360, 240611010, 25, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10032(context, evt)
	-- 改变指定group组240611008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611008, 8002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240611010中， configid为10027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611010, 10027, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10033(context, evt)
	-- 改变指定group组240611009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611009, 9001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240611009, 9001, {7}) then
		return -1
	end
	
	-- 改变指定group组240611010中， configid为10027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611010, 10027, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240611008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611008, 8001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240611008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611008, 8002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240611010, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

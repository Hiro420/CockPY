--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21010201, pos = { x = 5.6, y = 0.1, z = -4.9 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 6002, monster_id = 21010201, pos = { x = -7.7, y = 0.1, z = -5.0 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 6003, monster_id = 21010301, pos = { x = -7.2, y = 0.1, z = -9.9 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 6004, monster_id = 21010301, pos = { x = -0.7, y = 0.1, z = -11.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6005, monster_id = 21010301, pos = { x = 7.2, y = 0.1, z = -11.7 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 6006, monster_id = 21010201, pos = { x = -11.9, y = 0.1, z = -1.1 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 6007, monster_id = 21010201, pos = { x = 11.2, y = 0.1, z = -0.8 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 6008, monster_id = 21010201, pos = { x = -0.4, y = 0.1, z = 7.6 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 6009, monster_id = 21010301, pos = { x = 3.8, y = 0.1, z = -7.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6010, monster_id = 21010301, pos = { x = -6.5, y = 0.1, z = -7.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6011, monster_id = 21010301, pos = { x = 11.4, y = 0.1, z = 1.7 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 6012, monster_id = 21010301, pos = { x = 10.9, y = 0.1, z = -8.1 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 6013, monster_id = 21010301, pos = { x = -1.1, y = 0.1, z = -10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 6014, monster_id = 21010301, pos = { x = -13.6, y = 0.1, z = -5.1 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 6015, monster_id = 21010301, pos = { x = -15.2, y = 0.1, z = 2.5 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 6016, monster_id = 21020101, pos = { x = -3.4, y = 0.0, z = -6.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6017, monster_id = 21010301, pos = { x = 2.6, y = 0.0, z = -10.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6018, monster_id = 21010301, pos = { x = -9.6, y = 0.0, z = -11.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6019, gadget_id = 70900205, pos = { x = 5.6, y = -1.4, z = 3.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_6020", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6020", action = "action_EVENT_ANY_MONSTER_LIVE_6020" },
	{ name = "CHALLENGE_SUCCESS_6021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6021" },
	{ name = "ANY_MONSTER_LIVE_6022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6022", action = "action_EVENT_ANY_MONSTER_LIVE_6022" },
	{ name = "ANY_MONSTER_DIE_6023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6023", action = "action_EVENT_ANY_MONSTER_DIE_6023" },
	{ name = "ANY_MONSTER_DIE_6024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6024", action = "action_EVENT_ANY_MONSTER_DIE_6024" },
	{ name = "CHALLENGE_FAIL_6025", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6025" },
	{ name = "CHALLENGE_SUCCESS_6026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6026" },
	{ name = "CHALLENGE_FAIL_6027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6027" }
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
		gadgets = { 6019 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6004, 6005 },
		gadgets = { 6019 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6022", "ANY_MONSTER_DIE_6023", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 6006, 6007, 6008, 6009, 6010 },
		gadgets = { 6019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6024", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6011, 6012, 6013, 6014, 6015 },
		gadgets = { 6019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 6016, 6017, 6018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6020", "CHALLENGE_SUCCESS_6021", "CHALLENGE_FAIL_6025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6020(context, evt)
	if 6016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6020(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为194的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 194, 50, 240511006, 3, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6021(context, evt)
	-- 改变指定group组240511004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6022(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为193的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 193, 30, 240511006, 15, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240511006) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240511006, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240511006) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240511006, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240511006, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组240511005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240511005, 5001, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240511006, 5)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6027(context, evt)
	-- 改变指定group组240511005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240511005, 5001, {7}) then
		return -1
	end
	
	-- 改变指定group组240511004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240511004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240511006, suite = 1 }) then
			return -1
		end
	
	return 0
end

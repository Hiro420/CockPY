--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011401, pos = { x = 6.4, y = 0.1, z = -4.8 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 6002, monster_id = 20011401, pos = { x = -6.9, y = 0.1, z = -4.8 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 6003, monster_id = 20011401, pos = { x = -6.5, y = 0.1, z = -9.7 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 6004, monster_id = 20011501, pos = { x = 0.0, y = 0.1, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6005, monster_id = 20011401, pos = { x = 7.9, y = 0.1, z = -11.5 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 6006, monster_id = 20011401, pos = { x = -11.1, y = 0.1, z = -0.4 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 6007, monster_id = 20011401, pos = { x = 11.9, y = 0.1, z = -0.6 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 6008, monster_id = 20011401, pos = { x = 2.6, y = 0.1, z = 7.7 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 6009, monster_id = 20011501, pos = { x = 4.5, y = 0.1, z = -7.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6010, monster_id = 20011501, pos = { x = -5.8, y = 0.1, z = -7.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6011, monster_id = 21011201, pos = { x = 7.8, y = 0.1, z = 10.2 }, rot = { x = 0.0, y = 216.0, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6012, monster_id = 21011201, pos = { x = 9.9, y = 0.1, z = -5.5 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6013, monster_id = 20011501, pos = { x = -0.4, y = 0.1, z = -9.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6014, monster_id = 21011201, pos = { x = -7.8, y = 0.1, z = -5.4 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6015, monster_id = 21011201, pos = { x = -7.8, y = 0.1, z = 10.1 }, rot = { x = 0.0, y = 125.8, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6016, monster_id = 21020301, pos = { x = 0.2, y = 0.1, z = -6.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6017, monster_id = 21030401, pos = { x = 2.6, y = 0.1, z = -11.0 }, rot = { x = 0.0, y = 2.9, z = 0.0 }, level = 1 },
	{ config_id = 6019, monster_id = 21010401, pos = { x = -11.4, y = 0.1, z = 7.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 6020, monster_id = 21010401, pos = { x = 11.6, y = 0.1, z = -4.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 6021, monster_id = 20011501, pos = { x = -1.9, y = 0.1, z = 8.4 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 1 },
	{ config_id = 6029, monster_id = 20011401, pos = { x = -3.6, y = 0.1, z = 7.8 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 6030, monster_id = 21010401, pos = { x = 11.6, y = 0.1, z = 7.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 6031, monster_id = 21010401, pos = { x = -11.4, y = 0.1, z = -3.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6022, gadget_id = 70900205, pos = { x = 6.4, y = -1.3, z = 3.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_6023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6023", action = "action_EVENT_ANY_MONSTER_LIVE_6023" },
	{ name = "ANY_MONSTER_DIE_6024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6024", action = "action_EVENT_ANY_MONSTER_DIE_6024" },
	{ name = "ANY_MONSTER_DIE_6025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6025", action = "action_EVENT_ANY_MONSTER_DIE_6025" },
	{ name = "ANY_MONSTER_DIE_6026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6026", action = "action_EVENT_ANY_MONSTER_DIE_6026" },
	{ name = "CHALLENGE_SUCCESS_6027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6027" },
	{ name = "CHALLENGE_FAIL_6028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6028" }
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
		gadgets = { 6022 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6004, 6005 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6023", "ANY_MONSTER_DIE_6024", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 6006, 6007, 6008, 6009, 6010, 6029 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6025", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6011, 6012, 6013, 6014, 6015, 6021 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6026", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 6016, 6017, 6019, 6020, 6030, 6031 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6023(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 4, 240613006, 23, 50, 20) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240613006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240613006, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240613006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240613006, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240613006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240613006, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6027(context, evt)
	-- 改变指定group组240613004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240613004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6028(context, evt)
	-- 改变指定group组240613005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240613005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240613005, 5001, {7}) then
		return -1
	end
	
	-- 改变指定group组240613004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240613004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240613004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240613004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240613006, suite = 1 }) then
			return -1
		end
	
	return 0
end

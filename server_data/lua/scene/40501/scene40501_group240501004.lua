--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011001, pos = { x = 7.0, y = 0.2, z = -5.9 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4002, monster_id = 20011001, pos = { x = -6.2, y = 0.2, z = -6.0 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4003, monster_id = 21010301, pos = { x = -5.8, y = 0.2, z = -10.9 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4004, monster_id = 21010301, pos = { x = 0.7, y = 0.2, z = -12.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4005, monster_id = 21010301, pos = { x = 8.6, y = 0.2, z = -12.7 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4006, monster_id = 20011001, pos = { x = -10.5, y = 0.2, z = -2.1 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4007, monster_id = 20011001, pos = { x = 12.6, y = 0.2, z = -1.8 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4008, monster_id = 20011001, pos = { x = 1.0, y = 0.2, z = 6.6 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4009, monster_id = 20011101, pos = { x = 5.2, y = 0.2, z = -8.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4010, monster_id = 20011101, pos = { x = -5.1, y = 0.2, z = -8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4011, monster_id = 21010301, pos = { x = 12.8, y = 0.2, z = 0.7 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true, pose_id = 402 },
	{ config_id = 4012, monster_id = 21010301, pos = { x = 12.3, y = 0.2, z = -9.1 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true, pose_id = 402 },
	{ config_id = 4013, monster_id = 21010301, pos = { x = 0.3, y = 0.2, z = -11.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true, pose_id = 402 },
	{ config_id = 4014, monster_id = 21010301, pos = { x = -12.2, y = 0.2, z = -6.1 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true, pose_id = 402 },
	{ config_id = 4015, monster_id = 21010301, pos = { x = -13.7, y = 0.2, z = 1.5 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true, pose_id = 402 },
	{ config_id = 4016, monster_id = 21020101, pos = { x = 0.9, y = 0.2, z = -7.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4017, monster_id = 21010301, pos = { x = -10.7, y = 0.2, z = 0.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4018, monster_id = 21010301, pos = { x = 10.3, y = 0.2, z = -1.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4019, monster_id = 21010301, pos = { x = -0.9, y = 0.2, z = 8.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4020, monster_id = 21010301, pos = { x = 5.3, y = 0.2, z = 6.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4028, monster_id = 21030101, pos = { x = 1.1, y = 0.0, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4029, monster_id = 20011001, pos = { x = 8.1, y = 0.2, z = -10.3 }, rot = { x = 0.0, y = 345.9, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4030, monster_id = 20011001, pos = { x = -6.1, y = 0.2, z = -10.5 }, rot = { x = 0.0, y = 42.5, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4031, monster_id = 21010301, pos = { x = 8.6, y = 0.2, z = -1.0 }, rot = { x = 0.0, y = 290.3, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4032, monster_id = 21010301, pos = { x = -9.4, y = 0.2, z = -0.4 }, rot = { x = 0.0, y = 97.9, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true },
	{ config_id = 4033, monster_id = 21010301, pos = { x = -0.6, y = 0.2, z = 9.0 }, rot = { x = 0.0, y = 188.5, z = 0.0 }, level = 1, affix = { 1007, 1008 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4021, gadget_id = 70900205, pos = { x = 7.0, y = -1.3, z = 2.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_4022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4022", action = "action_EVENT_ANY_MONSTER_LIVE_4022" },
	{ name = "ANY_MONSTER_DIE_4023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4023", action = "action_EVENT_ANY_MONSTER_DIE_4023" },
	{ name = "ANY_MONSTER_DIE_4024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4024", action = "action_EVENT_ANY_MONSTER_DIE_4024" },
	{ name = "ANY_MONSTER_DIE_4025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4025", action = "action_EVENT_ANY_MONSTER_DIE_4025" },
	{ name = "CHALLENGE_SUCCESS_4026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4026" },
	{ name = "CHALLENGE_FAIL_4027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4027" },
	{ name = "ANY_MONSTER_DIE_4034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4034", action = "action_EVENT_ANY_MONSTER_DIE_4034" }
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
		gadgets = { 4021 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4022", "ANY_MONSTER_DIE_4023", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4006, 4007, 4008, 4009, 4010 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4024", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4011, 4012, 4013, 4014, 4015 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4025", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4016, 4017, 4018, 4019, 4020 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 4028, 4029, 4030, 4031, 4032, 4033 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027", "ANY_MONSTER_DIE_4034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 300, 240501004, 26, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4026(context, evt)
	-- 改变指定group组240501002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4027(context, evt)
	-- 改变指定group组240501003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501003, 3001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240501003, 3001, {7}) then
		return -1
	end
	
	-- 改变指定group组240501002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240501002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240501004, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

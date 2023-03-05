--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011001, pos = { x = 7.1, y = 0.1, z = -6.3 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 20011001, pos = { x = -6.1, y = 0.1, z = -6.3 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -5.7, y = 0.1, z = -11.2 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 0.8, y = 0.1, z = -12.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 21010301, pos = { x = 8.7, y = 0.1, z = -13.0 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 3006, monster_id = 20011001, pos = { x = -10.4, y = 0.1, z = -2.4 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 20011001, pos = { x = 12.7, y = 0.1, z = -2.1 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 3008, monster_id = 20011001, pos = { x = 1.1, y = 0.1, z = 6.3 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 20011101, pos = { x = 5.3, y = 0.1, z = -8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3010, monster_id = 20011101, pos = { x = -5.0, y = 0.1, z = -8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3011, monster_id = 21010501, pos = { x = 12.9, y = 0.1, z = 0.4 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3012, monster_id = 21010501, pos = { x = 12.4, y = 0.1, z = -9.4 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3013, monster_id = 21010501, pos = { x = 0.4, y = 0.1, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3014, monster_id = 21010501, pos = { x = -12.1, y = 0.1, z = -6.4 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3015, monster_id = 21010501, pos = { x = -13.6, y = 0.1, z = 1.1 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3016, monster_id = 22010301, pos = { x = 2.8, y = 0.1, z = -9.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3017, monster_id = 20011001, pos = { x = -10.6, y = 0.1, z = 0.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3018, monster_id = 20011001, pos = { x = 10.4, y = 0.1, z = -2.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3019, monster_id = 20011001, pos = { x = -0.8, y = 0.1, z = 8.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3020, monster_id = 20011001, pos = { x = 5.4, y = 0.1, z = 6.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3029, monster_id = 21011201, pos = { x = 13.7, y = 0.0, z = -5.1 }, rot = { x = 0.0, y = 274.8, z = 0.0 }, level = 1 },
	{ config_id = 3030, monster_id = 21011201, pos = { x = -13.2, y = 0.0, z = -2.6 }, rot = { x = 0.0, y = 93.5, z = 0.0 }, level = 1 },
	{ config_id = 3031, monster_id = 21011201, pos = { x = 2.9, y = 0.0, z = -13.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3032, monster_id = 20011001, pos = { x = -6.7, y = 0.0, z = 4.5 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1 },
	{ config_id = 3033, monster_id = 20011001, pos = { x = 6.5, y = 0.0, z = 4.4 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.1, y = -1.3, z = 1.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3028, gadget_id = 70350031, pos = { x = 0.0, y = 0.0, z = -7.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ name = "ANY_MONSTER_DIE_3023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3023", action = "action_EVENT_ANY_MONSTER_DIE_3023" },
	{ name = "ANY_MONSTER_DIE_3024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3024", action = "action_EVENT_ANY_MONSTER_DIE_3024" },
	{ name = "ANY_MONSTER_DIE_3025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3025", action = "action_EVENT_ANY_MONSTER_DIE_3025" },
	{ name = "CHALLENGE_SUCCESS_3026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3026" },
	{ name = "CHALLENGE_FAIL_3027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3027" },
	{ name = "ANY_MONSTER_DIE_3034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3034", action = "action_EVENT_ANY_MONSTER_DIE_3034" }
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
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "ANY_MONSTER_DIE_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3010 },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3024", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3011, 3012, 3013, 3014, 3015 },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3016, 3017, 3018, 3019, 3020 },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 3029, 3030, 3031, 3032, 3033 },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 240, 240512003, 25, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240512003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240512003, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240512003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240512003, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240512003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240512003, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240512001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240512003中， configid为3028的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512003, 3028, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240512002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512002, 2001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240512002, 2001, {7}) then
		return -1
	end
	
	-- 改变指定group组240512001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240512001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240512003, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240512003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240512003, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010301, pos = { x = 7.1, y = 0.1, z = -6.3 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3002, monster_id = 21010301, pos = { x = -6.1, y = 0.1, z = -6.3 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -5.7, y = 0.1, z = -11.2 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 0.8, y = 0.1, z = -12.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3005, monster_id = 21010301, pos = { x = 8.7, y = 0.1, z = -13.0 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3006, monster_id = 20010501, pos = { x = -10.4, y = 0.1, z = -2.4 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3007, monster_id = 20010501, pos = { x = 12.7, y = 0.1, z = -2.1 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3008, monster_id = 20010501, pos = { x = 1.1, y = 0.1, z = 6.3 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3009, monster_id = 20010601, pos = { x = 5.3, y = 0.1, z = -8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3010, monster_id = 20010701, pos = { x = -5.0, y = 0.1, z = -8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3011, monster_id = 20010801, pos = { x = 12.9, y = 0.1, z = 0.4 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3012, monster_id = 20010801, pos = { x = 12.4, y = 0.1, z = -9.4 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3013, monster_id = 20010801, pos = { x = 0.4, y = 0.1, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3014, monster_id = 20010801, pos = { x = -12.1, y = 0.1, z = -6.4 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3015, monster_id = 20010901, pos = { x = -13.6, y = 0.1, z = 1.1 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3016, monster_id = 21020101, pos = { x = 12.2, y = 0.1, z = -10.4 }, rot = { x = 0.0, y = 339.1, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3017, monster_id = 21020101, pos = { x = -9.3, y = 0.1, z = -10.4 }, rot = { x = 0.0, y = 28.9, z = 0.0 }, level = 1, affix = { 1006, 1008 }, isElite = true },
	{ config_id = 3019, monster_id = 21030301, pos = { x = -0.9, y = 0.0, z = -13.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3020, monster_id = 21010201, pos = { x = 11.0, y = 0.0, z = -5.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3028, monster_id = 21010201, pos = { x = -9.1, y = 0.0, z = -4.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3029, monster_id = 21010201, pos = { x = 6.2, y = 0.0, z = -15.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3030, monster_id = 21010201, pos = { x = -4.6, y = 0.0, z = -15.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3032, monster_id = 21010601, pos = { x = 9.3, y = 0.0, z = 5.4 }, rot = { x = 0.0, y = 210.4, z = 0.0 }, level = 1 },
	{ config_id = 3033, monster_id = 21010601, pos = { x = -8.2, y = 0.0, z = 5.7 }, rot = { x = 0.0, y = 162.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3018, gadget_id = 70350031, pos = { x = 0.0, y = 0.0, z = -7.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.1, y = -1.3, z = 1.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_3031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3031", action = "action_EVENT_ANY_MONSTER_DIE_3031" }
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
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "ANY_MONSTER_DIE_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3010 },
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3024", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3011, 3012, 3013, 3014, 3015 },
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3016, 3017, 3032, 3033 },
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 3019, 3020, 3028, 3029, 3030 },
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027", "ANY_MONSTER_DIE_3031" },
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
	-- 创建编号为1（该挑战的识别id),挑战内容为195的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 195, 240506003, 24, 25, 15) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240506003) ~= 0 then
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
	    ScriptLib.AddExtraGroupSuite(context, 240506003, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240506003) ~= 0 then
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
	    ScriptLib.AddExtraGroupSuite(context, 240506003, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240506003) ~= 0 then
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
	    ScriptLib.AddExtraGroupSuite(context, 240506003, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240506001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240506003中， configid为3018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506003, 3018, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240506002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506002, 2001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240506002, 2001, {7}) then
		return -1
	end
	
	-- 改变指定group组240506001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240506001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240506003, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240506003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3031(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240506003, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

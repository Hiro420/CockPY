--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20011001, pos = { x = 7.2, y = 0.1, z = -8.5 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 5002, monster_id = 20011001, pos = { x = -6.1, y = 0.1, z = -8.6 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 5003, monster_id = 20011001, pos = { x = -5.7, y = 0.1, z = -13.5 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 5004, monster_id = 20011001, pos = { x = 0.9, y = 0.1, z = -15.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5005, monster_id = 20011001, pos = { x = 8.8, y = 0.1, z = -15.3 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5006, monster_id = 21010201, pos = { x = -10.3, y = 0.1, z = -4.7 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 5007, monster_id = 21010201, pos = { x = 12.7, y = 0.1, z = -4.4 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 5008, monster_id = 21010201, pos = { x = 0.2, y = 0.1, z = -10.9 }, rot = { x = 0.0, y = 6.8, z = 0.0 }, level = 1 },
	{ config_id = 5009, monster_id = 21010901, pos = { x = 11.6, y = 0.1, z = -10.5 }, rot = { x = 0.0, y = 316.0, z = 0.0 }, level = 1 },
	{ config_id = 5010, monster_id = 21011001, pos = { x = -12.2, y = 0.1, z = -11.5 }, rot = { x = 0.0, y = 42.1, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5011, monster_id = 20011001, pos = { x = 13.0, y = 0.1, z = -1.9 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5012, monster_id = 20011001, pos = { x = 12.5, y = 0.1, z = -11.7 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5013, monster_id = 21010301, pos = { x = 0.4, y = 0.1, z = -13.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true, pose_id = 0 },
	{ config_id = 5014, monster_id = 20011001, pos = { x = -12.0, y = 0.1, z = -8.7 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5015, monster_id = 21010301, pos = { x = -13.6, y = 0.1, z = -1.1 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5016, monster_id = 20011101, pos = { x = 1.1, y = 0.1, z = -9.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5017, monster_id = 22010302, pos = { x = -2.3, y = 0.1, z = -12.6 }, rot = { x = 0.0, y = 7.1, z = 0.0 }, level = 1 },
	{ config_id = 5019, monster_id = 21010201, pos = { x = -10.5, y = 0.1, z = -8.3 }, rot = { x = 0.0, y = 45.8, z = 0.0 }, level = 1 },
	{ config_id = 5020, monster_id = 21010201, pos = { x = 12.6, y = 0.1, z = -8.7 }, rot = { x = 0.0, y = 312.4, z = 0.0 }, level = 1 },
	{ config_id = 5029, monster_id = 20011001, pos = { x = -8.1, y = 0.1, z = -11.7 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5030, monster_id = 20011001, pos = { x = 12.5, y = 0.1, z = -11.7 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5031, monster_id = 21010201, pos = { x = -10.3, y = 0.1, z = -4.7 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5032, monster_id = 21010201, pos = { x = 12.7, y = 0.1, z = -4.4 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 5033, monster_id = 21010201, pos = { x = 0.2, y = 0.1, z = -10.9 }, rot = { x = 0.0, y = 6.8, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5021, gadget_id = 70900205, pos = { x = 7.2, y = -1.4, z = -0.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5022, gadget_id = 70350035, pos = { x = -0.1, y = 0.1, z = 0.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_5018", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "5016", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5018", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5018" },
	{ name = "ANY_MONSTER_LIVE_5023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5023", action = "action_EVENT_ANY_MONSTER_LIVE_5023" },
	{ name = "ANY_MONSTER_DIE_5024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5024", action = "action_EVENT_ANY_MONSTER_DIE_5024" },
	{ name = "ANY_MONSTER_DIE_5025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5025", action = "action_EVENT_ANY_MONSTER_DIE_5025" },
	{ name = "ANY_MONSTER_DIE_5026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5026", action = "action_EVENT_ANY_MONSTER_DIE_5026" },
	{ name = "CHALLENGE_SUCCESS_5027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5027" },
	{ name = "CHALLENGE_FAIL_5028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5028" },
	{ name = "ANY_MONSTER_DIE_5034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5034", action = "action_EVENT_ANY_MONSTER_DIE_5034" }
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
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001, 5002, 5003, 5004, 5005 },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5023", "ANY_MONSTER_DIE_5024", "CHALLENGE_SUCCESS_5027", "CHALLENGE_FAIL_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5006, 5007, 5008, 5009, 5010 },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5025", "CHALLENGE_SUCCESS_5027", "CHALLENGE_FAIL_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5011, 5012, 5013, 5014, 5015 },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5026", "CHALLENGE_SUCCESS_5027", "CHALLENGE_FAIL_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5016, 5017, 5019, 5020 },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_5018", "CHALLENGE_SUCCESS_5027", "CHALLENGE_FAIL_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 5029, 5030, 5031, 5032, 5033 },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5027", "CHALLENGE_FAIL_5028", "ANY_MONSTER_DIE_5034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5018(context, evt)
	--[[判断指定configid的怪物的血量小于%40时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 40 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5017, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5023(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为192的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 192, 240508005, 24, 5022, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240508005) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240508005, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240508005) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240508005, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240508005) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240508005, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5027(context, evt)
	-- 改变指定group组240508004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240508007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508007, 7001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5028(context, evt)
	-- 改变指定group组240508007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508007, 7001, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240508007, 7001, {7}) then
		return -1
	end
	
	-- 改变指定group组240508004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240508004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240508005, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240508005) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240508005, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

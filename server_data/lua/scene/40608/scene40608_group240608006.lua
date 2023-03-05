--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011201, pos = { x = 6.2, y = 0.4, z = -4.5 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 6002, monster_id = 20011201, pos = { x = -7.1, y = 0.4, z = -4.5 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 6003, monster_id = 21011002, pos = { x = 0.2, y = 0.0, z = 11.7 }, rot = { x = 0.0, y = 188.4, z = 0.0 }, level = 1 },
	{ config_id = 6004, monster_id = 20011301, pos = { x = -0.1, y = 0.4, z = -11.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6008, monster_id = 20011201, pos = { x = 10.8, y = 0.0, z = -3.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6011, monster_id = 20011201, pos = { x = 6.0, y = 0.0, z = -9.1 }, rot = { x = 0.0, y = 350.4, z = 0.0 }, level = 1 },
	{ config_id = 6012, monster_id = 21010501, pos = { x = 11.5, y = 0.4, z = -7.6 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 6013, monster_id = 21010701, pos = { x = -0.6, y = 0.4, z = -9.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6014, monster_id = 21010501, pos = { x = -10.8, y = 0.4, z = -7.8 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 6015, monster_id = 20011201, pos = { x = -6.3, y = 0.0, z = -8.8 }, rot = { x = 0.0, y = 18.2, z = 0.0 }, level = 1 },
	{ config_id = 6016, monster_id = 21020201, pos = { x = 0.0, y = 0.4, z = -12.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6017, monster_id = 21010701, pos = { x = -11.6, y = 0.4, z = 2.2 }, rot = { x = 0.0, y = 101.4, z = 0.0 }, level = 1 },
	{ config_id = 6018, monster_id = 21010701, pos = { x = 9.4, y = 0.4, z = -0.3 }, rot = { x = 0.0, y = 274.5, z = 0.0 }, level = 1 },
	{ config_id = 6019, monster_id = 21030301, pos = { x = -0.3, y = 0.4, z = 8.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 6020, monster_id = 20011201, pos = { x = -11.7, y = 0.0, z = -1.6 }, rot = { x = 0.0, y = 61.0, z = 0.0 }, level = 1 },
	{ config_id = 6021, monster_id = 22010101, pos = { x = 0.0, y = 0.0, z = -12.3 }, rot = { x = 0.0, y = 5.0, z = 0.0 }, level = 1, affix = { 1028 }, isElite = true },
	{ config_id = 6029, monster_id = 20011201, pos = { x = 9.4, y = 0.4, z = 5.8 }, rot = { x = 0.0, y = 238.8, z = 0.0 }, level = 1 },
	{ config_id = 6031, monster_id = 20011201, pos = { x = -9.6, y = 0.4, z = 4.5 }, rot = { x = 0.0, y = 113.4, z = 0.0 }, level = 1 },
	{ config_id = 6034, monster_id = 21010701, pos = { x = 9.4, y = 0.4, z = 1.9 }, rot = { x = 0.0, y = 266.9, z = 0.0 }, level = 1 },
	{ config_id = 6035, monster_id = 21010701, pos = { x = -10.1, y = 0.4, z = 0.1 }, rot = { x = 0.0, y = 87.6, z = 0.0 }, level = 1 },
	{ config_id = 6036, monster_id = 20011201, pos = { x = 9.9, y = 0.0, z = -5.0 }, rot = { x = 0.0, y = 327.9, z = 0.0 }, level = 1 },
	{ config_id = 6037, monster_id = 20011201, pos = { x = 10.1, y = 0.0, z = 7.3 }, rot = { x = 0.0, y = 255.9, z = 0.0 }, level = 1 },
	{ config_id = 6038, monster_id = 20011201, pos = { x = -10.5, y = 0.0, z = 7.9 }, rot = { x = 0.0, y = 131.1, z = 0.0 }, level = 1 },
	{ config_id = 6039, monster_id = 20011201, pos = { x = -10.0, y = 0.0, z = -5.1 }, rot = { x = 0.0, y = 32.5, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6022, gadget_id = 70900205, pos = { x = 6.2, y = -1.0, z = 3.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_6023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6023", action = "action_EVENT_ANY_MONSTER_LIVE_6023" },
	{ name = "ANY_MONSTER_DIE_6024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6024", action = "action_EVENT_ANY_MONSTER_DIE_6024" },
	{ name = "ANY_MONSTER_DIE_6026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6026", action = "action_EVENT_ANY_MONSTER_DIE_6026" },
	{ name = "CHALLENGE_SUCCESS_6027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6027" },
	{ name = "CHALLENGE_FAIL_6028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6028" },
	{ name = "ANY_MONSTER_DIE_6040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6040", action = "action_EVENT_ANY_MONSTER_DIE_6040" },
	{ name = "ANY_MONSTER_DIE_6041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6041", action = "action_EVENT_ANY_MONSTER_DIE_6041" }
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
		monsters = { 6001, 6002, 6004, 6029, 6031 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6023", "ANY_MONSTER_DIE_6024", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 6022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6012, 6013, 6014, 6034, 6035 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6026", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 6016, 6017, 6018, 6019 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028", "ANY_MONSTER_DIE_6041" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 6003, 6008, 6011, 6015, 6020 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028", "ANY_MONSTER_DIE_6040" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 6021, 6036, 6037, 6038, 6039 },
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 4, 240608006, 24, 50, 15) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240608006) ~= 0 then
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
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240608006, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240608006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240608006, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6027(context, evt)
	-- 改变指定group组240608004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240608004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6028(context, evt)
	-- 改变指定group组240608005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240608005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240608005, 5001, {7}) then
		return -1
	end
	
	-- 改变指定group组240608004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240608004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240608004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240608004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240608006, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6040(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240608006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240608006, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6041(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240608006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6041(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240608006, 7)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

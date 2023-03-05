--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21010502, pos = { x = 0.0, y = 0.4, z = 10.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5003, monster_id = 20011101, pos = { x = 0.0, y = 0.4, z = -10.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031, 1211 }, isElite = true },
	{ config_id = 5004, monster_id = 21011201, pos = { x = 9.6, y = 0.4, z = -9.1 }, rot = { x = 0.0, y = 323.7, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5005, monster_id = 22010304, pos = { x = 0.0, y = 0.4, z = -11.3 }, rot = { x = 0.0, y = 358.7, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5006, monster_id = 21011201, pos = { x = -9.6, y = 0.4, z = -9.4 }, rot = { x = 0.0, y = 52.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5007, monster_id = 22010303, pos = { x = 0.0, y = 0.4, z = -11.3 }, rot = { x = 0.0, y = 358.7, z = 0.0 }, level = 1, affix = { 1031, 1211 }, isElite = true },
	{ config_id = 5008, monster_id = 21020201, pos = { x = 0.0, y = 0.4, z = 13.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5009, monster_id = 21020101, pos = { x = -0.1, y = 0.4, z = -13.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031, 1211 }, isElite = true },
	{ config_id = 5011, monster_id = 20011101, pos = { x = 11.8, y = 0.4, z = 0.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5012, monster_id = 20011101, pos = { x = -11.7, y = 0.4, z = 0.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5016, monster_id = 21020201, pos = { x = 0.0, y = 0.4, z = 13.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5017, monster_id = 21020301, pos = { x = -0.1, y = 0.4, z = -13.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031, 1211 }, isElite = true },
	{ config_id = 5027, monster_id = 21011201, pos = { x = 0.0, y = 0.4, z = -10.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 402 },
	{ config_id = 5028, monster_id = 21011201, pos = { x = 11.8, y = 0.4, z = 0.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 402 },
	{ config_id = 5029, monster_id = 21011201, pos = { x = -11.7, y = 0.4, z = 0.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 402 },
	{ config_id = 5031, monster_id = 21010502, pos = { x = 0.0, y = 0.4, z = 10.3 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 5033, monster_id = 21010402, pos = { x = 9.7, y = 0.4, z = 10.4 }, rot = { x = 0.0, y = 209.3, z = 0.0 }, level = 1, affix = { 1031, 1211 }, isElite = true },
	{ config_id = 5034, monster_id = 21010402, pos = { x = -9.8, y = 0.4, z = 10.3 }, rot = { x = 0.0, y = 138.2, z = 0.0 }, level = 1, affix = { 1031, 1211 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5019, gadget_id = 70350035, pos = { x = 0.0, y = 0.4, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 5020, gadget_id = 70900205, pos = { x = 7.1, y = -1.0, z = 4.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_5010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5010", action = "action_EVENT_ANY_MONSTER_LIVE_5010" },
	{ name = "ANY_MONSTER_DIE_5013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5013", action = "action_EVENT_ANY_MONSTER_DIE_5013", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_5014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5014" },
	{ name = "CHALLENGE_FAIL_5015", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5015" },
	{ name = "ANY_MONSTER_DIE_5018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5018", action = "action_EVENT_ANY_MONSTER_DIE_5018", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_5021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5021", action = "action_EVENT_ANY_MONSTER_LIVE_5021" },
	{ name = "ANY_MONSTER_DIE_5022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5022", action = "action_EVENT_ANY_MONSTER_DIE_5022", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5023", action = "action_EVENT_ANY_MONSTER_DIE_5023", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5024", action = "action_EVENT_ANY_MONSTER_DIE_5024", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_5025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5025" },
	{ name = "CHALLENGE_FAIL_5026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5026" },
	{ name = "ANY_MONSTER_DIE_5030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5030", action = "action_EVENT_ANY_MONSTER_DIE_5030", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "monster1_wave", value = 0, no_refresh = false },
	{ name = "monster2_wave", value = 0, no_refresh = false },
	{ name = "monster1_round", value = 0, no_refresh = false },
	{ name = "monster2_round", value = 0, no_refresh = false },
	{ name = "level_status", value = 0, no_refresh = false }
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
		gadgets = { 5020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001, 5005 },
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5021", "ANY_MONSTER_DIE_5022", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5003, 5011, 5012, 5031 },
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5023", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5008, 5009 },
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5024", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5004, 5006, 5007 },
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5010", "ANY_MONSTER_DIE_5013", "CHALLENGE_SUCCESS_5014", "CHALLENGE_FAIL_5015" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 5027, 5028, 5029, 5033, 5034 },
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5014", "CHALLENGE_FAIL_5015", "ANY_MONSTER_DIE_5018" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 5016, 5017 },
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5014", "CHALLENGE_FAIL_5015", "ANY_MONSTER_DIE_5030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5010(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"monster2_round"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_round") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5010(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 230802005, 10, 5019, 0) then
		return -1
	end
	
	-- 将本组内变量名为 "level_status" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 0 then
			return false
	end
	
	-- 判断变量"level_status"为1
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5013(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 6)
	
	-- 将本组内变量名为 "monster2_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster2_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5014(context, evt)
	-- 将本组内变量名为 "level_status" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 3) then
	  return -1
	end
	
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5019 }) then
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230802005, suite = 1 }) then
			return -1
		end
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 230802004) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5015(context, evt)
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction2) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230802005, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5018(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 1 then
			return false
	end
	
	-- 判断变量"level_status"为1
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5018(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 7)
	
	-- 将本组内变量名为 "monster2_wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster2_wave", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"monster1_round"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_round") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 230802005, 8, 5019, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 0 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 3)
	
	-- 将本组内变量名为 "monster1_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster1_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 1 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 4)
	
	-- 将本组内变量名为 "monster1_wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster1_wave", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 2 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 针对当前group内变量名为 "monster1_round" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_round", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5025(context, evt)
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 230802004) then
	  return -1
	end
	
	-- 将本组内变量名为 "level_status" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 2) then
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		return -1
	end
	
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 230802007, 7001, {176}) then
		return -1
	end
	
	-- 改变指定group组230802004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5026(context, evt)
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction2) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230802005, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 2 then
			return false
	end
	
	-- 判断变量"level_status"为1
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5030(context, evt)
	-- 针对当前group内变量名为 "monster2_round" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_round", 1) then
	  return -1
	end
	
	return 0
end

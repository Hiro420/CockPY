--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011201, pos = { x = 6.3, y = 0.1, z = -5.2 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3002, monster_id = 20011201, pos = { x = -7.0, y = 0.1, z = -5.2 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3003, monster_id = 20011201, pos = { x = -6.6, y = 0.1, z = -10.1 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3004, monster_id = 20011201, pos = { x = -0.1, y = 0.1, z = -11.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3005, monster_id = 20011201, pos = { x = 7.8, y = 0.1, z = -11.9 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3006, monster_id = 20010501, pos = { x = -11.3, y = 0.1, z = -1.3 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3007, monster_id = 20010501, pos = { x = 11.8, y = 0.1, z = -1.0 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3008, monster_id = 20010501, pos = { x = 1.4, y = 0.1, z = 9.7 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3009, monster_id = 20010501, pos = { x = 4.4, y = 0.1, z = -7.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3010, monster_id = 20010501, pos = { x = -5.8, y = 0.1, z = -7.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3011, monster_id = 20011201, pos = { x = 10.5, y = 0.1, z = 5.6 }, rot = { x = 0.0, y = 234.1, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3012, monster_id = 21011001, pos = { x = 11.5, y = 0.1, z = -8.3 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 3013, monster_id = 20011201, pos = { x = -0.5, y = 0.1, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3014, monster_id = 21011001, pos = { x = -12.2, y = 0.1, z = -7.8 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 3015, monster_id = 20011201, pos = { x = -9.9, y = 0.1, z = 5.3 }, rot = { x = 0.0, y = 126.7, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3016, monster_id = 21010701, pos = { x = 10.4, y = 0.0, z = -5.7 }, rot = { x = 0.0, y = 335.3, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 3017, monster_id = 20010501, pos = { x = -11.5, y = 0.1, z = 1.5 }, rot = { x = 0.0, y = 101.4, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3018, monster_id = 21010901, pos = { x = 14.3, y = 0.1, z = -3.1 }, rot = { x = 0.0, y = 274.5, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 3019, monster_id = 20010501, pos = { x = -8.1, y = 0.1, z = 6.1 }, rot = { x = 0.0, y = 133.4, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3020, monster_id = 21010901, pos = { x = -11.8, y = 0.1, z = -4.7 }, rot = { x = 0.0, y = 74.6, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 3021, monster_id = 21010701, pos = { x = -8.9, y = 0.0, z = -5.4 }, rot = { x = 0.0, y = 22.2, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 3022, monster_id = 20011301, pos = { x = 0.2, y = 0.1, z = -8.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1006, 1028, 1201 }, isElite = true },
	{ config_id = 3023, monster_id = 20010601, pos = { x = -7.7, y = 0.1, z = -6.9 }, rot = { x = 0.0, y = 43.8, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3024, monster_id = 20010701, pos = { x = 7.2, y = 0.1, z = -6.2 }, rot = { x = 0.0, y = 320.9, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true },
	{ config_id = 3025, monster_id = 21011001, pos = { x = 15.4, y = 0.0, z = 0.1 }, rot = { x = 0.0, y = 294.1, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 3026, monster_id = 21011001, pos = { x = -13.1, y = 0.0, z = 1.2 }, rot = { x = 0.0, y = 58.9, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 3027, monster_id = 21010201, pos = { x = 0.0, y = 0.0, z = -7.5 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 3029, monster_id = 20010501, pos = { x = 8.3, y = 0.1, z = 5.7 }, rot = { x = 0.0, y = 230.8, z = 0.0 }, level = 1, affix = { 1006, 1201 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3030, gadget_id = 70900205, pos = { x = 6.3, y = -1.4, z = 3.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_3028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3028", action = "action_EVENT_ANY_MONSTER_DIE_3028" },
	{ name = "ANY_MONSTER_LIVE_3031", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3031", action = "action_EVENT_ANY_MONSTER_LIVE_3031" },
	{ name = "ANY_MONSTER_DIE_3032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3032", action = "action_EVENT_ANY_MONSTER_DIE_3032" },
	{ name = "ANY_MONSTER_DIE_3033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3033", action = "action_EVENT_ANY_MONSTER_DIE_3033" },
	{ name = "ANY_MONSTER_DIE_3034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3034", action = "action_EVENT_ANY_MONSTER_DIE_3034" },
	{ name = "CHALLENGE_SUCCESS_3035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3035" },
	{ name = "CHALLENGE_FAIL_3036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3036" },
	{ name = "ANY_MONSTER_DIE_3037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3037", action = "action_EVENT_ANY_MONSTER_DIE_3037" }
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
		gadgets = { 3030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3031", "ANY_MONSTER_DIE_3032", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3010 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3033", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3011, 3012, 3013, 3014, 3015 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3034", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3017, 3018, 3019, 3020, 3029 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036", "ANY_MONSTER_DIE_3037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 3016, 3021, 3025, 3026, 3027 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3028", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 3022, 3023, 3024 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230203003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为5
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3028(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230203003, 7)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1013的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1013, 300, 230203003, 28, 0) then
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230203003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230203003, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230203003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230203003, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230203003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230203003, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3035(context, evt)
	-- 改变指定group组230203001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230203001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3036(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230203003, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230203003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230203003, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010701, pos = { x = 7.4, y = 0.1, z = -6.2 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 21010701, pos = { x = -6.5, y = 0.1, z = -5.9 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = -5.7, y = 0.1, z = -11.2 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 0.8, y = 0.1, z = -12.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 6.3, y = 0.1, z = -11.5 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 3011, monster_id = 21010401, pos = { x = 12.9, y = 0.1, z = 0.4 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 3012, monster_id = 21010201, pos = { x = 12.4, y = 0.1, z = -9.4 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 3013, monster_id = 21030103, pos = { x = 0.4, y = 0.1, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3014, monster_id = 21010201, pos = { x = -12.1, y = 0.1, z = -6.4 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 3015, monster_id = 21010401, pos = { x = -13.6, y = 0.1, z = 1.1 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 3016, monster_id = 21020201, pos = { x = 0.2, y = 0.1, z = -10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3017, monster_id = 21011001, pos = { x = -9.3, y = 0.1, z = -1.6 }, rot = { x = 0.0, y = 93.7, z = 0.0 }, level = 1 },
	{ config_id = 3018, monster_id = 21011001, pos = { x = 9.9, y = 0.1, z = -1.9 }, rot = { x = 0.0, y = 267.6, z = 0.0 }, level = 1 },
	{ config_id = 3019, monster_id = 21030102, pos = { x = -4.7, y = 0.1, z = 6.0 }, rot = { x = 0.0, y = 164.3, z = 0.0 }, level = 1 },
	{ config_id = 3020, monster_id = 21011001, pos = { x = 5.3, y = 0.1, z = 5.8 }, rot = { x = 0.0, y = 189.3, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.1, y = -1.3, z = 1.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_3006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3006", action = "action_EVENT_ANY_MONSTER_DIE_3006", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007" },
	{ name = "VARIABLE_CHANGE_3008", event = EventType.EVENT_VARIABLE_CHANGE, source = "suite2_create_count", condition = "condition_EVENT_VARIABLE_CHANGE_3008", action = "action_EVENT_VARIABLE_CHANGE_3008" },
	{ name = "ANY_MONSTER_DIE_3009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3009", action = "action_EVENT_ANY_MONSTER_DIE_3009", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ name = "ANY_MONSTER_LIVE_3023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3023", action = "action_EVENT_ANY_MONSTER_LIVE_3023", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_3024", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3024", action = "action_EVENT_ANY_MONSTER_LIVE_3024", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_3026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3026" },
	{ name = "CHALLENGE_FAIL_3027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3027" },
	{ name = "ANY_MONSTER_LIVE_3028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3028", action = "action_EVENT_ANY_MONSTER_LIVE_3028", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3029", action = "action_EVENT_ANY_MONSTER_DIE_3029", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3030", action = "action_EVENT_ANY_MONSTER_DIE_3030", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3031", action = "action_EVENT_ANY_MONSTER_DIE_3031", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3032", action = "action_EVENT_ANY_MONSTER_DIE_3032" },
	{ name = "VARIABLE_CHANGE_3033", event = EventType.EVENT_VARIABLE_CHANGE, source = "suite3_create_count", condition = "condition_EVENT_VARIABLE_CHANGE_3033", action = "action_EVENT_VARIABLE_CHANGE_3033" },
	{ name = "ANY_MONSTER_DIE_3034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3034", action = "action_EVENT_ANY_MONSTER_DIE_3034", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_3035", event = EventType.EVENT_VARIABLE_CHANGE, source = "suite4_create_count", condition = "condition_EVENT_VARIABLE_CHANGE_3035", action = "action_EVENT_VARIABLE_CHANGE_3035" },
	{ name = "ANY_MONSTER_DIE_3036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3036", action = "action_EVENT_ANY_MONSTER_DIE_3036", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3037", action = "action_EVENT_ANY_MONSTER_DIE_3037", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3038", action = "action_EVENT_ANY_MONSTER_DIE_3038", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_3039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3039", action = "action_EVENT_ANY_MONSTER_DIE_3039", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "suite2_create_count", value = 0, no_refresh = false },
	{ name = "suite2_status", value = 0, no_refresh = false },
	{ name = "suite3_create_count", value = 0, no_refresh = false },
	{ name = "suite3_status", value = 0, no_refresh = false },
	{ name = "suite4_create_count", value = 0, no_refresh = false },
	{ name = "suite4_status", value = 0, no_refresh = false }
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
		gadgets = { 3021 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3006", "ANY_MONSTER_DIE_3007", "VARIABLE_CHANGE_3008", "ANY_MONSTER_DIE_3009", "ANY_MONSTER_DIE_3010", "ANY_MONSTER_LIVE_3022", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027", "ANY_MONSTER_LIVE_3028", "ANY_MONSTER_DIE_3029", "ANY_MONSTER_DIE_3030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3011, 3012, 3013, 3014, 3015 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027", "ANY_MONSTER_DIE_3031", "ANY_MONSTER_DIE_3032", "VARIABLE_CHANGE_3033", "ANY_MONSTER_DIE_3034", "ANY_MONSTER_DIE_3036", "ANY_MONSTER_DIE_3037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3016, 3017, 3018, 3019, 3020 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3024", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027", "VARIABLE_CHANGE_3035", "ANY_MONSTER_DIE_3038", "ANY_MONSTER_DIE_3039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 判断变量"suite2_status"为1
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240609003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240609003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3008(context, evt)
	-- 判断变量"suite2_create_count"为10
	if ScriptLib.GetGroupVariableValue(context, "suite2_create_count") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3008(context, evt)
	-- 针对当前group内变量名为 "suite2_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite2_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	if 3003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 30, 240609003, 28, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3023(context, evt)
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3023(context, evt)
	-- 针对当前group内变量名为 "suite3_create_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite3_create_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3024(context, evt)
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3024(context, evt)
	-- 针对当前group内变量名为 "suite4_create_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite4_create_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240609001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240609003, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240609002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609002, 2001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240609002, 2001, {7}) then
		return -1
	end
	
	-- 改变指定group组240609001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240609001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240609003, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3028(context, evt)
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3028(context, evt)
	-- 针对当前group内变量名为 "suite2_create_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite2_create_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3029(context, evt)
	if 3004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3029(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3030(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3030(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3031(context, evt)
	if 3015 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3015, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 判断变量"suite3_status"为1
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240609003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240609003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3033(context, evt)
	-- 判断变量"suite3_create_count"为9
	if ScriptLib.GetGroupVariableValue(context, "suite3_create_count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3033(context, evt)
	-- 针对当前group内变量名为 "suite3_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite3_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	if 3014 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3014, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3035(context, evt)
	-- 判断变量"suite4_create_count"为9
	if ScriptLib.GetGroupVariableValue(context, "suite4_create_count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3035(context, evt)
	-- 针对当前group内变量名为 "suite4_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite4_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3036(context, evt)
	if 3012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3036(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3012, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	if 3011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3011, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3038(context, evt)
	if 3018 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3038(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3018, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3039(context, evt)
	if 3017 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3039(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3017, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

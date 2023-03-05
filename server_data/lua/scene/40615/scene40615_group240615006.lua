--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21010401, pos = { x = 14.3, y = 0.2, z = 0.2 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 1 },
	{ config_id = 6002, monster_id = 21010401, pos = { x = -15.9, y = 0.2, z = 0.1 }, rot = { x = 0.0, y = 91.7, z = 0.0 }, level = 1 },
	{ config_id = 6003, monster_id = 21010701, pos = { x = -6.3, y = 0.2, z = -9.8 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 6004, monster_id = 21011201, pos = { x = 5.2, y = 0.2, z = 7.8 }, rot = { x = 0.0, y = 192.7, z = 0.0 }, level = 1 },
	{ config_id = 6005, monster_id = 21010701, pos = { x = 5.7, y = 0.2, z = -10.1 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 6006, monster_id = 21011201, pos = { x = 7.8, y = 0.2, z = 3.3 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6007, monster_id = 21010401, pos = { x = 9.9, y = 0.2, z = -6.2 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6008, monster_id = 21030401, pos = { x = -0.2, y = 0.2, z = -9.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6009, monster_id = 21011201, pos = { x = -9.1, y = 0.2, z = -4.9 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6010, monster_id = 21010401, pos = { x = -10.2, y = 0.2, z = 5.4 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 6011, monster_id = 21020301, pos = { x = -0.4, y = 0.2, z = -8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6012, monster_id = 21010401, pos = { x = -9.9, y = 0.2, z = -0.2 }, rot = { x = 0.0, y = 93.7, z = 0.0 }, level = 1 },
	{ config_id = 6013, monster_id = 21010401, pos = { x = 9.3, y = 0.2, z = -0.5 }, rot = { x = 0.0, y = 267.6, z = 0.0 }, level = 1 },
	{ config_id = 6014, monster_id = 21011201, pos = { x = -5.3, y = 0.2, z = 7.5 }, rot = { x = 0.0, y = 164.3, z = 0.0 }, level = 1 },
	{ config_id = 6015, monster_id = 21011201, pos = { x = 4.7, y = 0.2, z = 7.3 }, rot = { x = 0.0, y = 189.3, z = 0.0 }, level = 1 },
	{ config_id = 6029, monster_id = 21011201, pos = { x = -5.5, y = 0.2, z = 8.1 }, rot = { x = 0.0, y = 167.4, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6016, gadget_id = 70900205, pos = { x = 6.5, y = -1.2, z = 3.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_6017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6017", action = "action_EVENT_ANY_MONSTER_DIE_6017", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6018", action = "action_EVENT_ANY_MONSTER_DIE_6018" },
	{ name = "VARIABLE_CHANGE_6019", event = EventType.EVENT_VARIABLE_CHANGE, source = "suite2_create_count", condition = "condition_EVENT_VARIABLE_CHANGE_6019", action = "action_EVENT_VARIABLE_CHANGE_6019" },
	{ name = "ANY_MONSTER_DIE_6020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6020", action = "action_EVENT_ANY_MONSTER_DIE_6020", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6021", action = "action_EVENT_ANY_MONSTER_DIE_6021", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_6022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6022", action = "action_EVENT_ANY_MONSTER_LIVE_6022" },
	{ name = "ANY_MONSTER_LIVE_6023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6023", action = "action_EVENT_ANY_MONSTER_LIVE_6023", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_6024", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6024", action = "action_EVENT_ANY_MONSTER_LIVE_6024", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6025", action = "action_EVENT_ANY_MONSTER_DIE_6025", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_6026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6026" },
	{ name = "CHALLENGE_FAIL_6027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6027" },
	{ name = "ANY_MONSTER_LIVE_6028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6028", action = "action_EVENT_ANY_MONSTER_LIVE_6028", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6030", action = "action_EVENT_ANY_MONSTER_DIE_6030", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6031", action = "action_EVENT_ANY_MONSTER_DIE_6031", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6032", action = "action_EVENT_ANY_MONSTER_DIE_6032" },
	{ name = "VARIABLE_CHANGE_6033", event = EventType.EVENT_VARIABLE_CHANGE, source = "suite3_create_count", condition = "condition_EVENT_VARIABLE_CHANGE_6033", action = "action_EVENT_VARIABLE_CHANGE_6033" },
	{ name = "ANY_MONSTER_DIE_6034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6034", action = "action_EVENT_ANY_MONSTER_DIE_6034", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_6035", event = EventType.EVENT_VARIABLE_CHANGE, source = "suite4_create_count", condition = "condition_EVENT_VARIABLE_CHANGE_6035", action = "action_EVENT_VARIABLE_CHANGE_6035" },
	{ name = "ANY_MONSTER_DIE_6036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6036", action = "action_EVENT_ANY_MONSTER_DIE_6036", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6037", action = "action_EVENT_ANY_MONSTER_DIE_6037", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6038", action = "action_EVENT_ANY_MONSTER_DIE_6038", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6039", action = "action_EVENT_ANY_MONSTER_DIE_6039", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6040", action = "action_EVENT_ANY_MONSTER_DIE_6040", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6041", action = "action_EVENT_ANY_MONSTER_DIE_6041", trigger_count = 0 }
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
		gadgets = { 6016 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6004, 6005, 6029 },
		gadgets = { 6016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6018", "VARIABLE_CHANGE_6019", "ANY_MONSTER_DIE_6021", "ANY_MONSTER_LIVE_6022", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027", "ANY_MONSTER_LIVE_6028", "ANY_MONSTER_DIE_6030", "ANY_MONSTER_DIE_6040", "ANY_MONSTER_DIE_6041" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 6006, 6007, 6008, 6009, 6010 },
		gadgets = { 6016 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6023", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027", "ANY_MONSTER_DIE_6031", "ANY_MONSTER_DIE_6032", "VARIABLE_CHANGE_6033", "ANY_MONSTER_DIE_6034", "ANY_MONSTER_DIE_6036", "ANY_MONSTER_DIE_6037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6011, 6012, 6013, 6014, 6015 },
		gadgets = { 6016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6017", "ANY_MONSTER_DIE_6020", "ANY_MONSTER_LIVE_6024", "ANY_MONSTER_DIE_6025", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027", "VARIABLE_CHANGE_6035", "ANY_MONSTER_DIE_6038", "ANY_MONSTER_DIE_6039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6017(context, evt)
	if 6013 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6013, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6018(context, evt)
	-- 判断变量"suite2_status"为1
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240615006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240615006, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6019(context, evt)
	-- 判断变量"suite2_create_count"为10
	if ScriptLib.GetGroupVariableValue(context, "suite2_create_count") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6019(context, evt)
	-- 针对当前group内变量名为 "suite2_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite2_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6020(context, evt)
	if 6012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6012, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6021(context, evt)
	if 6003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6021(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6022(context, evt)
	if 6003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 30, 240615006, 28, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6023(context, evt)
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6023(context, evt)
	-- 针对当前group内变量名为 "suite3_create_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite3_create_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6024(context, evt)
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6024(context, evt)
	-- 针对当前group内变量名为 "suite4_create_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite4_create_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6025(context, evt)
	if 6010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6010, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6026(context, evt)
	-- 改变指定group组240615004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240615004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240615006, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6027(context, evt)
	-- 改变指定group组240615005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240615005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240615005, 5001, {7}) then
		return -1
	end
	
	-- 改变指定group组240615004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240615004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240615004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240615004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240615006, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6028(context, evt)
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6028(context, evt)
	-- 针对当前group内变量名为 "suite2_create_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite2_create_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6030(context, evt)
	if 6004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6030(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6031(context, evt)
	if 6010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6010, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6032(context, evt)
	-- 判断变量"suite3_status"为1
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240615006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240615006, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6033(context, evt)
	-- 判断变量"suite3_create_count"为9
	if ScriptLib.GetGroupVariableValue(context, "suite3_create_count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6033(context, evt)
	-- 针对当前group内变量名为 "suite3_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite3_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6034(context, evt)
	if 6009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6034(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6009, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6035(context, evt)
	-- 判断变量"suite4_create_count"为9
	if ScriptLib.GetGroupVariableValue(context, "suite4_create_count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6035(context, evt)
	-- 针对当前group内变量名为 "suite4_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "suite4_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6036(context, evt)
	if 6007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6036(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6037(context, evt)
	if 6006 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite3_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite3_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6037(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6006, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6038(context, evt)
	if 6014 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6038(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6014, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6039(context, evt)
	if 6015 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite4_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite4_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6039(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6015, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6040(context, evt)
	if 6029 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6040(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6029, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6041(context, evt)
	if 6005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite2_status"为0
	if ScriptLib.GetGroupVariableValue(context, "suite2_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6041(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

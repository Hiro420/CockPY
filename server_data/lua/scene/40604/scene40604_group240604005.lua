--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5002, monster_id = 21010201, pos = { x = -12.8, y = 0.0, z = -2.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 5003, monster_id = 21010201, pos = { x = -12.8, y = 0.0, z = 2.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 5005, monster_id = 21010201, pos = { x = 12.8, y = 0.2, z = 2.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5006, monster_id = 21010201, pos = { x = 12.7, y = 0.2, z = -2.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5010, monster_id = 21010501, pos = { x = -4.5, y = 0.0, z = -10.0 }, rot = { x = 0.0, y = 0.9, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5011, monster_id = 21010501, pos = { x = 5.7, y = 0.1, z = -10.3 }, rot = { x = 0.0, y = 0.9, z = 0.0 }, level = 1 },
	{ config_id = 5013, monster_id = 22010101, pos = { x = 0.5, y = 0.2, z = -12.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70350035, pos = { x = 0.0, y = 0.1, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 5007, gadget_id = 70900205, pos = { x = 7.4, y = -1.3, z = 2.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5031, gadget_id = 70350023, pos = { x = 0.0, y = 0.1, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_5004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5004", action = "action_EVENT_ANY_MONSTER_DIE_5004", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5008", action = "action_EVENT_ANY_MONSTER_DIE_5008", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5009", action = "action_EVENT_ANY_MONSTER_DIE_5009", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_5017", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster1_count", condition = "condition_EVENT_VARIABLE_CHANGE_5017", action = "action_EVENT_VARIABLE_CHANGE_5017", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5018", action = "action_EVENT_ANY_MONSTER_DIE_5018", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5019", action = "action_EVENT_ANY_MONSTER_DIE_5019", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_5020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5020", action = "action_EVENT_ANY_MONSTER_DIE_5020", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_5021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5021", action = "action_EVENT_ANY_MONSTER_LIVE_5021" },
	{ name = "ANY_MONSTER_DIE_5023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5023", action = "action_EVENT_ANY_MONSTER_DIE_5023", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_5024", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster2_count", condition = "condition_EVENT_VARIABLE_CHANGE_5024", action = "action_EVENT_VARIABLE_CHANGE_5024", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_5025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5025" },
	{ name = "CHALLENGE_FAIL_5026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5026" },
	{ name = "VARIABLE_CHANGE_5029", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster3_count", condition = "condition_EVENT_VARIABLE_CHANGE_5029", action = "action_EVENT_VARIABLE_CHANGE_5029", trigger_count = 0 },
	{ name = "TIMER_EVENT_5032", event = EventType.EVENT_TIMER_EVENT, source = "create_boss", condition = "", action = "action_EVENT_TIMER_EVENT_5032" },
	{ name = "TIMER_EVENT_5033", event = EventType.EVENT_TIMER_EVENT, source = "create_archer", condition = "", action = "action_EVENT_TIMER_EVENT_5033" }
}

-- 变量
variables = {
	{ name = "level_status", value = 0, no_refresh = false },
	{ name = "monster1_count", value = 0, no_refresh = false },
	{ name = "monster2_count", value = 0, no_refresh = false },
	{ name = "monster3_count", value = 0, no_refresh = false }
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
		gadgets = { 5001, 5007 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5002, 5003 },
		gadgets = { 5001, 5007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5004", "ANY_MONSTER_DIE_5008", "VARIABLE_CHANGE_5017", "ANY_MONSTER_LIVE_5021", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026", "TIMER_EVENT_5032", "TIMER_EVENT_5033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5005, 5006 },
		gadgets = { 5001, 5007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5009", "ANY_MONSTER_DIE_5023", "VARIABLE_CHANGE_5024", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5010, 5011 },
		gadgets = { 5001, 5007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5018", "ANY_MONSTER_DIE_5019", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026", "VARIABLE_CHANGE_5029" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5013 },
		gadgets = { 5001, 5007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5020", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 5007, 5031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 针对当前group内变量名为 "monster1_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 针对当前group内变量名为 "monster1_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5009(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5009(context, evt)
	-- 针对当前group内变量名为 "monster2_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5017(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	-- 判断变量"monster1_count"为2
	if ScriptLib.GetGroupVariableValue(context, "monster1_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5017(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5002, delay_time = 15 }) then
	  return -1
	end
	
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5003, delay_time = 15 }) then
	  return -1
	end
	
	-- 变量"monster1_count"赋值为0
	ScriptLib.SetGroupVariableValue(context, "monster1_count", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5018(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5018(context, evt)
	-- 针对当前group内变量名为 "monster3_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster3_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5019(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5019(context, evt)
	-- 针对当前group内变量名为 "monster3_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster3_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5020(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5020(context, evt)
	-- 延迟75秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5013, delay_time = 75 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为187的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 1, 187, {240,240604005,5001,0,15}) then
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240604005, 4)
	
	-- 延迟60秒后,向groupId为：240604005的对象,请求一次调用,并将string参数："create_boss" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240604005, "create_boss", 60) then
	  return -1
	end
	
	-- 延迟30秒后,向groupId为：240604005的对象,请求一次调用,并将string参数："create_archer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240604005, "create_archer", 30) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 针对当前group内变量名为 "monster2_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5024(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	-- 判断变量"monster2_count"为2
	if ScriptLib.GetGroupVariableValue(context, "monster2_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5024(context, evt)
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5005, delay_time = 15 }) then
	  return -1
	end
	
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5006, delay_time = 15 }) then
	  return -1
	end
	
	-- 变量"monster2_count"赋值为0
	ScriptLib.SetGroupVariableValue(context, "monster2_count", 0)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240604005, suite = 6 }) then
			return -1
		end
	
	-- 改变指定group组240604004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240604004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "level_status" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "level_status", 1) then
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240604007, suite = 2 }) then
			return -1
		end
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240604005, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240604005, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240604005, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240604005, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240604005, 5)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5026(context, evt)
	-- 改变指定group组240604007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240604007, 7001, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240604007, 7001, {7}) then
		return -1
	end
	
	-- 改变指定group组240604004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240604004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240604004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240604004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240604005, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5029(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	-- 判断变量"monster3_count"为2
	if ScriptLib.GetGroupVariableValue(context, "monster3_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5029(context, evt)
	-- 延迟40秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5010, delay_time = 40 }) then
	  return -1
	end
	
	-- 延迟40秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5011, delay_time = 40 }) then
	  return -1
	end
	
	-- 变量"monster3_count"赋值为0
	ScriptLib.SetGroupVariableValue(context, "monster3_count", 0)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_5032(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240604005, 5)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_5033(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240604005, 3)
	
	return 0
end

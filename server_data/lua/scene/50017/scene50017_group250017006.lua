--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20010601, pos = { x = 7.0, y = 0.1, z = 5.3 }, rot = { x = 0.0, y = 226.2, z = 0.0 }, level = 30, affix = { 1026 }, isElite = true },
	{ config_id = 6002, monster_id = 20010901, pos = { x = -7.2, y = 0.1, z = 4.5 }, rot = { x = 0.0, y = 123.8, z = 0.0 }, level = 30, affix = { 1029 }, isElite = true },
	{ config_id = 6003, monster_id = 23030101, pos = { x = -8.2, y = 0.1, z = -5.6 }, rot = { x = 0.0, y = 51.5, z = 0.0 }, level = 30, affix = { 1027 }, isElite = true },
	{ config_id = 6004, monster_id = 20011201, pos = { x = -0.1, y = 0.1, z = -11.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 },
	{ config_id = 6005, monster_id = 20011201, pos = { x = 7.0, y = 0.1, z = -5.3 }, rot = { x = 0.0, y = 312.4, z = 0.0 }, level = 30 },
	{ config_id = 6021, monster_id = 20011301, pos = { x = -0.2, y = 0.1, z = 9.4 }, rot = { x = 0.0, y = 177.5, z = 0.0 }, level = 30, affix = { 1028 }, isElite = true },
	{ config_id = 6029, monster_id = 22010101, pos = { x = -0.2, y = 0.1, z = -8.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6022, gadget_id = 70900205, pos = { x = 6.2, y = -1.4, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_6006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6006", action = "action_EVENT_ANY_MONSTER_DIE_6006", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6007", action = "action_EVENT_ANY_MONSTER_DIE_6007", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6008", action = "action_EVENT_ANY_MONSTER_DIE_6008", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_6009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6009", action = "action_EVENT_ANY_MONSTER_LIVE_6009", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_6010", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_count", condition = "condition_EVENT_VARIABLE_CHANGE_6010", action = "action_EVENT_VARIABLE_CHANGE_6010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6011", action = "action_EVENT_ANY_MONSTER_DIE_6011", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6012", action = "action_EVENT_ANY_MONSTER_DIE_6012", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_6023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6023", action = "action_EVENT_ANY_MONSTER_LIVE_6023" },
	{ name = "VARIABLE_CHANGE_6024", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_count", condition = "condition_EVENT_VARIABLE_CHANGE_6024", action = "action_EVENT_VARIABLE_CHANGE_6024", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_6025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6025", action = "action_EVENT_ANY_MONSTER_DIE_6025", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_6027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6027" },
	{ name = "CHALLENGE_FAIL_6028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6028" }
}

-- 变量
variables = {
	{ name = "monster_count", value = 0, no_refresh = false },
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
	rand_suite = false,
	npcs = { }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6021 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6006", "ANY_MONSTER_DIE_6007", "ANY_MONSTER_DIE_6008", "ANY_MONSTER_LIVE_6009", "VARIABLE_CHANGE_6010", "ANY_MONSTER_DIE_6011", "ANY_MONSTER_DIE_6012", "ANY_MONSTER_LIVE_6023", "VARIABLE_CHANGE_6024", "ANY_MONSTER_DIE_6025", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	if 6005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6005, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	if 6002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6002, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6008(context, evt)
	if 6003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6008(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6003, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6009(context, evt)
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6009(context, evt)
	-- 针对当前group内变量名为 "monster_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6010(context, evt)
	-- 判断变量"monster_count"为30
	if ScriptLib.GetGroupVariableValue(context, "monster_count") ~= 30 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6010(context, evt)
	-- 将本组内变量名为 "level_status" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6011(context, evt)
	if 6004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6011(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6004, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6012(context, evt)
	if 6021 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6012(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6021, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6023(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 250017006, 30, 0, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6024(context, evt)
	-- 判断变量"monster_count"为24
	if ScriptLib.GetGroupVariableValue(context, "monster_count") ~= 24 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6024(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6029, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6025(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6025(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6001, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6027(context, evt)
	-- 改变指定group组250017004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250017004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250017006, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250017006, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组250017005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250017005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250017005, 5001, {7}) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010101, pos = { x = -46.7, y = -11.0, z = -125.3 }, rot = { x = 0.0, y = 223.7, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 4002, monster_id = 21010101, pos = { x = -54.9, y = -11.0, z = -130.1 }, rot = { x = 0.0, y = 98.8, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 4003, monster_id = 21010601, pos = { x = -54.0, y = -4.0, z = -121.3 }, rot = { x = 0.0, y = 132.3, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 4004, monster_id = 21010601, pos = { x = -55.3, y = -4.0, z = -137.6 }, rot = { x = 0.0, y = 29.7, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 4005, monster_id = 21010601, pos = { x = -42.3, y = -4.0, z = -131.1 }, rot = { x = 0.0, y = 274.4, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 4006, monster_id = 21030201, pos = { x = -55.5, y = -11.0, z = -130.8 }, rot = { x = 0.0, y = 76.4, z = 0.0 }, level = 10 },
	{ config_id = 4007, monster_id = 21030201, pos = { x = -46.4, y = -11.0, z = -130.0 }, rot = { x = 0.0, y = 258.0, z = 0.0 }, level = 10 },
	{ config_id = 4008, monster_id = 21010101, pos = { x = -47.5, y = -11.0, z = -136.9 }, rot = { x = 0.0, y = 322.4, z = 0.0 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4009, gadget_id = 70360002, pos = { x = -50.3, y = -11.0, z = -130.3 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 4010, gadget_id = 70211001, pos = { x = -44.4, y = -11.0, z = -130.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4011, gadget_id = 70900299, pos = { x = -50.7, y = -10.7, z = -130.5 }, rot = { x = 0.0, y = 274.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_9", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9", action = "action_EVENT_GADGET_CREATE_9", trigger_count = 0 },
	{ name = "SELECT_OPTION_10", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10", action = "action_EVENT_SELECT_OPTION_10", trigger_count = 0, forbid_guest = false },
	{ name = "ANY_MONSTER_LIVE_11", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11", action = "action_EVENT_ANY_MONSTER_LIVE_11", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_12", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_13", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13" },
	{ name = "VARIABLE_CHANGE_14", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_14", action = "action_EVENT_VARIABLE_CHANGE_14", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_15", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_15", action = "action_EVENT_VARIABLE_CHANGE_15", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_16", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16", action = "action_EVENT_ANY_MONSTER_DIE_16", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_17", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17", action = "action_EVENT_ANY_MONSTER_DIE_17", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_18", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18", action = "action_EVENT_ANY_MONSTER_DIE_18", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_21", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21", action = "action_EVENT_ANY_MONSTER_DIE_21", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_23", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_23", action = "action_EVENT_VARIABLE_CHANGE_23", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_24", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_24", action = "action_EVENT_VARIABLE_CHANGE_24", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_25", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_25", action = "action_EVENT_VARIABLE_CHANGE_25", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "deadmonstercount", value = 0, no_refresh = false }
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
		gadgets = { 4009 },
		regions = { },
		triggers = { "GADGET_CREATE_9", "SELECT_OPTION_10", "ANY_MONSTER_LIVE_11", "CHALLENGE_FAIL_12", "CHALLENGE_SUCCESS_13", "VARIABLE_CHANGE_14", "VARIABLE_CHANGE_15", "ANY_MONSTER_DIE_16", "ANY_MONSTER_DIE_17", "ANY_MONSTER_DIE_18", "ANY_MONSTER_DIE_19", "ANY_MONSTER_DIE_20", "ANY_MONSTER_DIE_21", "ANY_MONSTER_DIE_22", "VARIABLE_CHANGE_23", "VARIABLE_CHANGE_24", "VARIABLE_CHANGE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_9(context, evt)
	if 4009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10(context, evt)
	if 4009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10(context, evt)
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4008, delay_time = 0 }) then
	  return -1
	end
	
	-- 创建id为4011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4011 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4009 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为159的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 159, 60, 250007004, 8, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12(context, evt)
	-- 创建id为4009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4009 }) then
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250007004, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4011 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4011 }) then
		    return -1
		end
		
	
	-- 创建id为4010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4010 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14(context, evt)
	-- 判断变量"deadmonstercount"为2
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 判断变量"deadmonstercount"为3
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16(context, evt)
	if 4002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 4004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 4005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21(context, evt)
	if 4006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	if 4007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_23(context, evt)
	-- 判断变量"deadmonstercount"为2
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_23(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_24(context, evt)
	-- 判断变量"deadmonstercount"为4
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_24(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4006, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_25(context, evt)
	-- 判断变量"deadmonstercount"为5
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_25(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

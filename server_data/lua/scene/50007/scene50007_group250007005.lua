--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17, monster_id = 21010101, pos = { x = -65.0, y = -10.5, z = -218.9 }, rot = { x = 0.0, y = 322.2, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 18, monster_id = 21010101, pos = { x = -57.0, y = -7.2, z = -227.2 }, rot = { x = 0.0, y = 317.5, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 19, monster_id = 21010601, pos = { x = -48.6, y = -6.8, z = -218.5 }, rot = { x = 0.0, y = 263.8, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 20, monster_id = 21010601, pos = { x = -38.0, y = -6.6, z = -227.5 }, rot = { x = 0.0, y = 282.2, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 21, monster_id = 21010601, pos = { x = -49.5, y = -10.4, z = -208.8 }, rot = { x = 0.0, y = 249.1, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 22, monster_id = 21010601, pos = { x = -65.6, y = -10.4, z = -199.0 }, rot = { x = 0.0, y = 138.5, z = 0.0 }, level = 10 },
	{ config_id = 23, monster_id = 21010601, pos = { x = -38.8, y = -8.4, z = -208.8 }, rot = { x = 0.0, y = 258.0, z = 0.0 }, level = 10 },
	{ config_id = 24, monster_id = 21010101, pos = { x = -57.7, y = -8.4, z = -208.5 }, rot = { x = 0.0, y = 239.2, z = 0.0 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13, gadget_id = 70360002, pos = { x = -78.5, y = -11.0, z = -213.5 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 14, gadget_id = 70211001, pos = { x = -75.9, y = -11.0, z = -213.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 15, gadget_id = 70900299, pos = { x = -54.0, y = 1.6, z = -214.8 }, rot = { x = 0.0, y = 274.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_26", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_26", action = "action_EVENT_GADGET_CREATE_26", trigger_count = 0 },
	{ name = "SELECT_OPTION_27", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_27", action = "action_EVENT_SELECT_OPTION_27", trigger_count = 0, forbid_guest = false },
	{ name = "ANY_MONSTER_LIVE_28", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_28", action = "action_EVENT_ANY_MONSTER_LIVE_28" },
	{ name = "CHALLENGE_FAIL_29", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_29", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_30", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_30", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_31", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_31", action = "action_EVENT_VARIABLE_CHANGE_31", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_32", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_32", action = "action_EVENT_VARIABLE_CHANGE_32", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ name = "ANY_MONSTER_DIE_34", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34", action = "action_EVENT_ANY_MONSTER_DIE_34", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_35", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35", action = "action_EVENT_ANY_MONSTER_DIE_35", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_36", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36", action = "action_EVENT_ANY_MONSTER_DIE_36", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_37", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37", action = "action_EVENT_ANY_MONSTER_DIE_37", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_40", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_40", action = "action_EVENT_VARIABLE_CHANGE_40", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_41", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_41", action = "action_EVENT_VARIABLE_CHANGE_41", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_42", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_42", action = "action_EVENT_VARIABLE_CHANGE_42", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_43", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43", action = "action_EVENT_ANY_MONSTER_DIE_43" }
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
		gadgets = { 13 },
		regions = { },
		triggers = { "GADGET_CREATE_26", "SELECT_OPTION_27", "ANY_MONSTER_LIVE_28", "CHALLENGE_FAIL_29", "CHALLENGE_SUCCESS_30", "VARIABLE_CHANGE_31", "VARIABLE_CHANGE_32", "ANY_MONSTER_DIE_33", "ANY_MONSTER_DIE_34", "ANY_MONSTER_DIE_35", "ANY_MONSTER_DIE_36", "ANY_MONSTER_DIE_37", "ANY_MONSTER_DIE_38", "ANY_MONSTER_DIE_39", "VARIABLE_CHANGE_40", "VARIABLE_CHANGE_41", "VARIABLE_CHANGE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_26(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_26(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_27(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_27(context, evt)
	-- 将configid为 13 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 18, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 24, delay_time = 0 }) then
	  return -1
	end
	
	-- 创建id为15的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_28(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_28(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为159的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 159, 60, 250007005, 8, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_29(context, evt)
	-- 创建id为13的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13 }) then
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250007005, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_30(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15 }) then
		    return -1
		end
		
	
	-- 创建id为14的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31(context, evt)
	-- 判断变量"deadmonstercount"为1
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 19, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_32(context, evt)
	-- 判断变量"deadmonstercount"为2
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 24 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36(context, evt)
	if 19 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	if 21 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	if 22 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40(context, evt)
	-- 判断变量"deadmonstercount"为3
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 21, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41(context, evt)
	-- 判断变量"deadmonstercount"为4
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_42(context, evt)
	-- 判断变量"deadmonstercount"为5
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43(context, evt)
	if 23 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

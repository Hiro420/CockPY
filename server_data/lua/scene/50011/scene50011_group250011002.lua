--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011301, pos = { x = 6.2, y = -0.1, z = 4.6 }, rot = { x = 0.0, y = 219.7, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2002, monster_id = 20011301, pos = { x = 2.2, y = -0.1, z = -1.8 }, rot = { x = 0.0, y = 124.5, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2003, monster_id = 20010601, pos = { x = 1.9, y = -0.1, z = 3.2 }, rot = { x = 0.0, y = 219.7, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2004, monster_id = 20010601, pos = { x = 6.8, y = -0.1, z = -2.5 }, rot = { x = 0.0, y = 219.7, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2005, monster_id = 20011501, pos = { x = 1.4, y = -0.1, z = -3.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2006, monster_id = 20011501, pos = { x = 1.1, y = -0.1, z = -0.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2007, monster_id = 20011501, pos = { x = 3.3, y = -0.1, z = 1.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2008, monster_id = 20011501, pos = { x = 4.2, y = -0.1, z = -2.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2009, monster_id = 20011501, pos = { x = 7.1, y = -0.1, z = 1.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2010, monster_id = 20011501, pos = { x = -0.2, y = -0.1, z = 2.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2011, monster_id = 20011501, pos = { x = 3.5, y = -0.1, z = 4.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 2012, monster_id = 20011501, pos = { x = 9.0, y = -0.1, z = -0.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, ban_excel_drop = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2013, gadget_id = 70360002, pos = { x = 3.5, y = -0.1, z = 0.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, gadget_id = 70211001, pos = { x = 3.4, y = -0.1, z = -3.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_10", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10", action = "action_EVENT_GADGET_CREATE_10", trigger_count = 0 },
	{ name = "SELECT_OPTION_11", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11", action = "action_EVENT_SELECT_OPTION_11", trigger_count = 0, forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_12", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_13", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_13", action = "action_EVENT_ANY_MONSTER_LIVE_13" },
	{ name = "VARIABLE_CHANGE_14", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14", action = "action_EVENT_VARIABLE_CHANGE_14", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_15", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15", action = "action_EVENT_VARIABLE_CHANGE_15", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_16", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "300702", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_16" },
	{ name = "CHALLENGE_FAIL_17", event = EventType.EVENT_CHALLENGE_FAIL, source = "300702", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_18", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18", action = "action_EVENT_VARIABLE_CHANGE_18", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "DeadMonster", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 2013 },
		regions = { },
		triggers = { "GADGET_CREATE_10", "SELECT_OPTION_11", "ANY_MONSTER_DIE_12", "ANY_MONSTER_LIVE_13", "VARIABLE_CHANGE_14", "VARIABLE_CHANGE_15", "CHALLENGE_SUCCESS_16", "CHALLENGE_FAIL_17", "VARIABLE_CHANGE_18" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_10(context, evt)
	if 2013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {104}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11(context, evt)
	if 2013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11(context, evt)
	-- 将configid为 2013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2005, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2006, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2008, delay_time = 0 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2013 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1017 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 针对当前group内变量名为 "DeadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "DeadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_13(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_13(context, evt)
	-- 创建编号为300702（该挑战的识别id),挑战内容为175的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 300702, 175, 120, 250011002, 12, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14(context, evt)
	-- 判断变量"DeadMonster"为2
	if ScriptLib.GetGroupVariableValue(context, "DeadMonster") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2010, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 判断变量"DeadMonster"为4
	if ScriptLib.GetGroupVariableValue(context, "DeadMonster") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2012, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2009, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_16(context, evt)
	-- 创建id为2014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2014 }) then
	  return -1
	end
	
	-- 创建id为2013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2013 }) then
	  return -1
	end
	
	-- 创建id为1017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1017 }) then
	  return -1
	end
	
	-- 创建id为5的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250011002, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 创建id为2013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2013 }) then
	  return -1
	end
	
	-- 创建id为1017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1017 }) then
	  return -1
	end
	
	-- 创建id为5的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18(context, evt)
	-- 判断变量"DeadMonster"为7
	if ScriptLib.GetGroupVariableValue(context, "DeadMonster") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2012, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

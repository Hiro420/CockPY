-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 5,
	group_id = 133108095,
	gadget_controller_id = 95013
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 21010601, pos = { x = -103.7, y = 258.0, z = -194.1 }, rot = { x = 0.0, y = 211.7, z = 0.0 }, level = 1, drop_id = 1000100, pose_id = 32 },
	{ config_id = 95002, monster_id = 21010601, pos = { x = -114.1, y = 257.9, z = -210.8 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 1, drop_id = 1000100, pose_id = 32 },
	{ config_id = 95003, monster_id = 21010601, pos = { x = -113.0, y = 258.1, z = -196.2 }, rot = { x = 0.0, y = 146.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95004, monster_id = 21010601, pos = { x = -100.1, y = 258.9, z = -202.5 }, rot = { x = 0.0, y = 266.3, z = 0.0 }, level = 1, drop_id = 1000100, pose_id = 32 },
	{ config_id = 95005, monster_id = 22010101, pos = { x = -110.4, y = 258.1, z = -194.9 }, rot = { x = 0.0, y = 174.0, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95006, gadget_id = 70360047, pos = { x = -107.6, y = 258.6, z = -202.6 }, rot = { x = 0.0, y = 62.8, z = 0.0 }, level = 19, chest_drop_id = 1000700, drop_count = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 95007, gadget_id = 70300118, pos = { x = -107.6, y = 260.6, z = -202.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95008, gadget_id = 70330012, pos = { x = -107.6, y = 259.2, z = -202.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95013, gadget_id = 70360001, pos = { x = -107.6, y = 258.6, z = -202.6 }, rot = { x = 0.0, y = 62.8, z = 0.0 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_95009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95009", action = "action_EVENT_GADGET_STATE_CHANGE_95009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_95010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95010", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_95011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_95012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95012", action = "action_EVENT_GADGET_STATE_CHANGE_95012", trigger_count = 0 },
	{ name = "GADGET_CREATE_95014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95014", action = "action_EVENT_GADGET_CREATE_95014", trigger_count = 0 },
	{ name = "SELECT_OPTION_95015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95015", action = "action_EVENT_SELECT_OPTION_95015", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "hasFinished", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 95006, 95007, 95008, 95013 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_95010", "CHALLENGE_FAIL_95011", "GADGET_STATE_CHANGE_95012", "GADGET_CREATE_95014", "SELECT_OPTION_95015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 95001, 95002, 95003, 95004, 95005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
	if 95006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133108095, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95010(context, evt)
	-- 将configid为 95006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 将configid为 95008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95007 }) then
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95011(context, evt)
	-- 将configid为 95006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为95013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95013 }) then
	  return -1
	end
	
	-- 将configid为 95008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95008, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为95007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108095, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108095, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95012(context, evt)
	if 95006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95012(context, evt)
	-- 将configid为 95008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_95014(context, evt)
	if 95013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108095, 95013, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95015(context, evt)
	-- 判断是gadgetid 95013 option_id 177
	if 95013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95015(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 5,
	group_id = 133108094,
	gadget_controller_id = 94013
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 20010601, pos = { x = -330.6, y = 200.3, z = -631.2 }, rot = { x = 0.0, y = 133.7, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 94002, monster_id = 20010601, pos = { x = -318.4, y = 200.1, z = -653.6 }, rot = { x = 0.0, y = 3.4, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 94003, monster_id = 20010501, pos = { x = -332.7, y = 200.3, z = -644.0 }, rot = { x = 0.0, y = 81.7, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 94004, monster_id = 20010501, pos = { x = -310.9, y = 200.3, z = -629.6 }, rot = { x = 0.0, y = 228.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 94005, monster_id = 20010701, pos = { x = -306.3, y = 200.1, z = -643.8 }, rot = { x = 0.0, y = 263.3, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94006, gadget_id = 70360047, pos = { x = -319.5, y = 200.1, z = -639.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, chest_drop_id = 1000700, drop_count = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 94007, gadget_id = 70300118, pos = { x = -319.5, y = 201.8, z = -639.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 94008, gadget_id = 70330011, pos = { x = -319.5, y = 200.1, z = -639.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 94013, gadget_id = 70360001, pos = { x = -319.5, y = 200.1, z = -639.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_94009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94009", action = "action_EVENT_GADGET_STATE_CHANGE_94009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_94010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_94010", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_94011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_94011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_94012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94012", action = "action_EVENT_GADGET_STATE_CHANGE_94012", trigger_count = 0 },
	{ name = "GADGET_CREATE_94014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_94014", action = "action_EVENT_GADGET_CREATE_94014", trigger_count = 0 },
	{ name = "SELECT_OPTION_94015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_94015", action = "action_EVENT_SELECT_OPTION_94015", trigger_count = 0 }
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
		gadgets = { 94006, 94007, 94008, 94013 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_94010", "CHALLENGE_FAIL_94011", "GADGET_STATE_CHANGE_94012", "GADGET_CREATE_94014", "SELECT_OPTION_94015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 94001, 94002, 94003, 94004, 94005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_94009(context, evt)
	if 94006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133108094, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_94010(context, evt)
	-- 将configid为 94006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94006, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 将configid为 94008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94007 }) then
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
function action_EVENT_CHALLENGE_FAIL_94011(context, evt)
	-- 将configid为 94006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94006, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为94013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 94013 }) then
	  return -1
	end
	
	-- 将configid为 94008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94008, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为94007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 94007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108094, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108094, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94012(context, evt)
	if 94006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94012(context, evt)
	-- 将configid为 94008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_94014(context, evt)
	if 94013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_94014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108094, 94013, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_94015(context, evt)
	-- 判断是gadgetid 94013 option_id 177
	if 94013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_94015(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

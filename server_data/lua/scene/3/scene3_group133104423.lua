-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 6,
	group_id = 133104423,
	gadget_controller_id = 423014
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 423001, monster_id = 20011301, pos = { x = 55.6, y = 271.2, z = 64.5 }, rot = { x = 0.0, y = 185.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 423002, monster_id = 20011201, pos = { x = 61.9, y = 271.2, z = 52.3 }, rot = { x = 0.0, y = 307.9, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 423003, monster_id = 20011301, pos = { x = 51.0, y = 271.2, z = 47.3 }, rot = { x = 0.0, y = 323.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 423004, monster_id = 20011201, pos = { x = 44.5, y = 271.2, z = 55.6 }, rot = { x = 0.0, y = 121.4, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 423005, monster_id = 21030401, pos = { x = 45.9, y = 271.2, z = 44.2 }, rot = { x = 0.0, y = 22.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 423013, monster_id = 20011201, pos = { x = 54.4, y = 271.2, z = 56.8 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 423006, gadget_id = 70360047, pos = { x = 51.9, y = 271.2, z = 52.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, chest_drop_id = 1000700, drop_count = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 423007, gadget_id = 70300118, pos = { x = 52.0, y = 274.0, z = 52.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 423008, gadget_id = 70330012, pos = { x = 52.0, y = 273.2, z = 52.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 423014, gadget_id = 70360001, pos = { x = 51.9, y = 271.2, z = 52.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_423009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423009", action = "action_EVENT_GADGET_STATE_CHANGE_423009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_423010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_423010", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_423011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_423011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_423012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423012", action = "action_EVENT_GADGET_STATE_CHANGE_423012", trigger_count = 0 },
	{ name = "GADGET_CREATE_423015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_423015", action = "action_EVENT_GADGET_CREATE_423015", trigger_count = 0 },
	{ name = "SELECT_OPTION_423016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_423016", action = "action_EVENT_SELECT_OPTION_423016", trigger_count = 0 }
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
		gadgets = { 423006, 423007, 423008, 423014 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_423010", "CHALLENGE_FAIL_423011", "GADGET_STATE_CHANGE_423012", "GADGET_CREATE_423015", "SELECT_OPTION_423016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 423001, 423002, 423003, 423004, 423005, 423013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_423009(context, evt)
	if 423006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133104423, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_423010(context, evt)
	-- 将configid为 423006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423006, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 将configid为 423008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 423007 }) then
		    return -1
		end
		
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133104423, 2)
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_423011(context, evt)
	-- 将configid为 423006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423006, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为423014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 423014 }) then
	  return -1
	end
	
	-- 创建id为423007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 423007 }) then
	  return -1
	end
	
	-- 将configid为 423008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423008, GadgetState.Default) then
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133104423, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104423, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423012(context, evt)
	if 423006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423012(context, evt)
	-- 将configid为 423008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 423007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_423015(context, evt)
	if 423014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_423015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104423, 423014, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_423016(context, evt)
	-- 判断是gadgetid 423014 option_id 177
	if 423014 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_423016(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

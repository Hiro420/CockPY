-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 6,
	group_id = 133102548,
	gadget_controller_id = 548014
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 548001, monster_id = 21030401, pos = { x = 1361.5, y = 200.2, z = 183.6 }, rot = { x = 3.1, y = 189.5, z = 3.2 }, level = 1, drop_id = 1000100 },
	{ config_id = 548002, monster_id = 20010501, pos = { x = 1360.4, y = 200.7, z = 170.9 }, rot = { x = 2.1, y = 359.9, z = 354.8 }, level = 1, drop_id = 1000100 },
	{ config_id = 548003, monster_id = 20010601, pos = { x = 1356.8, y = 200.2, z = 180.8 }, rot = { x = 0.0, y = 146.1, z = 359.1 }, level = 1, drop_id = 1000100 },
	{ config_id = 548004, monster_id = 20010701, pos = { x = 1365.6, y = 200.4, z = 179.2 }, rot = { x = 358.0, y = 228.1, z = 1.8 }, level = 1, drop_id = 1000100 },
	{ config_id = 548005, monster_id = 20010501, pos = { x = 1356.9, y = 200.3, z = 172.9 }, rot = { x = 358.7, y = 46.7, z = 2.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 548013, monster_id = 20010501, pos = { x = 1363.2, y = 201.1, z = 173.0 }, rot = { x = 359.7, y = 334.1, z = 354.4 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 548006, gadget_id = 70360047, pos = { x = 1360.6, y = 200.9, z = 174.7 }, rot = { x = 1.8, y = 0.3, z = 0.0 }, level = 16, chest_drop_id = 1000700, drop_count = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 548007, gadget_id = 70300118, pos = { x = 1360.6, y = 202.8, z = 174.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 548008, gadget_id = 70330011, pos = { x = 1360.6, y = 200.9, z = 174.7 }, rot = { x = 358.2, y = 360.0, z = 1.8 }, level = 1 },
	{ config_id = 548014, gadget_id = 70360001, pos = { x = 1360.6, y = 200.9, z = 174.7 }, rot = { x = 1.8, y = 0.3, z = 0.0 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_548009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548009", action = "action_EVENT_GADGET_STATE_CHANGE_548009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_548010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_548010" },
	{ name = "CHALLENGE_FAIL_548011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_548011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_548012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548012", action = "action_EVENT_GADGET_STATE_CHANGE_548012", trigger_count = 0 },
	{ name = "GADGET_CREATE_548015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_548015", action = "action_EVENT_GADGET_CREATE_548015", trigger_count = 0 },
	{ name = "SELECT_OPTION_548016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_548016", action = "action_EVENT_SELECT_OPTION_548016", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 548006, 548007, 548008, 548014 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_548010", "CHALLENGE_FAIL_548011", "GADGET_STATE_CHANGE_548012", "GADGET_CREATE_548015", "SELECT_OPTION_548016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 548001, 548002, 548003, 548004, 548005, 548013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_548009(context, evt)
	if 548006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_548009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133102548, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_548010(context, evt)
	-- 将configid为 548006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548006, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 将configid为 548008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 548007 }) then
		    return -1
		end
		
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133102548, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_548011(context, evt)
	-- 将configid为 548006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548006, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为548014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 548014 }) then
	  return -1
	end
	
	-- 将configid为 548008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548008, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为548007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 548007 }) then
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133102548, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102548, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548012(context, evt)
	if 548006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_548012(context, evt)
	-- 将configid为 548008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 548007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_548015(context, evt)
	if 548014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_548015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102548, 548014, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_548016(context, evt)
	-- 判断是gadgetid 548014 option_id 177
	if 548014 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_548016(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

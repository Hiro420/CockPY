-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 6,
	group_id = 133102563
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 563001, monster_id = 20030101, pos = { x = 1249.3, y = 200.8, z = 855.9 }, rot = { x = 0.0, y = 0.0, z = 350.2 }, level = 1, drop_id = 1000100 },
	{ config_id = 563002, monster_id = 20030101, pos = { x = 1253.3, y = 200.7, z = 847.6 }, rot = { x = 0.0, y = 0.0, z = 350.2 }, level = 1, drop_id = 1000100 },
	{ config_id = 563003, monster_id = 20010901, pos = { x = 1249.0, y = 200.6, z = 857.3 }, rot = { x = 350.4, y = 137.9, z = 2.6 }, level = 1, drop_id = 1000100 },
	{ config_id = 563004, monster_id = 21010901, pos = { x = 1255.2, y = 200.8, z = 865.2 }, rot = { x = 349.6, y = 189.4, z = 5.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 563005, monster_id = 20030101, pos = { x = 1257.8, y = 200.2, z = 849.9 }, rot = { x = 352.7, y = 227.8, z = 6.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 563013, monster_id = 21010901, pos = { x = 1264.7, y = 200.2, z = 853.3 }, rot = { x = 0.0, y = 269.1, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 563006, gadget_id = 70900049, pos = { x = 1253.3, y = 201.0, z = 854.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 563007, gadget_id = 70300118, pos = { x = 1254.7, y = 202.6, z = 854.5 }, rot = { x = 0.0, y = 0.0, z = 350.2 }, level = 1, persistent = true },
	{ config_id = 563008, gadget_id = 70330014, pos = { x = 1253.3, y = 200.8, z = 854.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_563009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_563009", action = "action_EVENT_GADGET_STATE_CHANGE_563009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_563010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_563010" },
	{ name = "CHALLENGE_FAIL_563011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_563011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_563012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_563012", action = "action_EVENT_GADGET_STATE_CHANGE_563012", trigger_count = 0 }
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
		gadgets = { 563006, 563007, 563008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_563009", "CHALLENGE_SUCCESS_563010", "CHALLENGE_FAIL_563011", "GADGET_STATE_CHANGE_563012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 563001, 563002, 563003, 563004, 563005, 563013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_563009(context, evt)
	if 563006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_563009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133102563, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_563010(context, evt)
	-- 将configid为 563008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_563011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102563, 2)
	
	-- 将configid为 563006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563006, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 563008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563008, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为563007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563007 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_563012(context, evt)
	if 563006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_563012(context, evt)
	-- 将configid为 563008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563007 }) then
		    return -1
		end
		
	
	return 0
end

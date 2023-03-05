-- Trigger变量
local defs = {
	gadget_id_1 = 3279
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3272, gadget_id = 70310001, pos = { x = 2742.9, y = 272.8, z = -1515.2 }, rot = { x = 0.0, y = 147.4, z = 0.0 }, level = 30 },
	{ config_id = 3273, gadget_id = 70310001, pos = { x = 2738.0, y = 273.2, z = -1510.6 }, rot = { x = 0.0, y = 110.4, z = 0.0 }, level = 30 },
	{ config_id = 3274, gadget_id = 70310001, pos = { x = 2730.9, y = 273.5, z = -1512.2 }, rot = { x = 0.0, y = 36.4, z = 0.0 }, level = 30 },
	{ config_id = 3275, gadget_id = 70310001, pos = { x = 2727.2, y = 274.1, z = -1506.5 }, rot = { x = 0.0, y = 214.3, z = 0.0 }, level = 30 },
	{ config_id = 3276, gadget_id = 70310001, pos = { x = 2720.0, y = 274.2, z = -1507.0 }, rot = { x = 0.0, y = 196.2, z = 0.0 }, level = 30 },
	{ config_id = 3277, gadget_id = 70310001, pos = { x = 2717.9, y = 275.3, z = -1500.9 }, rot = { x = 0.0, y = 85.4, z = 0.0 }, level = 30 },
	{ config_id = 3278, gadget_id = 70310001, pos = { x = 2709.6, y = 274.8, z = -1501.0 }, rot = { x = 0.0, y = 357.1, z = 0.0 }, level = 30 },
	{ config_id = 3279, gadget_id = 70211112, pos = { x = 2699.7, y = 279.0, z = -1493.1 }, rot = { x = 0.0, y = 112.4, z = 0.0 }, level = 30, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3280, gadget_id = 70900007, pos = { x = 2757.5, y = 274.8, z = -1510.4 }, rot = { x = 0.0, y = 266.2, z = 0.0 }, level = 30, persistent = true },
	{ config_id = 3378, gadget_id = 70900201, pos = { x = 2699.2, y = 278.8, z = -1492.9 }, rot = { x = 0.0, y = 326.7, z = 0.0 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_238", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238", action = "action_EVENT_GADGET_STATE_CHANGE_238", tlog_tag = "望风山地_225_元素机关挑战_开始" },
	{ name = "CHALLENGE_FAIL_239", event = EventType.EVENT_CHALLENGE_FAIL, source = "225", condition = "", action = "action_EVENT_CHALLENGE_FAIL_239" },
	{ name = "CHALLENGE_SUCCESS_240", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "225", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_240", tlog_tag = "望风山地_225_元素机关挑战_结算" },
	{ name = "GADGET_STATE_CHANGE_254", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254", action = "", tag = "22" },
	{ name = "GADGET_STATE_CHANGE_261", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261", action = "action_EVENT_GADGET_STATE_CHANGE_261" },
	{ name = "GADGET_STATE_CHANGE_262", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262", action = "action_EVENT_GADGET_STATE_CHANGE_262" },
	{ name = "GADGET_STATE_CHANGE_263", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263", action = "action_EVENT_GADGET_STATE_CHANGE_263" },
	{ name = "GADGET_STATE_CHANGE_264", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264", action = "action_EVENT_GADGET_STATE_CHANGE_264" },
	{ name = "GADGET_STATE_CHANGE_265", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265", action = "action_EVENT_GADGET_STATE_CHANGE_265" },
	{ name = "GADGET_STATE_CHANGE_266", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266", action = "action_EVENT_GADGET_STATE_CHANGE_266" },
	{ name = "GADGET_STATE_CHANGE_267", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_267", action = "action_EVENT_GADGET_STATE_CHANGE_267" }
}

-- 变量
variables = {
	{ name = "num_1", value = 0, no_refresh = true }
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
	rand_suite = true
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
		gadgets = { 3280 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_238", "CHALLENGE_FAIL_239", "CHALLENGE_SUCCESS_240", "GADGET_STATE_CHANGE_254", "GADGET_STATE_CHANGE_261", "GADGET_STATE_CHANGE_262", "GADGET_STATE_CHANGE_263", "GADGET_STATE_CHANGE_264", "GADGET_STATE_CHANGE_265", "GADGET_STATE_CHANGE_266", "GADGET_STATE_CHANGE_267" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238(context, evt)
	if 3280 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238(context, evt)
	-- 创建编号为225（该挑战的识别id),挑战内容为143的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 225, 143, 60, 7, 22, 1) then
		return -1
	end
	
	-- 创建id为3272的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3272 }) then
	  return -1
	end
	
	-- 创建id为3273的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3273 }) then
	  return -1
	end
	
	-- 创建id为3274的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3274 }) then
	  return -1
	end
	
	-- 创建id为3275的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3275 }) then
	  return -1
	end
	
	-- 创建id为3276的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3276 }) then
	  return -1
	end
	
	-- 创建id为3277的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3277 }) then
	  return -1
	end
	
	-- 创建id为3278的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3278 }) then
	  return -1
	end
	
	-- 创建id为3279的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3279 }) then
	  return -1
	end
	
	-- 创建id为3378的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3378 }) then
	  return -1
	end
	
	-- 变量"num_1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "num_1", 0)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_239(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003225, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 3280 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3280, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_240(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3378 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254(context, evt)
	if 3279 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261(context, evt)
	if 3272 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262(context, evt)
	if 3273 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_263(context, evt)
	if 3274 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264(context, evt)
	if 3275 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	if 3276 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_266(context, evt)
	if 3277 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_267(context, evt)
	if 3278 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_267(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

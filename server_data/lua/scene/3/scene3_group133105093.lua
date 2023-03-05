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
	{ config_id = 232, gadget_id = 70900007, pos = { x = 476.5, y = 204.6, z = -423.5 }, rot = { x = 0.0, y = 345.4, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 233, gadget_id = 70220005, pos = { x = 463.9, y = 219.3, z = -419.8 }, rot = { x = 12.5, y = 321.5, z = 0.0 }, level = 19 },
	{ config_id = 234, gadget_id = 70220005, pos = { x = 467.2, y = 209.2, z = -433.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 235, gadget_id = 70220005, pos = { x = 464.4, y = 242.9, z = -423.5 }, rot = { x = 20.3, y = 351.0, z = 355.5 }, level = 19 },
	{ config_id = 239, gadget_id = 70211111, pos = { x = 472.8, y = 204.2, z = -423.6 }, rot = { x = 0.0, y = 54.9, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_135", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_135", action = "action_EVENT_GADGET_STATE_CHANGE_135", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_136", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "8" },
	{ name = "ANY_GADGET_DIE_137", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_137", action = "action_EVENT_ANY_GADGET_DIE_137" },
	{ name = "ANY_GADGET_DIE_138", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_138", action = "action_EVENT_ANY_GADGET_DIE_138" },
	{ name = "ANY_GADGET_DIE_139", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139", action = "action_EVENT_ANY_GADGET_DIE_139" },
	{ name = "CHALLENGE_SUCCESS_140", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_140" },
	{ name = "CHALLENGE_FAIL_141", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_141" }
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
		-- description = ,
		monsters = { },
		gadgets = { 232 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_135", "ANY_GADGET_DIE_136", "ANY_GADGET_DIE_137", "ANY_GADGET_DIE_138", "ANY_GADGET_DIE_139", "CHALLENGE_SUCCESS_140", "CHALLENGE_FAIL_141" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 233, 234, 235 },
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
function condition_EVENT_GADGET_STATE_CHANGE_135(context, evt)
	if 232 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_135(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105093, 2)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为126的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 126, 25, 2, 8, 3) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105100, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105101, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105102, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_137(context, evt)
	if 234 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_137(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105100, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_138(context, evt)
	if 233 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_138(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105101, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139(context, evt)
	if 235 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105102, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_140(context, evt)
	-- 创建id为239的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 239 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_141(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105093, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 232 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105100, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105101, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105102, suite = 1 }) then
			return -1
		end
	
	return 0
end

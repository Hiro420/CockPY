--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 22010301, pos = { x = 76.6, y = 210.4, z = 740.0 }, rot = { x = 0.0, y = 310.0, z = 0.0 }, level = 18, drop_id = 1000100, pose_id = 0 },
	{ config_id = 46003, monster_id = 22010201, pos = { x = 46.0, y = 211.2, z = 733.6 }, rot = { x = 0.0, y = 310.0, z = 0.0 }, level = 18, drop_id = 1000100, pose_id = 0 },
	{ config_id = 46004, monster_id = 22010101, pos = { x = 66.5, y = 213.4, z = 765.0 }, rot = { x = 0.0, y = 310.0, z = 0.0 }, level = 18, drop_id = 1000100, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85, gadget_id = 70900007, pos = { x = 61.9, y = 210.7, z = 746.7 }, rot = { x = 0.0, y = 302.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 86, gadget_id = 70211121, pos = { x = 13.5, y = 213.8, z = 771.6 }, rot = { x = 359.3, y = 119.3, z = 360.0 }, level = 19, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 46002, gadget_id = 70350006, pos = { x = 37.7, y = 211.5, z = 758.1 }, rot = { x = 0.0, y = 297.8, z = 0.0 }, level = 19, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_56", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56", action = "action_EVENT_GADGET_STATE_CHANGE_56" },
	{ name = "CHALLENGE_SUCCESS_57", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_57" },
	{ name = "CHALLENGE_FAIL_58", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_58" },
	{ name = "GADGET_CREATE_46005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46005", action = "action_EVENT_GADGET_CREATE_46005" },
	{ name = "GADGET_CREATE_46006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46006", action = "action_EVENT_GADGET_CREATE_46006" },
	{ name = "GADGET_CREATE_46007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46007", action = "action_EVENT_GADGET_CREATE_46007", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "isUnlock", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 85, 46002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_56", "CHALLENGE_SUCCESS_57", "CHALLENGE_FAIL_58", "GADGET_CREATE_46007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 46001, 46003, 46004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 85, 46002 },
		regions = { },
		triggers = { "GADGET_CREATE_46005", "GADGET_CREATE_46006" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56(context, evt)
	if 85 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104046, 2)
	
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 90, 133104046, 3, 0) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_57(context, evt)
	-- 创建id为86的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 86 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      return -1
	    end
	
	-- 将configid为 46002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.GearStart) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104046, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_58(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104046, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104046, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 85 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46005(context, evt)
	if 46002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46005(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46006(context, evt)
	if 85 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46006(context, evt)
	-- 将configid为 85 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46007(context, evt)
	if 85 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"isUnlock"为2
	if ScriptLib.GetGroupVariableValue(context, "isUnlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46007(context, evt)
	-- 将configid为 85 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

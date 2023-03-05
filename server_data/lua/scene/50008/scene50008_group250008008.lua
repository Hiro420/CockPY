--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5, monster_id = 21010101, pos = { x = 222.1, y = 4.0, z = -602.4 }, rot = { x = 0.0, y = 269.4, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34, gadget_id = 70360001, pos = { x = 216.8, y = 4.0, z = -603.6 }, rot = { x = 0.0, y = 300.9, z = 0.0 }, level = 1 },
	{ config_id = 35, gadget_id = 70210104, pos = { x = 216.8, y = 4.7, z = -602.5 }, rot = { x = 0.0, y = 3.8, z = 0.0 }, level = 1, chest_drop_id = 100001, drop_count = 1, showcutscene = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_21", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21", action = "action_EVENT_GADGET_CREATE_21", trigger_count = 0 },
	{ name = "SELECT_OPTION_22", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22", action = "action_EVENT_SELECT_OPTION_22", trigger_count = 0, forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_23", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_23" },
	{ name = "CHALLENGE_FAIL_24", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_24", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_8001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8001", action = "" }
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
		gadgets = { 34 },
		regions = { },
		triggers = { "GADGET_CREATE_21", "SELECT_OPTION_22", "CHALLENGE_SUCCESS_23", "CHALLENGE_FAIL_24", "GADGET_STATE_CHANGE_8001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5 },
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
function condition_EVENT_GADGET_CREATE_21(context, evt)
	if 34 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_21(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008008, 34, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_22(context, evt)
	-- 判断是gadgetid 34
	if 34 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 20, 250008008, 1, 0) then
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250008008, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 34 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_23(context, evt)
	-- 创建id为35的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 35 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_24(context, evt)
	-- 创建id为34的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250008008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8001(context, evt)
	if 35 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

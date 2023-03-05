--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103, monster_id = 28020401, pos = { x = 80.1, y = 0.5, z = 427.5 }, rot = { x = 0.0, y = 200.2, z = 0.0 }, level = 1 },
	{ config_id = 104, monster_id = 20010101, pos = { x = 73.5, y = 0.5, z = 429.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 546, gadget_id = 70900272, pos = { x = 77.3, y = 0.5, z = 423.6 }, rot = { x = 0.0, y = 358.5, z = 0.0 }, level = 1 },
	{ config_id = 547, gadget_id = 70211001, pos = { x = 77.4, y = 1.3, z = 423.4 }, rot = { x = 0.0, y = 231.9, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 548, gadget_id = 70360001, pos = { x = 77.4, y = 1.3, z = 423.3 }, rot = { x = 0.0, y = 206.5, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_153", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153", action = "action_EVENT_GADGET_STATE_CHANGE_153", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_155", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_155", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_156", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_156" },
	{ name = "GADGET_CREATE_157", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_157", action = "action_EVENT_GADGET_CREATE_157", trigger_count = 0 },
	{ name = "SELECT_OPTION_158", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_158", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 546, 548 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_153", "CHALLENGE_FAIL_155", "CHALLENGE_SUCCESS_156", "GADGET_CREATE_157", "SELECT_OPTION_158" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153(context, evt)
	if 546 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153(context, evt)
	-- 创建编号为888（该挑战的识别id),挑战内容为125的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 125, 30, 220000076, 1, 0) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_155(context, evt)
	-- 将configid为 546 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 546, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为548的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 548 }) then
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000076, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_156(context, evt)
	-- 将configid为 546 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 546, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 创建id为547的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 547 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_157(context, evt)
	if 548 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_157(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_SELECT_OPTION_158(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 548 }) then
		    return -1
		end
		
	
	-- 将configid为 546 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 546, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

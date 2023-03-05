--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7002, monster_id = 21010201, pos = { x = 347.3, y = -19.3, z = 336.1 }, rot = { x = 0.0, y = 343.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7003, monster_id = 21010301, pos = { x = 343.3, y = -19.3, z = 336.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7004, monster_id = 21010201, pos = { x = 338.8, y = -19.3, z = 335.9 }, rot = { x = 0.0, y = 19.4, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7005, monster_id = 20011001, pos = { x = 349.9, y = -19.3, z = 341.1 }, rot = { x = 0.0, y = 278.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7006, monster_id = 20011001, pos = { x = 336.7, y = -19.3, z = 340.7 }, rot = { x = 0.0, y = 48.8, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7007, monster_id = 20011101, pos = { x = 342.9, y = -19.3, z = 337.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7008, monster_id = 20011201, pos = { x = 350.4, y = -19.3, z = 342.9 }, rot = { x = 0.0, y = 262.4, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7009, monster_id = 20011201, pos = { x = 336.7, y = -19.3, z = 342.9 }, rot = { x = 0.0, y = 76.6, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 7010, monster_id = 20011301, pos = { x = 343.2, y = -19.3, z = 340.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7011, monster_id = 20011201, pos = { x = 343.3, y = -19.3, z = 347.7 }, rot = { x = 0.0, y = 206.1, z = 0.0 }, level = 1, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7012, gadget_id = 70220010, pos = { x = 348.1, y = -19.2, z = 338.8 }, rot = { x = 0.0, y = 98.5, z = 0.0 }, level = 1 },
	{ config_id = 7013, gadget_id = 70220010, pos = { x = 338.4, y = -19.2, z = 339.0 }, rot = { x = 0.0, y = 174.3, z = 0.0 }, level = 1 },
	{ config_id = 7014, gadget_id = 70900205, pos = { x = 340.7, y = -20.2, z = 343.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_13", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13" },
	{ name = "CHALLENGE_SUCCESS_14", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14" },
	{ name = "ANY_GADGET_DIE_17", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_17", action = "action_EVENT_ANY_GADGET_DIE_17", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_18", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_18", action = "action_EVENT_ANY_GADGET_DIE_18", trigger_count = 0 },
	{ name = "TIMER_EVENT_19", event = EventType.EVENT_TIMER_EVENT, source = "create14", condition = "", action = "action_EVENT_TIMER_EVENT_19", trigger_count = 0 },
	{ name = "TIMER_EVENT_20", event = EventType.EVENT_TIMER_EVENT, source = "create15", condition = "", action = "action_EVENT_TIMER_EVENT_20", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38" },
	{ name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" }
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
	suite = 2,
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
		monsters = { 7002, 7003, 7004 },
		gadgets = { 7012, 7013, 7014 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_13", "CHALLENGE_SUCCESS_14", "ANY_GADGET_DIE_17", "ANY_GADGET_DIE_18", "TIMER_EVENT_19", "TIMER_EVENT_20", "ANY_MONSTER_DIE_38", "ANY_MONSTER_DIE_39" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 7014 },
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
function condition_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	if 7003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1002（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 4, 240004007, 10, 30, 5) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7002, delay_time = 0 }) then
	  return -1
	end
	
	-- 创生gadget 7012
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7012 }) then
		return -1
	end
	
	-- 创生gadget 7013
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7013 }) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240004004, 13, {12}) then
		return -1
	end
	
	-- 改变指定group组240004004中， configid为13的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240004004, 13, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240004007, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240004008, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_17(context, evt)
	if 7012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_17(context, evt)
	-- 延迟20秒后,向groupId为：240004007的对象,请求一次调用,并将string参数："create14" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240004007, "create14", 20) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_18(context, evt)
	if 7013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_18(context, evt)
	-- 延迟20秒后,向groupId为：240004007的对象,请求一次调用,并将string参数："create15" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240004007, "create15", 20) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_19(context, evt)
	-- 创生gadget 7012
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7012 }) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_20(context, evt)
	-- 创生gadget 7013
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7013 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	if 7007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7009, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7010, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7011, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7005, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7006, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

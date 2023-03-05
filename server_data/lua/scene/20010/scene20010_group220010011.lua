--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5, monster_id = 20010801, pos = { x = 451.9, y = -31.4, z = 18.3 }, rot = { x = 0.0, y = 257.3, z = 0.0 }, level = 1 },
	{ config_id = 9, monster_id = 20010801, pos = { x = 452.1, y = -31.4, z = 16.3 }, rot = { x = 0.0, y = 266.5, z = 0.0 }, level = 1 },
	{ config_id = 10, monster_id = 20011001, pos = { x = 451.6, y = -31.4, z = 16.4 }, rot = { x = 0.0, y = 264.9, z = 0.0 }, level = 1 },
	{ config_id = 11, monster_id = 20011001, pos = { x = 451.6, y = -31.4, z = 18.1 }, rot = { x = 0.0, y = 260.3, z = 0.0 }, level = 1 },
	{ config_id = 12, monster_id = 20011001, pos = { x = 451.9, y = -31.4, z = 12.5 }, rot = { x = 0.0, y = 271.1, z = 0.0 }, level = 1 },
	{ config_id = 13, monster_id = 20010801, pos = { x = 452.0, y = -31.4, z = 10.1 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 1 },
	{ config_id = 14, monster_id = 20011001, pos = { x = 452.3, y = -31.4, z = 10.4 }, rot = { x = 0.0, y = 265.0, z = 0.0 }, level = 1 },
	{ config_id = 17, monster_id = 20011101, pos = { x = 451.7, y = -31.5, z = 14.2 }, rot = { x = 0.0, y = 273.1, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 20, monster_id = 20010901, pos = { x = 452.2, y = -31.5, z = 14.3 }, rot = { x = 0.0, y = 265.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 21, monster_id = 20010801, pos = { x = 452.2, y = -31.5, z = 12.2 }, rot = { x = 0.0, y = 266.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11001, gadget_id = 70900205, pos = { x = 456.9, y = -32.6, z = 11.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_29", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_29" },
	{ name = "CHALLENGE_FAIL_30", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_30" },
	{ name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31" },
	{ name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" },
	{ name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ name = "ANY_MONSTER_DIE_34", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34", action = "action_EVENT_ANY_MONSTER_DIE_34" },
	{ name = "ANY_MONSTER_DIE_35", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35", action = "action_EVENT_ANY_MONSTER_DIE_35" },
	{ name = "ANY_MONSTER_LIVE_36", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_36", action = "action_EVENT_ANY_MONSTER_LIVE_36" }
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
		gadgets = { 11001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 9, 11, 14, 17, 21 },
		gadgets = { 11001 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_29", "CHALLENGE_FAIL_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "ANY_MONSTER_DIE_34", "ANY_MONSTER_DIE_35", "ANY_MONSTER_LIVE_36" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_29(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 76, {12}) then
		return -1
	end
	
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.GearStart) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（446，-30，14），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=446, y=-30, z=14}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_30(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 76, {7}) then
		return -1
	end
	
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220010011, suite = 1 }) then
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（446，-30，14），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=446, y=-30, z=14}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 21 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_36(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_36(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为172的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 172, 220010011, 10, 30, 3) then
		return -1
	end
	
	return 0
end

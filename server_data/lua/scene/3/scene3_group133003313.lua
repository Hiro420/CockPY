--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1023, monster_id = 20010101, pos = { x = 2828.5, y = 253.4, z = -1736.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 1024, monster_id = 20010101, pos = { x = 2823.2, y = 253.8, z = -1732.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 1025, monster_id = 20010101, pos = { x = 2824.7, y = 252.1, z = -1745.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 1026, monster_id = 20010101, pos = { x = 2827.6, y = 252.9, z = -1740.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 44, drop_id = 1000100 },
	{ config_id = 1027, monster_id = 20010101, pos = { x = 2830.5, y = 252.5, z = -1745.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3271, gadget_id = 70900007, pos = { x = 2840.1, y = 264.1, z = -1710.8 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 30, persistent = true },
	{ config_id = 3287, gadget_id = 70211111, pos = { x = 2839.2, y = 264.0, z = -1709.4 }, rot = { x = 0.0, y = 320.3, z = 0.0 }, level = 30, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_235", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_235", action = "action_EVENT_GADGET_CREATE_235" },
	{ name = "CHALLENGE_FAIL_236", event = EventType.EVENT_CHALLENGE_FAIL, source = "313", condition = "", action = "action_EVENT_CHALLENGE_FAIL_236" },
	{ name = "CHALLENGE_SUCCESS_237", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "313", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_237" }
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
function condition_EVENT_GADGET_CREATE_235(context, evt)
	if 3271 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_235(context, evt)
	-- 创建编号为313（该挑战的识别id),挑战内容为142的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 313, 142, 30, 133003313, 5, 0) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1023, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1024, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1025, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1026, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1027, delay_time = 0 }) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2850，255，-1725），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2850, y=255, z=-1725}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_236(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003313, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_237(context, evt)
	-- 创建id为3287的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3287 }) then
	  return -1
	end
	
	return 0
end

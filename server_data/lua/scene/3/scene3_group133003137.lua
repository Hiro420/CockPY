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
	{ config_id = 2582, gadget_id = 70900007, pos = { x = 2341.3, y = 252.7, z = -1406.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2583, gadget_id = 70220005, pos = { x = 2323.8, y = 252.4, z = -1403.4 }, rot = { x = 0.0, y = 12.4, z = 0.0 }, level = 5 },
	{ config_id = 2584, gadget_id = 70220005, pos = { x = 2332.8, y = 248.6, z = -1390.9 }, rot = { x = 0.0, y = 47.6, z = 0.0 }, level = 5 },
	{ config_id = 2585, gadget_id = 70220005, pos = { x = 2325.8, y = 251.8, z = -1391.2 }, rot = { x = 0.0, y = 119.4, z = 0.0 }, level = 5 },
	{ config_id = 2586, gadget_id = 70220005, pos = { x = 2328.6, y = 247.7, z = -1371.3 }, rot = { x = 0.0, y = 0.5, z = 0.0 }, level = 5 },
	{ config_id = 2587, gadget_id = 70211111, pos = { x = 2339.1, y = 252.8, z = -1406.6 }, rot = { x = 0.0, y = 179.1, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_111", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111", action = "action_EVENT_GADGET_STATE_CHANGE_111" },
	{ name = "CHALLENGE_SUCCESS_112", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "137", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_112" },
	{ name = "CHALLENGE_FAIL_113", event = EventType.EVENT_CHALLENGE_FAIL, source = "137", condition = "", action = "action_EVENT_CHALLENGE_FAIL_113" },
	{ name = "ANY_GADGET_DIE_114", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_114", trigger_count = 0, tag = "8" }
}

-- 变量
variables = {
	{ name = "ison", value = 1, no_refresh = true },
	{ name = "bomb", value = 0, no_refresh = false }
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
		gadgets = { 2582 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111", "CHALLENGE_SUCCESS_112", "CHALLENGE_FAIL_113", "ANY_GADGET_DIE_114" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111(context, evt)
	if 2582 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111(context, evt)
	-- 创建编号为137（该挑战的识别id),挑战内容为126的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 137, 126, 20, 2, 8, 4) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2325，251，-1391），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2325, y=251, z=-1391}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建id为2583的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2583 }) then
	  return -1
	end
	
	-- 创建id为2584的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2584 }) then
	  return -1
	end
	
	-- 创建id为2585的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2585 }) then
	  return -1
	end
	
	-- 创建id为2586的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2586 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_112(context, evt)
	-- 创建id为2587的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2587 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_113(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003137, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 2582 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2582, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_114(context, evt)
	-- 将本组内变量名为 "bomb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "bomb", 1) then
	  return -1
	end
	
	return 0
end

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
	{ config_id = 173, gadget_id = 70900039, pos = { x = 2253.8, y = 298.0, z = -363.9 }, rot = { x = 0.0, y = 88.2, z = 0.0 }, level = 15, persistent = true },
	{ config_id = 177, gadget_id = 70690001, pos = { x = 2261.7, y = 298.1, z = -364.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 15 },
	{ config_id = 178, gadget_id = 70690001, pos = { x = 2291.7, y = 298.1, z = -354.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 15 },
	{ config_id = 179, gadget_id = 70690001, pos = { x = 2321.7, y = 298.1, z = -364.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 15 },
	{ config_id = 180, gadget_id = 70690001, pos = { x = 2351.7, y = 298.1, z = -354.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 15 },
	{ config_id = 181, gadget_id = 70211111, pos = { x = 2409.1, y = 293.4, z = -369.0 }, rot = { x = 2.5, y = 264.5, z = 0.3 }, level = 15, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 204, gadget_id = 70900201, pos = { x = 2409.3, y = 293.5, z = -369.2 }, rot = { x = 0.0, y = 315.1, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_39", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39", action = "action_EVENT_GADGET_STATE_CHANGE_39", tlog_tag = "奔狼岭_32_元素机关挑战_开始" },
	{ name = "CHALLENGE_SUCCESS_40", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "32", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_40", tlog_tag = "奔狼岭_32_元素机关挑战_结算" },
	{ name = "CHALLENGE_FAIL_41", event = EventType.EVENT_CHALLENGE_FAIL, source = "32", condition = "", action = "action_EVENT_CHALLENGE_FAIL_41" },
	{ name = "GADGET_STATE_CHANGE_45", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45", action = "", trigger_count = 0, tag = "11" }
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
		gadgets = { 173 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_39", "CHALLENGE_SUCCESS_40", "CHALLENGE_FAIL_41", "GADGET_STATE_CHANGE_45" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39(context, evt)
	if 173 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39(context, evt)
	-- 创建编号为32（该挑战的识别id),挑战内容为134的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 32, 134, 20, 7, 11, 1) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2416，305，-326），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2416, y=305, z=-326}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建id为177的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177 }) then
	  return -1
	end
	
	-- 创建id为178的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 178 }) then
	  return -1
	end
	
	-- 创建id为179的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 179 }) then
	  return -1
	end
	
	-- 创建id为180的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 180 }) then
	  return -1
	end
	
	-- 创建id为204的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 204 }) then
	  return -1
	end
	
	-- 创建id为181的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 181 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_40(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 177 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 178 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 180 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 204 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_41(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004032, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 173 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45(context, evt)
	if 181 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

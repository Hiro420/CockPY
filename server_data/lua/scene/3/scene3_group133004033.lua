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
	{ config_id = 122, gadget_id = 70900007, pos = { x = 2235.1, y = 254.7, z = -435.7 }, rot = { x = 0.0, y = 360.0, z = 0.0 }, level = 13, persistent = true },
	{ config_id = 145, gadget_id = 70380002, pos = { x = 2239.8, y = 250.0, z = -450.3 }, rot = { x = 0.0, y = 225.6, z = 0.0 }, level = 1, route_id = 3004500 },
	{ config_id = 146, gadget_id = 70380002, pos = { x = 2237.8, y = 250.0, z = -450.3 }, rot = { x = 0.0, y = 283.4, z = 0.0 }, level = 1, route_id = 3004500 },
	{ config_id = 147, gadget_id = 70380002, pos = { x = 2235.8, y = 250.0, z = -450.3 }, rot = { x = 0.0, y = 246.0, z = 0.0 }, level = 1, route_id = 3004500 },
	{ config_id = 148, gadget_id = 70211111, pos = { x = 2236.8, y = 254.6, z = -438.1 }, rot = { x = 352.2, y = 17.4, z = 0.8 }, level = 11, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_33", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33", action = "action_EVENT_GADGET_STATE_CHANGE_33", tlog_tag = "奔狼岭_33_元素机关挑战_开始" },
	{ name = "ANY_GADGET_DIE_42", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 3, tag = "10" },
	{ name = "CHALLENGE_SUCCESS_43", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "33", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_43", tlog_tag = "奔狼岭_33_元素机关挑战_结算" },
	{ name = "CHALLENGE_FAIL_44", event = EventType.EVENT_CHALLENGE_FAIL, source = "33", condition = "", action = "action_EVENT_CHALLENGE_FAIL_44" }
}

-- 变量
variables = {
	{ name = "shoot1", value = 0, no_refresh = false }
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
		gadgets = { 122 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_33", "ANY_GADGET_DIE_42", "CHALLENGE_SUCCESS_43", "CHALLENGE_FAIL_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33(context, evt)
	if 122 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33(context, evt)
	-- 创建编号为33（该挑战的识别id),挑战内容为132的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 33, 132, 30, 2, 10, 3) then
		return -1
	end
	
	-- 创建id为145的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145 }) then
	  return -1
	end
	
	-- 创建id为146的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146 }) then
	  return -1
	end
	
	-- 创建id为147的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 147 }) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2240，250，-455），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2240, y=250, z=-455}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_43(context, evt)
	-- 创建id为148的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 148 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_44(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004033, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 122 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

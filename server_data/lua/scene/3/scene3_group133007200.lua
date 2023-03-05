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
	{ config_id = 849, gadget_id = 70500000, pos = { x = 2589.8, y = 245.1, z = 404.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 850, gadget_id = 70900039, pos = { x = 2532.4, y = 211.0, z = 406.1 }, rot = { x = 0.0, y = 34.7, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_231", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_231", action = "action_EVENT_GADGET_STATE_CHANGE_231", trigger_count = 0, tlog_tag = "风龙_200_风场机关3_触发" },
	{ name = "GATHER_240", event = EventType.EVENT_GATHER, source = "849", condition = "condition_EVENT_GATHER_240", action = "action_EVENT_GATHER_240" }
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
		gadgets = { 849, 850 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_231", "GATHER_240" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_231(context, evt)
	if 850 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_231(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007199, suite = 2 }) then
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（2580，223，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2580, y=223, z=404}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_240(context, evt)
	if 849 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_240(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007199, suite = 1 }) then
			return -1
		end
	
	return 0
end

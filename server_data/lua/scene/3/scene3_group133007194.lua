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
	{ config_id = 700, gadget_id = 70900039, pos = { x = 2478.3, y = 245.7, z = 466.3 }, rot = { x = 0.0, y = 3.6, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_226", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226", action = "action_EVENT_GADGET_STATE_CHANGE_226", trigger_count = 0, tlog_tag = "风龙_194_风场机关2_触发" }
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
		gadgets = { 700 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_226" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226(context, evt)
	if 700 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226(context, evt)
	-- 触发镜头注目，注目位置为坐标（2477，245，452），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2477, y=245, z=452}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007195, suite = 2 }) then
			return -1
		end
	
	return 0
end

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
	{ config_id = 2026, gadget_id = 70690001, pos = { x = 2019.6, y = 221.2, z = -1414.3 }, rot = { x = 4.2, y = 134.9, z = 0.0 }, level = 5 },
	{ config_id = 2028, gadget_id = 70680001, pos = { x = 1972.2, y = 202.3, z = -1380.2 }, rot = { x = 0.0, y = 340.7, z = 0.0 }, level = 5, arguments = { 0, 0, 0 } },
	{ config_id = 2029, gadget_id = 70900039, pos = { x = 2035.2, y = 223.4, z = -1426.6 }, rot = { x = 0.0, y = 319.2, z = 0.0 }, level = 5, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_160", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160", action = "action_EVENT_GADGET_STATE_CHANGE_160", trigger_count = 0 },
	{ name = "TIMER_EVENT_161", event = EventType.EVENT_TIMER_EVENT, source = "stop2029", condition = "", action = "action_EVENT_TIMER_EVENT_161", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 2029 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_160", "TIMER_EVENT_161" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_GADGET_STATE_CHANGE_160(context, evt)
	if 2029 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160(context, evt)
	-- 触发镜头注目，注目位置为坐标（2002，215，-1400），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2002, y=215, z=-1400}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建id为2026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2026 }) then
	  return -1
	end
	
	-- 创建id为2027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2027 }) then
	  return -1
	end
	
	-- 创建id为2028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2028 }) then
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：133001140的对象,请求一次调用,并将string参数："stop2029" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001140, "stop2029", 20) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_161(context, evt)
	-- 将configid为 2029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2029, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001140, suite = 2 }) then
			return -1
		end
	
	return 0
end

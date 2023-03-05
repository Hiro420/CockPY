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
	{ config_id = 645, gadget_id = 70900242, pos = { x = -185.0, y = -35.0, z = -630.0 }, rot = { x = 0.0, y = 221.9, z = 0.0 }, level = 1, route_id = 50004022 },
	{ config_id = 646, gadget_id = 70900303, pos = { x = -199.6, y = -10.5, z = -615.9 }, rot = { x = 0.0, y = 54.7, z = 0.0 }, level = 1 },
	{ config_id = 647, gadget_id = 70900277, pos = { x = -198.4, y = -11.0, z = -610.9 }, rot = { x = 0.0, y = 119.4, z = 0.0 }, level = 1 },
	{ config_id = 649, gadget_id = 70290012, pos = { x = -202.4, y = -11.0, z = -596.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 650, gadget_id = 70500000, pos = { x = -208.4, y = -2.0, z = -593.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3101, owner = 649 },
	{ config_id = 651, gadget_id = 70900284, pos = { x = -208.5, y = -2.0, z = -593.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_131", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_131", action = "action_EVENT_PLATFORM_REACH_POINT_131", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_132", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_132", action = "action_EVENT_GADGET_STATE_CHANGE_132", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_133", event = EventType.EVENT_CLIENT_EXECUTE, source = "View", condition = "", action = "action_EVENT_CLIENT_EXECUTE_133", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_134", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_134", trigger_count = 0 }
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
		gadgets = { 645, 646, 649, 650 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_131", "GADGET_STATE_CHANGE_132", "CLIENT_EXECUTE_133", "ANY_GADGET_DIE_134" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_131(context, evt)
	-- 判断是gadgetid 为 645的移动平台，是否到达了50004022 的路线中的 1 点
	
	if 645 ~= evt.param1 then
	  return false
	end
	
	if 50004022 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_131(context, evt)
	-- 将configid为 645 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 645, GadgetState.Default) then
			return -1
		end 
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 645, 50004023) then
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 645) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_132(context, evt)
	if 645 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_132(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 645, 50004022) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_133(context, evt)
	-- 创建id为647的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 647 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134(context, evt)
	-- 创建id为651的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 651 }) then
	  return -1
	end
	
	return 0
end

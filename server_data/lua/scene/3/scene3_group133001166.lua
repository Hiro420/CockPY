-- Trigger变量
local defs = {
	gadget_id_1 = 209
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 827, monster_id = 20010101, pos = { x = 1505.7, y = 209.4, z = -1936.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2347, gadget_id = 70220013, pos = { x = 1802.6, y = 203.4, z = -1270.9 }, rot = { x = 0.0, y = 109.1, z = 0.0 }, level = 5 },
	{ config_id = 2348, gadget_id = 70710002, pos = { x = 1804.0, y = 203.4, z = -1272.3 }, rot = { x = 0.0, y = 167.5, z = 0.0 }, level = 5, route_id = 3001176, persistent = true },
	{ config_id = 2349, gadget_id = 70220014, pos = { x = 1961.3, y = 196.8, z = -1163.8 }, rot = { x = 0.0, y = 109.1, z = 0.0 }, level = 5 },
	{ config_id = 2350, gadget_id = 70710002, pos = { x = 1961.6, y = 196.8, z = -1164.5 }, rot = { x = 0.0, y = 167.5, z = 0.0 }, level = 5, route_id = 3001179, persistent = true },
	{ config_id = 2351, gadget_id = 70220014, pos = { x = 2000.8, y = 205.4, z = -1364.4 }, rot = { x = 0.0, y = 109.1, z = 0.0 }, level = 5 },
	{ config_id = 2352, gadget_id = 70710002, pos = { x = 2001.0, y = 205.4, z = -1365.3 }, rot = { x = 0.0, y = 167.5, z = 0.0 }, level = 5, route_id = 3001182, persistent = true }
}

-- 区域
regions = {
	{ config_id = 209, shape = RegionShape.SPHERE, radius = 22.4, pos = { x = 1900.5, y = 205.4, z = -1265.3 } }
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_202", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_202", action = "action_EVENT_ANY_GADGET_DIE_202" },
	{ name = "TIMER_EVENT_203", event = EventType.EVENT_TIMER_EVENT, source = "spirit_1", condition = "", action = "action_EVENT_TIMER_EVENT_203" },
	{ name = "TIMER_EVENT_205", event = EventType.EVENT_TIMER_EVENT, source = "spirit_2", condition = "", action = "action_EVENT_TIMER_EVENT_205" },
	{ name = "ANY_GADGET_DIE_206", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_206", action = "action_EVENT_ANY_GADGET_DIE_206" },
	{ name = "TIMER_EVENT_208", event = EventType.EVENT_TIMER_EVENT, source = "spirit_3", condition = "", action = "action_EVENT_TIMER_EVENT_208" },
	{ name = "ENTER_REGION_209", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209", action = "" },
	{ name = "ANY_GADGET_DIE_210", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210", action = "action_EVENT_ANY_GADGET_DIE_210" }
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
		monsters = { 827 },
		gadgets = { },
		regions = { 209 },
		triggers = { "ANY_GADGET_DIE_202", "TIMER_EVENT_203", "TIMER_EVENT_205", "ANY_GADGET_DIE_206", "TIMER_EVENT_208", "ENTER_REGION_209", "ANY_GADGET_DIE_210" },
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
function condition_EVENT_ANY_GADGET_DIE_202(context, evt)
	if 2347 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_202(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2348, 3001177) then
	  return -1
	end
	
	-- 延迟15秒后,向groupId为：133001166的对象,请求一次调用,并将string参数："spirit_1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001166, "spirit_1", 15) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_203(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2348, 3001178) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_205(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2350, 3001181) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_206(context, evt)
	if 2349 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_206(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2350, 3001180) then
	  return -1
	end
	
	-- 延迟15秒后,向groupId为：133001166的对象,请求一次调用,并将string参数："spirit_2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001166, "spirit_2", 15) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_208(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2352, 3001184) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_209(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 42301) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210(context, evt)
	if 2351 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2352, 3001183) then
	  return -1
	end
	
	-- 延迟15秒后,向groupId为：133001166的对象,请求一次调用,并将string参数："spirit_3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001166, "spirit_3", 15) then
	  return -1
	end
	
	return 0
end

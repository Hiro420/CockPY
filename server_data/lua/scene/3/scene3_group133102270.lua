-- Trigger变量
local defs = {
	point_sum = 5,
	route_2 = 310200108,
	gadget_seelie = 270002
}
-- DEFS_MISCS
defs.final_point = defs.point_sum - 1













-- DEFS_MISCS

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
	{ config_id = 270001, gadget_id = 70710006, pos = { x = 1226.0, y = 204.7, z = 265.2 }, rot = { x = 10.0, y = 121.6, z = 354.1 }, level = 32, persistent = true },
	{ config_id = 270002, gadget_id = 70710010, pos = { x = 1252.1, y = 200.6, z = 218.9 }, rot = { x = 0.0, y = 315.4, z = 0.0 }, level = 32, route_id = 310200107 },
	{ config_id = 270003, gadget_id = 70710007, pos = { x = 1226.4, y = 204.8, z = 264.6 }, rot = { x = 0.0, y = 144.1, z = 0.0 }, level = 32 },
	{ config_id = 270004, gadget_id = 70211111, pos = { x = 1224.8, y = 204.7, z = 264.3 }, rot = { x = 358.5, y = 38.8, z = 343.4 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 270010, gadget_id = 70220013, pos = { x = 1252.3, y = 200.8, z = 218.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 270011, gadget_id = 70220013, pos = { x = 1255.7, y = 200.6, z = 216.3 }, rot = { x = 359.3, y = 308.7, z = 359.4 }, level = 16 },
	{ config_id = 270012, gadget_id = 70220026, pos = { x = 1253.1, y = 200.4, z = 217.0 }, rot = { x = 0.0, y = 334.6, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_270005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_270005", action = "action_EVENT_PLATFORM_REACH_POINT_270005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_270006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_270006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_270006", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_270007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_270007", action = "action_EVENT_ANY_GADGET_DIE_270007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_270008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270008", action = "action_EVENT_GADGET_STATE_CHANGE_270008" },
	{ name = "GADGET_CREATE_270009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270009", action = "action_EVENT_GADGET_CREATE_270009", trigger_count = 0 }
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
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 270001, 270002, 270003, 270010, 270011, 270012 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_270005", "AVATAR_NEAR_PLATFORM_270006", "ANY_GADGET_DIE_270007", "GADGET_STATE_CHANGE_270008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 270001, 270004 },
		regions = { },
		triggers = { "GADGET_CREATE_270009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_270005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_270005(context, evt)
	-- 将configid为 270001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 270002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_270006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_270006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 270002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_270007(context, evt)
	if 270010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_270007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 270002, 310200108) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270008(context, evt)
	if 270001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102270, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270009(context, evt)
	if 270001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270009(context, evt)
	-- 将configid为 270001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

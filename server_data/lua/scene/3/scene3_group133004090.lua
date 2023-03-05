-- Trigger变量
local defs = {
	point_sum = 5,
	route_2 = 300400619,
	gadget_seelie = 90002
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
	{ config_id = 90001, gadget_id = 70710006, pos = { x = 2252.7, y = 270.2, z = -263.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 90002, gadget_id = 70710010, pos = { x = 2225.3, y = 272.3, z = -254.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, route_id = 300400620 },
	{ config_id = 90003, gadget_id = 70710007, pos = { x = 2252.0, y = 270.2, z = -263.3 }, rot = { x = 0.0, y = 304.3, z = 0.0 }, level = 15 },
	{ config_id = 90010, gadget_id = 70900039, pos = { x = 2228.0, y = 270.7, z = -255.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 90011, gadget_id = 70620001, pos = { x = 2228.0, y = 270.2, z = -256.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_90005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_90005", action = "action_EVENT_PLATFORM_REACH_POINT_90005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_90006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_90006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_90006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_90007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90007", action = "action_EVENT_GADGET_STATE_CHANGE_90007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_90008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90008", action = "action_EVENT_GADGET_STATE_CHANGE_90008" },
	{ name = "GADGET_CREATE_90009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90009", action = "action_EVENT_GADGET_CREATE_90009", trigger_count = 0 }
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
		gadgets = { 90001, 90002, 90003, 90010, 90011 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_90005", "AVATAR_NEAR_PLATFORM_90006", "GADGET_STATE_CHANGE_90007", "GADGET_STATE_CHANGE_90008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 90001 },
		regions = { },
		triggers = { "GADGET_CREATE_90009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_90005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_90005(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 90002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 90002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_90006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_90006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 90002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90007(context, evt)
	if 90010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 90002, 300400619) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 90003 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 90011 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90008(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90008(context, evt)
	-- 针对当前group内变量名为 "unlock_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "unlock_1", 1, 133004088) then
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004090, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90009(context, evt)
	if 90001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90009(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

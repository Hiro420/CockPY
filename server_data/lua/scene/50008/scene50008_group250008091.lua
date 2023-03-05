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
	{ config_id = 368, gadget_id = 70710006, pos = { x = 103.9, y = 4.0, z = -312.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 369, gadget_id = 70710003, pos = { x = 104.1, y = 4.0, z = -330.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50008045 },
	{ config_id = 370, gadget_id = 70710007, pos = { x = 103.9, y = 4.0, z = -317.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 371, gadget_id = 70211001, pos = { x = 104.0, y = 5.1, z = -312.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 372, gadget_id = 70710006, pos = { x = 108.2, y = 4.0, z = -308.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 373, gadget_id = 70710003, pos = { x = 123.8, y = 4.0, z = -308.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50008047 },
	{ config_id = 374, gadget_id = 70710007, pos = { x = 112.3, y = 4.0, z = -308.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 375, gadget_id = 70211001, pos = { x = 108.2, y = 5.2, z = -308.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 376, gadget_id = 70710006, pos = { x = 103.9, y = 4.0, z = -304.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 377, gadget_id = 70710003, pos = { x = 103.8, y = 4.0, z = -288.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50008050 },
	{ config_id = 378, gadget_id = 70710007, pos = { x = 103.8, y = 4.0, z = -299.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 379, gadget_id = 70211001, pos = { x = 108.2, y = 5.2, z = -308.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 380, gadget_id = 70710006, pos = { x = 99.8, y = 4.0, z = -308.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 381, gadget_id = 70710003, pos = { x = 87.2, y = 4.0, z = -308.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50008052 },
	{ config_id = 382, gadget_id = 70710007, pos = { x = 95.8, y = 4.0, z = -308.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 383, gadget_id = 70211001, pos = { x = 108.2, y = 5.2, z = -308.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 265, shape = RegionShape.SPHERE, radius = 5, pos = { x = 104.2, y = 4.0, z = -330.5 } },
	{ config_id = 269, shape = RegionShape.SPHERE, radius = 5, pos = { x = 123.9, y = 4.0, z = -308.9 } },
	{ config_id = 273, shape = RegionShape.SPHERE, radius = 5, pos = { x = 103.7, y = 4.0, z = -288.9 } },
	{ config_id = 277, shape = RegionShape.SPHERE, radius = 5, pos = { x = 87.1, y = 4.0, z = -308.0 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_262", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_262", action = "action_EVENT_PLATFORM_REACH_POINT_262", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_263", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_263", action = "action_EVENT_AVATAR_NEAR_PLATFORM_263", trigger_count = 0, forbid_guest = false },
	{ name = "AVATAR_NEAR_PLATFORM_264", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_264", action = "action_EVENT_AVATAR_NEAR_PLATFORM_264", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_265", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265", action = "action_EVENT_ENTER_REGION_265", trigger_count = 0, forbid_guest = false },
	{ name = "PLATFORM_REACH_POINT_266", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_266", action = "action_EVENT_PLATFORM_REACH_POINT_266", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_267", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_267", action = "action_EVENT_AVATAR_NEAR_PLATFORM_267", trigger_count = 0, forbid_guest = false },
	{ name = "AVATAR_NEAR_PLATFORM_268", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_268", action = "action_EVENT_AVATAR_NEAR_PLATFORM_268", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_269", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_269", action = "action_EVENT_ENTER_REGION_269", trigger_count = 0, forbid_guest = false },
	{ name = "PLATFORM_REACH_POINT_270", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_270", action = "action_EVENT_PLATFORM_REACH_POINT_270", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_271", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_271", action = "action_EVENT_AVATAR_NEAR_PLATFORM_271", trigger_count = 0, forbid_guest = false },
	{ name = "AVATAR_NEAR_PLATFORM_272", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_272", action = "action_EVENT_AVATAR_NEAR_PLATFORM_272", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_273", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273", action = "action_EVENT_ENTER_REGION_273", trigger_count = 0, forbid_guest = false },
	{ name = "PLATFORM_REACH_POINT_274", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_274", action = "action_EVENT_PLATFORM_REACH_POINT_274", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_275", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_275", action = "action_EVENT_AVATAR_NEAR_PLATFORM_275", trigger_count = 0, forbid_guest = false },
	{ name = "AVATAR_NEAR_PLATFORM_276", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_276", action = "action_EVENT_AVATAR_NEAR_PLATFORM_276", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_277", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277", action = "action_EVENT_ENTER_REGION_277", trigger_count = 0, forbid_guest = false },
	{ name = "VARIABLE_CHANGE_278", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_278", action = "action_EVENT_VARIABLE_CHANGE_278", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "solved", value = 0, no_refresh = false }
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
		gadgets = { 368, 369, 370, 372, 373, 374, 376, 377, 378, 380, 381, 382 },
		regions = { 265, 269, 273, 277 },
		triggers = { "PLATFORM_REACH_POINT_262", "AVATAR_NEAR_PLATFORM_263", "AVATAR_NEAR_PLATFORM_264", "ENTER_REGION_265", "PLATFORM_REACH_POINT_266", "AVATAR_NEAR_PLATFORM_267", "AVATAR_NEAR_PLATFORM_268", "ENTER_REGION_269", "PLATFORM_REACH_POINT_270", "AVATAR_NEAR_PLATFORM_271", "AVATAR_NEAR_PLATFORM_272", "ENTER_REGION_273", "PLATFORM_REACH_POINT_274", "AVATAR_NEAR_PLATFORM_275", "AVATAR_NEAR_PLATFORM_276", "ENTER_REGION_277", "VARIABLE_CHANGE_278" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 368, 371, 372, 375, 376, 379, 380, 383 },
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
function condition_EVENT_PLATFORM_REACH_POINT_262(context, evt)
	-- 判断是gadgetid 为 369的移动平台，是否到达了50008046 的路线中的 3 点
	
	if 369 ~= evt.param1 then
	  return false
	end
	
	if 50008046 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_262(context, evt)
	-- 将configid为 368 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368, GadgetState.GearStart) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 369 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_263(context, evt)
	-- 判断是gadgetid 为 369的移动平台，是否到达了50008046 的路线中的 1 点
	
	if 369 ~= evt.param1 then
	  return false
	end
	
	if 50008046 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_263(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_264(context, evt)
	-- 判断是gadgetid 为 369的移动平台，是否到达了50008046 的路线中的 2 点
	
	if 369 ~= evt.param1 then
	  return false
	end
	
	if 50008046 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_264(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_265(context, evt)
	if evt.param1 ~= 265 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_265(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 369, 50008046) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 370 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_266(context, evt)
	-- 判断是gadgetid 为 373的移动平台，是否到达了50008048 的路线中的 3 点
	
	if 373 ~= evt.param1 then
	  return false
	end
	
	if 50008048 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_266(context, evt)
	-- 将configid为 372 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372, GadgetState.GearStart) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 373 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_267(context, evt)
	-- 判断是gadgetid 为 373的移动平台，是否到达了50008048 的路线中的 1 点
	
	if 373 ~= evt.param1 then
	  return false
	end
	
	if 50008048 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_267(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 373) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_268(context, evt)
	-- 判断是gadgetid 为 373的移动平台，是否到达了50008048 的路线中的 2 点
	
	if 373 ~= evt.param1 then
	  return false
	end
	
	if 50008048 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_268(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 373) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_269(context, evt)
	if evt.param1 ~= 269 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_269(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 373, 50008048) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 374 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_270(context, evt)
	-- 判断是gadgetid 为 377的移动平台，是否到达了50008049 的路线中的 3 点
	
	if 377 ~= evt.param1 then
	  return false
	end
	
	if 50008049 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_270(context, evt)
	-- 将configid为 376 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 376, GadgetState.GearStart) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 377 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_271(context, evt)
	-- 判断是gadgetid 为 377的移动平台，是否到达了50008049 的路线中的 1 点
	
	if 377 ~= evt.param1 then
	  return false
	end
	
	if 50008049 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_271(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_272(context, evt)
	-- 判断是gadgetid 为 377的移动平台，是否到达了50008049 的路线中的 2 点
	
	if 377 ~= evt.param1 then
	  return false
	end
	
	if 50008049 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_272(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_273(context, evt)
	if evt.param1 ~= 273 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_273(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 377, 50008049) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 378 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_274(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50008051 的路线中的 3 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50008051 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_274(context, evt)
	-- 将configid为 380 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380, GadgetState.GearStart) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 381 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_275(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50008051 的路线中的 1 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50008051 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_275(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 381) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_276(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50008051 的路线中的 2 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50008051 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_276(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 381) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277(context, evt)
	if evt.param1 ~= 277 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 381, 50008051) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 382 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_278(context, evt)
	-- 判断变量"solved"为4
	if ScriptLib.GetGroupVariableValue(context, "solved") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_278(context, evt)
	-- 创建id为0的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 0 }) then
	  return -1
	end
	
	return 0
end

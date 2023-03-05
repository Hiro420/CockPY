-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300400607,
	gadget_seelie = 284002
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
	{ config_id = 284001, gadget_id = 70710006, pos = { x = 2479.7, y = 244.3, z = -369.5 }, rot = { x = 0.0, y = 157.0, z = 0.0 }, level = 20 },
	{ config_id = 284002, gadget_id = 70710010, pos = { x = 2523.9, y = 251.7, z = -407.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, route_id = 300400608 },
	{ config_id = 284003, gadget_id = 70710007, pos = { x = 2480.1, y = 244.3, z = -370.4 }, rot = { x = 0.0, y = 125.2, z = 0.0 }, level = 20 }
}

-- 区域
regions = {
	{ config_id = 284007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2524.2, y = 250.6, z = -409.5 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_284005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_284005", action = "action_EVENT_PLATFORM_REACH_POINT_284005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_284006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_284006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_284006", trigger_count = 0 },
	{ name = "ENTER_REGION_284007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284007", action = "action_EVENT_ENTER_REGION_284007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_284008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284008", action = "action_EVENT_GADGET_STATE_CHANGE_284008" },
	{ name = "GADGET_CREATE_284009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_284009", action = "action_EVENT_GADGET_CREATE_284009", trigger_count = 0 }
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
		gadgets = { 284001, 284002, 284003 },
		regions = { 284007 },
		triggers = { "PLATFORM_REACH_POINT_284005", "AVATAR_NEAR_PLATFORM_284006", "ENTER_REGION_284007", "GADGET_STATE_CHANGE_284008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 284001 },
		regions = { },
		triggers = { "GADGET_CREATE_284009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_284005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_284005(context, evt)
	-- 将configid为 284001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 284002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 284002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_284006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_284006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 284002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_284007(context, evt)
	if evt.param1 ~= 284007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 284002, 300400607) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 284003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284008(context, evt)
	if 284001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_284008(context, evt)
	-- 将本组内变量名为 "num_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "num_2", 1, 133004233) then
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004284, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_284009(context, evt)
	if 284001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_284009(context, evt)
	-- 将configid为 284001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

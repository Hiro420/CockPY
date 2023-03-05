-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310200189,
	gadget_seelie = 623002
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
	{ config_id = 623001, gadget_id = 70710006, pos = { x = 1986.6, y = 236.0, z = 812.6 }, rot = { x = 0.0, y = 319.7, z = 0.0 }, level = 18 },
	{ config_id = 623002, gadget_id = 70710010, pos = { x = 1902.3, y = 211.2, z = 864.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, route_id = 310200190 },
	{ config_id = 623003, gadget_id = 70710007, pos = { x = 1985.8, y = 235.7, z = 813.8 }, rot = { x = 0.0, y = 317.9, z = 0.0 }, level = 18 },
	{ config_id = 623004, gadget_id = 70211111, pos = { x = 1988.6, y = 236.3, z = 812.4 }, rot = { x = 12.4, y = 321.5, z = 0.0 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 623007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1900.8, y = 212.5, z = 864.8 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_623005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_623005", action = "action_EVENT_PLATFORM_REACH_POINT_623005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_623006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_623006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_623006", trigger_count = 0 },
	{ name = "ENTER_REGION_623007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_623007", action = "action_EVENT_ENTER_REGION_623007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_623008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_623008", action = "action_EVENT_GADGET_STATE_CHANGE_623008" },
	{ name = "GADGET_CREATE_623009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_623009", action = "action_EVENT_GADGET_CREATE_623009", trigger_count = 0 },
	{ name = "PLATFORM_REACH_POINT_623010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_623010", action = "action_EVENT_PLATFORM_REACH_POINT_623010" }
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
		gadgets = { 623001, 623002, 623003 },
		regions = { 623007 },
		triggers = { "PLATFORM_REACH_POINT_623005", "AVATAR_NEAR_PLATFORM_623006", "ENTER_REGION_623007", "GADGET_STATE_CHANGE_623008", "PLATFORM_REACH_POINT_623010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 623001, 623004 },
		regions = { },
		triggers = { "GADGET_CREATE_623009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_623005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_623005(context, evt)
	-- 将configid为 623001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 623001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 623002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 623002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "door", 1, 133102614) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_623006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_623006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 623002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_623007(context, evt)
	if evt.param1 ~= 623007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_623007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 623002, 310200189) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 623003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_623008(context, evt)
	if 623001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_623008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102623, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_623009(context, evt)
	if 623001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_623009(context, evt)
	-- 将configid为 623001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 623001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_623010(context, evt)
	-- 判断是gadgetid 为 623002的移动平台，是否到达了310200189 的路线中的 2 点
	
	if 623002 ~= evt.param1 then
	  return false
	end
	
	if 310200189 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_623010(context, evt)
	-- 创建id为623011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 623011 }) then
	  return -1
	end
	
	return 0
end

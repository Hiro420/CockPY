-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300400615,
	gadget_seelie = 107002
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
	{ config_id = 107001, gadget_id = 70710006, pos = { x = 2413.1, y = 299.0, z = -246.9 }, rot = { x = 6.0, y = 0.3, z = 6.6 }, level = 20 },
	{ config_id = 107002, gadget_id = 70710010, pos = { x = 2373.8, y = 315.8, z = -176.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, route_id = 300400616 },
	{ config_id = 107003, gadget_id = 70710007, pos = { x = 2412.8, y = 298.9, z = -246.3 }, rot = { x = 8.6, y = 326.9, z = 2.2 }, level = 20 },
	{ config_id = 107004, gadget_id = 70211111, pos = { x = 2415.3, y = 299.1, z = -239.9 }, rot = { x = 352.8, y = 171.9, z = 348.6 }, level = 20, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 107007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2373.9, y = 315.7, z = -176.7 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_107005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_107005", action = "action_EVENT_PLATFORM_REACH_POINT_107005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_107006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_107006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_107006", trigger_count = 0 },
	{ name = "ENTER_REGION_107007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107007", action = "action_EVENT_ENTER_REGION_107007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_107008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107008", action = "action_EVENT_GADGET_STATE_CHANGE_107008" },
	{ name = "GADGET_CREATE_107009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107009", action = "action_EVENT_GADGET_CREATE_107009", trigger_count = 0 }
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
		gadgets = { 107001, 107002, 107003 },
		regions = { 107007 },
		triggers = { "PLATFORM_REACH_POINT_107005", "AVATAR_NEAR_PLATFORM_107006", "ENTER_REGION_107007", "GADGET_STATE_CHANGE_107008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 107001, 107004 },
		regions = { },
		triggers = { "GADGET_CREATE_107009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_107005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_107005(context, evt)
	-- 将configid为 107001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 107002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 107002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_107006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_107006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 107002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107007(context, evt)
	if evt.param1 ~= 107007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 107002, 300400615) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 107003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107008(context, evt)
	if 107001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004107, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_107009(context, evt)
	if 107001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107009(context, evt)
	-- 将configid为 107001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

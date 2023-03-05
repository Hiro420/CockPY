-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 300700116,
	gadget_seelie = 131002
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
	{ config_id = 131001, gadget_id = 70710006, pos = { x = 2472.1, y = 209.4, z = 311.6 }, rot = { x = 0.0, y = 349.6, z = 0.0 }, level = 23 },
	{ config_id = 131002, gadget_id = 70710010, pos = { x = 2507.7, y = 208.0, z = 235.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, route_id = 300700117 },
	{ config_id = 131003, gadget_id = 70710007, pos = { x = 2473.7, y = 209.2, z = 310.9 }, rot = { x = 0.0, y = 154.8, z = 0.0 }, level = 23 },
	{ config_id = 131004, gadget_id = 70211111, pos = { x = 2472.2, y = 209.7, z = 314.3 }, rot = { x = 10.8, y = 128.5, z = 0.7 }, level = 23, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 131007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2509.2, y = 207.8, z = 235.6 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_131005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_131005", action = "action_EVENT_PLATFORM_REACH_POINT_131005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_131006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_131006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_131006", trigger_count = 0 },
	{ name = "ENTER_REGION_131007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_131007", action = "action_EVENT_ENTER_REGION_131007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_131008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_131008", action = "action_EVENT_GADGET_STATE_CHANGE_131008" },
	{ name = "GADGET_CREATE_131009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_131009", action = "action_EVENT_GADGET_CREATE_131009", trigger_count = 0 }
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
		gadgets = { 131001, 131002, 131003 },
		regions = { 131007 },
		triggers = { "PLATFORM_REACH_POINT_131005", "AVATAR_NEAR_PLATFORM_131006", "ENTER_REGION_131007", "GADGET_STATE_CHANGE_131008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 131001, 131004 },
		regions = { },
		triggers = { "GADGET_CREATE_131009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_131005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_131005(context, evt)
	-- 将configid为 131001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 131002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_131006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_131006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 131002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_131007(context, evt)
	if evt.param1 ~= 131007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_131007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 131002, 300700116) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_131008(context, evt)
	if 131001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_131008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133007131, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_131009(context, evt)
	if 131001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_131009(context, evt)
	-- 将configid为 131001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- Trigger变量
local defs = {
	point_sum = 6,
	route_2 = 310200147,
	gadget_seelie = 422002
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
	{ config_id = 422001, gadget_id = 70710006, pos = { x = 1777.2, y = 228.8, z = 825.9 }, rot = { x = 0.0, y = 349.6, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 422002, gadget_id = 70710010, pos = { x = 1737.4, y = 214.0, z = 827.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, route_id = 310200146 },
	{ config_id = 422003, gadget_id = 70710007, pos = { x = 1776.0, y = 228.9, z = 826.2 }, rot = { x = 0.0, y = 289.7, z = 0.0 }, level = 32 },
	{ config_id = 422004, gadget_id = 70211111, pos = { x = 1775.6, y = 229.2, z = 823.4 }, rot = { x = 1.4, y = 0.9, z = 1.9 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 422007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1736.4, y = 214.3, z = 825.2 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_422005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_422005", action = "action_EVENT_PLATFORM_REACH_POINT_422005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_422006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_422006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_422006", trigger_count = 0 },
	{ name = "ENTER_REGION_422007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_422007", action = "action_EVENT_ENTER_REGION_422007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_422008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422008", action = "action_EVENT_GADGET_STATE_CHANGE_422008" },
	{ name = "GADGET_CREATE_422009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_422009", action = "action_EVENT_GADGET_CREATE_422009", trigger_count = 0 }
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
		gadgets = { 422001, 422002, 422003 },
		regions = { 422007 },
		triggers = { "PLATFORM_REACH_POINT_422005", "AVATAR_NEAR_PLATFORM_422006", "ENTER_REGION_422007", "GADGET_STATE_CHANGE_422008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 422001, 422004 },
		regions = { },
		triggers = { "GADGET_CREATE_422009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_422005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_422005(context, evt)
	-- 将configid为 422001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 422002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_422006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_422006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 422002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_422007(context, evt)
	if evt.param1 ~= 422007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_422007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 422002, 310200147) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422008(context, evt)
	if 422001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102422, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_422009(context, evt)
	if 422001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_422009(context, evt)
	-- 将configid为 422001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310400102,
	gadget_seelie = 264002
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
	{ config_id = 264001, gadget_id = 70710006, pos = { x = 860.3, y = 213.8, z = 645.0 }, rot = { x = 7.7, y = 11.4, z = 353.4 }, level = 19, persistent = true },
	{ config_id = 264002, gadget_id = 70710010, pos = { x = 912.8, y = 212.3, z = 653.8 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 19, route_id = 310400101 },
	{ config_id = 264003, gadget_id = 70710007, pos = { x = 863.6, y = 211.1, z = 643.7 }, rot = { x = 10.0, y = 82.0, z = 355.0 }, level = 19 },
	{ config_id = 264004, gadget_id = 70211111, pos = { x = 860.3, y = 213.7, z = 646.7 }, rot = { x = 354.1, y = 183.6, z = 359.0 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 264007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 913.4, y = 211.7, z = 653.2 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_264005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_264005", action = "action_EVENT_PLATFORM_REACH_POINT_264005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_264006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_264006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_264006", trigger_count = 0 },
	{ name = "ENTER_REGION_264007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_264007", action = "action_EVENT_ENTER_REGION_264007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_264008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264008", action = "action_EVENT_GADGET_STATE_CHANGE_264008" },
	{ name = "GADGET_CREATE_264009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_264009", action = "action_EVENT_GADGET_CREATE_264009" }
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
		gadgets = { 264001, 264002, 264003 },
		regions = { 264007 },
		triggers = { "PLATFORM_REACH_POINT_264005", "AVATAR_NEAR_PLATFORM_264006", "ENTER_REGION_264007", "GADGET_STATE_CHANGE_264008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 264001, 264004 },
		regions = { },
		triggers = { "GADGET_CREATE_264009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_264005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_264005(context, evt)
	-- 将configid为 264001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 264001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 264002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 264002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_264006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_264006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 264002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_264007(context, evt)
	if evt.param1 ~= 264007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_264007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 264002, 310400102) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 264003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264008(context, evt)
	if 264001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104264, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_264009(context, evt)
	if 264001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_264009(context, evt)
	-- 将configid为 264001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 264001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

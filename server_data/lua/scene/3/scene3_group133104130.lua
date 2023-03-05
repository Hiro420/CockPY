-- Trigger变量
local defs = {
	point_sum = 13,
	route_2 = 310400058,
	gadget_seelie = 410
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
	{ config_id = 409, gadget_id = 70710006, pos = { x = 166.8, y = 234.8, z = 369.9 }, rot = { x = 0.0, y = 147.6, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 410, gadget_id = 70710010, pos = { x = 206.0, y = 233.2, z = 322.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, route_id = 310400057 },
	{ config_id = 411, gadget_id = 70710007, pos = { x = 167.3, y = 234.9, z = 369.2 }, rot = { x = 0.0, y = 140.0, z = 0.0 }, level = 19 },
	{ config_id = 412, gadget_id = 70211111, pos = { x = 165.5, y = 234.3, z = 369.4 }, rot = { x = 0.0, y = 140.6, z = 349.4 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 217, shape = RegionShape.SPHERE, radius = 3, pos = { x = 206.1, y = 233.9, z = 322.8 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_215", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_215", action = "action_EVENT_PLATFORM_REACH_POINT_215", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_216", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_216", action = "action_EVENT_AVATAR_NEAR_PLATFORM_216", trigger_count = 0 },
	{ name = "ENTER_REGION_217", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217", action = "action_EVENT_ENTER_REGION_217", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_130001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130001", action = "action_EVENT_GADGET_STATE_CHANGE_130001" },
	{ name = "GADGET_CREATE_130002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_130002", action = "action_EVENT_GADGET_CREATE_130002", trigger_count = 0 }
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
		gadgets = { 409, 410, 411 },
		regions = { 217 },
		triggers = { "PLATFORM_REACH_POINT_215", "AVATAR_NEAR_PLATFORM_216", "ENTER_REGION_217", "GADGET_STATE_CHANGE_130001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 409, 412 },
		regions = { },
		triggers = { "GADGET_CREATE_130002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_215(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_215(context, evt)
	-- 将configid为 409 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 409, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 410) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 410 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_216(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_216(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 410) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_217(context, evt)
	if evt.param1 ~= 217 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_217(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 410, 310400058) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 411 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130001(context, evt)
	if 409 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130001(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104130, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_130002(context, evt)
	if 409 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_130002(context, evt)
	-- 将configid为 409 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 409, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

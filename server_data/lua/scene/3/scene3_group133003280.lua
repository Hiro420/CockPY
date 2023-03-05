-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 300300280,
	gadget_seelie = 280002
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
	{ config_id = 280001, gadget_id = 70710006, pos = { x = 2143.9, y = 235.8, z = -1302.2 }, rot = { x = 0.0, y = 185.8, z = 0.0 }, level = 5 },
	{ config_id = 280002, gadget_id = 70710010, pos = { x = 2192.7, y = 235.2, z = -1300.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, route_id = 300300281 },
	{ config_id = 280003, gadget_id = 70710007, pos = { x = 2144.0, y = 236.5, z = -1302.0 }, rot = { x = 0.0, y = 97.9, z = 0.0 }, level = 5 },
	{ config_id = 280004, gadget_id = 70211111, pos = { x = 2116.7, y = 228.7, z = -1383.3 }, rot = { x = 358.6, y = 43.1, z = 0.4 }, level = 5, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 280011, gadget_id = 70690001, pos = { x = 2140.2, y = 235.8, z = -1315.5 }, rot = { x = 351.2, y = 199.1, z = 358.9 }, level = 5 },
	{ config_id = 280012, gadget_id = 70690001, pos = { x = 2137.9, y = 235.7, z = -1325.4 }, rot = { x = 354.1, y = 201.7, z = 0.0 }, level = 5 },
	{ config_id = 280013, gadget_id = 70690001, pos = { x = 2134.9, y = 236.7, z = -1337.3 }, rot = { x = 352.9, y = 198.8, z = 0.0 }, level = 5 },
	{ config_id = 280014, gadget_id = 70900201, pos = { x = 2120.2, y = 231.2, z = -1380.0 }, rot = { x = 0.0, y = 7.1, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
	{ config_id = 280007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2193.2, y = 235.0, z = -1302.8 } },
	{ config_id = 280015, shape = RegionShape.SPHERE, radius = 1, pos = { x = 2120.2, y = 231.9, z = -1379.9 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_280005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_280005", action = "action_EVENT_PLATFORM_REACH_POINT_280005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_280006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_280006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_280006", trigger_count = 0 },
	{ name = "ENTER_REGION_280007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280007", action = "action_EVENT_ENTER_REGION_280007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_280008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280008", action = "action_EVENT_GADGET_STATE_CHANGE_280008" },
	{ name = "GADGET_CREATE_280009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_280009", action = "action_EVENT_GADGET_CREATE_280009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_280010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280010", action = "action_EVENT_GADGET_STATE_CHANGE_280010" },
	{ name = "ENTER_REGION_280015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280015", action = "action_EVENT_ENTER_REGION_280015", tlog_tag = "神殿_精灵草_去凯亚_完成" }
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
	end_suite = 3,
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
		gadgets = { 280001, 280002, 280003 },
		regions = { 280007 },
		triggers = { "PLATFORM_REACH_POINT_280005", "AVATAR_NEAR_PLATFORM_280006", "ENTER_REGION_280007", "GADGET_STATE_CHANGE_280008", "GADGET_STATE_CHANGE_280010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 280001, 280011, 280012, 280013, 280014 },
		regions = { 280015 },
		triggers = { "GADGET_CREATE_280009", "ENTER_REGION_280015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 280001, 280004 },
		regions = { },
		triggers = { "GADGET_CREATE_280009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_280005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_280005(context, evt)
	-- 将configid为 280001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 280001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 280002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_280006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_280006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 280002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_280007(context, evt)
	if evt.param1 ~= 280007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_280007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 280002, 300300280) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280008(context, evt)
	if 280001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003280, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_280009(context, evt)
	if 280001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_280009(context, evt)
	-- 将configid为 280001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 280001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280010(context, evt)
	if 280001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280010(context, evt)
	-- 触发镜头注目，注目位置为坐标（2119，225，-1380），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2119, y=225, z=-1380}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_280015(context, evt)
	if evt.param1 ~= 280015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_280015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003280, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280014 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280011 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280012 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280013 }) then
		    return -1
		end
		
	
	return 0
end

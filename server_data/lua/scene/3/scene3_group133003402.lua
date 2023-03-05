-- Trigger变量
local defs = {
	point_sum = 23,
	route_2 = 300300276,
	gadget_seelie = 402002
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
	{ config_id = 402001, gadget_id = 70710006, pos = { x = 2933.9, y = 223.7, z = -1735.6 }, rot = { x = 0.0, y = 124.6, z = 0.0 }, level = 30 },
	{ config_id = 402002, gadget_id = 70710010, pos = { x = 2899.3, y = 235.9, z = -1735.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, route_id = 300300277 },
	{ config_id = 402003, gadget_id = 70710007, pos = { x = 2903.0, y = 234.8, z = -1737.4 }, rot = { x = 0.0, y = 148.0, z = 0.0 }, level = 30 },
	{ config_id = 402004, gadget_id = 70211111, pos = { x = 2935.6, y = 224.1, z = -1740.1 }, rot = { x = 8.5, y = 337.2, z = 2.8 }, level = 30, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 402007, shape = RegionShape.SPHERE, radius = 1.9, pos = { x = 2899.3, y = 235.9, z = -1735.4 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_402005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_402005", action = "action_EVENT_PLATFORM_REACH_POINT_402005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_402006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_402006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_402006", trigger_count = 0 },
	{ name = "ENTER_REGION_402007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_402007", action = "action_EVENT_ENTER_REGION_402007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_402008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_402008", action = "action_EVENT_GADGET_STATE_CHANGE_402008" },
	{ name = "GADGET_CREATE_402009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_402009", action = "action_EVENT_GADGET_CREATE_402009", trigger_count = 0 }
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
		gadgets = { 402001, 402002, 402003 },
		regions = { 402007 },
		triggers = { "PLATFORM_REACH_POINT_402005", "AVATAR_NEAR_PLATFORM_402006", "ENTER_REGION_402007", "GADGET_STATE_CHANGE_402008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 402001, 402004 },
		regions = { },
		triggers = { "GADGET_CREATE_402009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_402005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_402005(context, evt)
	-- 将configid为 402001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 402001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 402002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 402002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_402006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_402006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 402002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_402007(context, evt)
	if evt.param1 ~= 402007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_402007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 402002, 300300276) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 402003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_402008(context, evt)
	if 402001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_402008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003402, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_402009(context, evt)
	if 402001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_402009(context, evt)
	-- 将configid为 402001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 402001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

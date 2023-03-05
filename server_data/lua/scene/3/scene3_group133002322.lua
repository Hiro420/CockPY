-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300200221,
	gadget_seelie = 322002
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
	{ config_id = 322001, gadget_id = 70710006, pos = { x = 1955.8, y = 211.3, z = -897.3 }, rot = { x = 0.0, y = 262.0, z = 0.0 }, level = 10 },
	{ config_id = 322002, gadget_id = 70710010, pos = { x = 1907.8, y = 232.7, z = -870.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, route_id = 300200222 },
	{ config_id = 322003, gadget_id = 70710007, pos = { x = 1955.2, y = 212.0, z = -896.8 }, rot = { x = 0.0, y = 290.1, z = 0.0 }, level = 10 },
	{ config_id = 322004, gadget_id = 70211111, pos = { x = 1946.7, y = 212.5, z = -898.1 }, rot = { x = 4.3, y = 90.2, z = 0.7 }, level = 10, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 322007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1907.6, y = 232.7, z = -871.1 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_322005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_322005", action = "action_EVENT_PLATFORM_REACH_POINT_322005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_322006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_322006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_322006", trigger_count = 0 },
	{ name = "ENTER_REGION_322007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_322007", action = "action_EVENT_ENTER_REGION_322007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_322008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_322008", action = "action_EVENT_GADGET_STATE_CHANGE_322008" },
	{ name = "GADGET_CREATE_322009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_322009", action = "action_EVENT_GADGET_CREATE_322009", trigger_count = 0 }
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
		gadgets = { 322001, 322002, 322003 },
		regions = { 322007 },
		triggers = { "PLATFORM_REACH_POINT_322005", "AVATAR_NEAR_PLATFORM_322006", "ENTER_REGION_322007", "GADGET_STATE_CHANGE_322008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 322001, 322004 },
		regions = { },
		triggers = { "GADGET_CREATE_322009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_322005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_322005(context, evt)
	-- 将configid为 322001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 322001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 322002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 322002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_322006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_322006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 322002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_322007(context, evt)
	if evt.param1 ~= 322007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_322007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 322002, 300200221) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 322003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_322008(context, evt)
	if 322001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_322008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133002322, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_322009(context, evt)
	if 322001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_322009(context, evt)
	-- 将configid为 322001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 322001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

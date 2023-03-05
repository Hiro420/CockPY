-- Trigger变量
local defs = {
	point_sum = 7,
	route_2 = 300400613,
	gadget_seelie = 61002
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
	{ config_id = 61001, gadget_id = 70710006, pos = { x = 2090.9, y = 225.1, z = -529.7 }, rot = { x = 9.7, y = 97.1, z = 341.8 }, level = 15 },
	{ config_id = 61002, gadget_id = 70710010, pos = { x = 2116.0, y = 219.7, z = -524.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, route_id = 300400614 },
	{ config_id = 61003, gadget_id = 70710007, pos = { x = 2091.6, y = 225.1, z = -529.7 }, rot = { x = 5.3, y = 83.5, z = 340.4 }, level = 15 },
	{ config_id = 61004, gadget_id = 70211111, pos = { x = 2092.5, y = 225.0, z = -529.7 }, rot = { x = 7.4, y = 102.8, z = 344.4 }, level = 15, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 61007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2114.7, y = 220.0, z = -523.4 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_61005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_61005", action = "action_EVENT_PLATFORM_REACH_POINT_61005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_61006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_61006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_61006", trigger_count = 0 },
	{ name = "ENTER_REGION_61007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61007", action = "action_EVENT_ENTER_REGION_61007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_61008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_61008", action = "action_EVENT_GADGET_STATE_CHANGE_61008" },
	{ name = "GADGET_CREATE_61009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61009", action = "action_EVENT_GADGET_CREATE_61009", trigger_count = 0 }
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
		gadgets = { 61001, 61002, 61003 },
		regions = { 61007 },
		triggers = { "PLATFORM_REACH_POINT_61005", "AVATAR_NEAR_PLATFORM_61006", "ENTER_REGION_61007", "GADGET_STATE_CHANGE_61008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 61001, 61004 },
		regions = { },
		triggers = { "GADGET_CREATE_61009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_61005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_61005(context, evt)
	-- 将configid为 61001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 61002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_61006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_61006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 61002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61007(context, evt)
	if evt.param1 ~= 61007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 61002, 300400613) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_61008(context, evt)
	if 61001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_61008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004061, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61009(context, evt)
	if 61001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61009(context, evt)
	-- 将configid为 61001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

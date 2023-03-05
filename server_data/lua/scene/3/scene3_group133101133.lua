-- Trigger变量
local defs = {
	point_sum = 13,
	route_2 = 310100098,
	gadget_seelie = 133002
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
	{ config_id = 133001, gadget_id = 70710006, pos = { x = 1163.5, y = 257.2, z = 1101.9 }, rot = { x = 0.0, y = 72.1, z = 0.0 }, level = 24 },
	{ config_id = 133002, gadget_id = 70710010, pos = { x = 1144.7, y = 241.3, z = 1118.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, route_id = 310100099 },
	{ config_id = 133003, gadget_id = 70710007, pos = { x = 1162.7, y = 257.3, z = 1102.2 }, rot = { x = 0.0, y = 307.4, z = 0.0 }, level = 24 },
	{ config_id = 133004, gadget_id = 70211111, pos = { x = 1164.9, y = 257.0, z = 1102.2 }, rot = { x = 355.8, y = 260.3, z = 349.7 }, level = 24, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 133007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1145.2, y = 239.8, z = 1119.0 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_133005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_133005", action = "action_EVENT_PLATFORM_REACH_POINT_133005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_133006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_133006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_133006", trigger_count = 0 },
	{ name = "ENTER_REGION_133007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_133007", action = "action_EVENT_ENTER_REGION_133007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_133008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133008", action = "action_EVENT_GADGET_STATE_CHANGE_133008" },
	{ name = "GADGET_CREATE_133009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_133009", action = "action_EVENT_GADGET_CREATE_133009", trigger_count = 0 }
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
		gadgets = { 133001, 133002, 133003 },
		regions = { 133007 },
		triggers = { "PLATFORM_REACH_POINT_133005", "AVATAR_NEAR_PLATFORM_133006", "ENTER_REGION_133007", "GADGET_STATE_CHANGE_133008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 133001, 133004 },
		regions = { },
		triggers = { "GADGET_CREATE_133009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_133005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_133005(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 133002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_133006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_133006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 133002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_133007(context, evt)
	if evt.param1 ~= 133007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_133007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 133002, 310100098) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_133008(context, evt)
	if 133001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101133, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_133009(context, evt)
	if 133001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_133009(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

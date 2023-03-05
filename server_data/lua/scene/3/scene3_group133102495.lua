-- Trigger变量
local defs = {
	point_sum = 15,
	route_2 = 310200164,
	gadget_seelie = 495002
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
	{ config_id = 495001, gadget_id = 70710006, pos = { x = 1634.9, y = 298.8, z = 379.6 }, rot = { x = 0.0, y = 268.6, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 495002, gadget_id = 70710010, pos = { x = 1531.6, y = 249.8, z = 423.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, route_id = 310200165 },
	{ config_id = 495003, gadget_id = 70710007, pos = { x = 1633.3, y = 297.7, z = 378.9 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 32 },
	{ config_id = 495004, gadget_id = 70211111, pos = { x = 1634.3, y = 298.2, z = 383.1 }, rot = { x = 13.1, y = 247.4, z = 4.0 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 495007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1531.6, y = 249.8, z = 424.0 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_495005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_495005", action = "action_EVENT_PLATFORM_REACH_POINT_495005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_495006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_495006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_495006", trigger_count = 0 },
	{ name = "ENTER_REGION_495007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_495007", action = "action_EVENT_ENTER_REGION_495007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_495008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495008", action = "action_EVENT_GADGET_STATE_CHANGE_495008" },
	{ name = "GADGET_CREATE_495009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_495009", action = "action_EVENT_GADGET_CREATE_495009", trigger_count = 0 }
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
		gadgets = { 495001, 495002, 495003 },
		regions = { 495007 },
		triggers = { "PLATFORM_REACH_POINT_495005", "AVATAR_NEAR_PLATFORM_495006", "ENTER_REGION_495007", "GADGET_STATE_CHANGE_495008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 495001, 495004 },
		regions = { },
		triggers = { "GADGET_CREATE_495009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_495005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_495005(context, evt)
	-- 将configid为 495001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 495001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 495002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 495002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_495006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_495006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 495002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_495007(context, evt)
	if evt.param1 ~= 495007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_495007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 495002, 310200164) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 495003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495008(context, evt)
	if 495001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102495, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_495009(context, evt)
	if 495001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_495009(context, evt)
	-- 将configid为 495001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 495001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

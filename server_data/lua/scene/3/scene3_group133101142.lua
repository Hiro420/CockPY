-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 310100109,
	gadget_seelie = 142002
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
	{ config_id = 142001, gadget_id = 70710006, pos = { x = 1432.5, y = 229.4, z = 1199.3 }, rot = { x = 0.0, y = 79.9, z = 0.0 }, level = 19 },
	{ config_id = 142002, gadget_id = 70710010, pos = { x = 1446.4, y = 218.9, z = 1140.6 }, rot = { x = 0.0, y = 80.4, z = 0.0 }, level = 19, route_id = 310100110 },
	{ config_id = 142003, gadget_id = 70710007, pos = { x = 1432.7, y = 229.4, z = 1198.0 }, rot = { x = 0.0, y = 165.8, z = 0.0 }, level = 19 },
	{ config_id = 142004, gadget_id = 70211111, pos = { x = 1434.0, y = 229.3, z = 1199.1 }, rot = { x = 2.5, y = 101.0, z = 1.4 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 142007, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1446.8, y = 219.7, z = 1138.3 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_142005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142005", action = "action_EVENT_PLATFORM_REACH_POINT_142005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_142006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_142006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_142006", trigger_count = 0 },
	{ name = "ENTER_REGION_142007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_142007", action = "action_EVENT_ENTER_REGION_142007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_142008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142008", action = "action_EVENT_GADGET_STATE_CHANGE_142008" },
	{ name = "GADGET_CREATE_142009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_142009", action = "action_EVENT_GADGET_CREATE_142009", trigger_count = 0 }
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
		gadgets = { 142001, 142002, 142003 },
		regions = { 142007 },
		triggers = { "PLATFORM_REACH_POINT_142005", "AVATAR_NEAR_PLATFORM_142006", "ENTER_REGION_142007", "GADGET_STATE_CHANGE_142008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 142001, 142004 },
		regions = { },
		triggers = { "GADGET_CREATE_142009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_142005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_142005(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 142002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 142002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_142006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_142006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 142002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_142007(context, evt)
	if evt.param1 ~= 142007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_142007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 142002, 310100109) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 142003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142008(context, evt)
	if 142001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101142, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_142009(context, evt)
	if 142001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_142009(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

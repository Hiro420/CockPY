-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310200191,
	gadget_seelie = 624002
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
	{ config_id = 624001, gadget_id = 70710006, pos = { x = 1990.7, y = 236.2, z = 815.3 }, rot = { x = 0.0, y = 314.3, z = 0.0 }, level = 18 },
	{ config_id = 624002, gadget_id = 70710010, pos = { x = 1961.7, y = 206.1, z = 880.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, route_id = 310200192 },
	{ config_id = 624003, gadget_id = 70710007, pos = { x = 1989.3, y = 236.0, z = 816.7 }, rot = { x = 0.0, y = 315.8, z = 0.0 }, level = 18 },
	{ config_id = 624004, gadget_id = 70211111, pos = { x = 1990.1, y = 236.4, z = 813.2 }, rot = { x = 13.6, y = 327.6, z = 0.4 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 624007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1962.1, y = 206.0, z = 880.6 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_624005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_624005", action = "action_EVENT_PLATFORM_REACH_POINT_624005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_624006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_624006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_624006", trigger_count = 0 },
	{ name = "ENTER_REGION_624007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_624007", action = "action_EVENT_ENTER_REGION_624007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_624008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_624008", action = "action_EVENT_GADGET_STATE_CHANGE_624008" },
	{ name = "GADGET_CREATE_624009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_624009", action = "action_EVENT_GADGET_CREATE_624009", trigger_count = 0 }
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
		gadgets = { 624001, 624002, 624003 },
		regions = { 624007 },
		triggers = { "PLATFORM_REACH_POINT_624005", "AVATAR_NEAR_PLATFORM_624006", "ENTER_REGION_624007", "GADGET_STATE_CHANGE_624008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 624001, 624004 },
		regions = { },
		triggers = { "GADGET_CREATE_624009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_624005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_624005(context, evt)
	-- 将configid为 624001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 624001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 624002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 624002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "door", 1, 133102614) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_624006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_624006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 624002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_624007(context, evt)
	if evt.param1 ~= 624007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_624007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 624002, 310200191) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 624003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_624008(context, evt)
	if 624001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_624008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102624, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_624009(context, evt)
	if 624001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_624009(context, evt)
	-- 将configid为 624001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 624001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

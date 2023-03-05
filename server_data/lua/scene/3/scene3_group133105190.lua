-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 310500048,
	gadget_seelie = 190002
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
	{ config_id = 190001, gadget_id = 70710006, pos = { x = 700.8, y = 217.1, z = -230.8 }, rot = { x = 0.0, y = 112.7, z = 0.0 }, level = 25, persistent = true },
	{ config_id = 190002, gadget_id = 70710010, pos = { x = 703.1, y = 230.7, z = -254.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, route_id = 310500047 },
	{ config_id = 190003, gadget_id = 70710007, pos = { x = 700.7, y = 217.3, z = -231.2 }, rot = { x = 0.0, y = 177.8, z = 0.0 }, level = 25 },
	{ config_id = 190004, gadget_id = 70211111, pos = { x = 700.2, y = 217.1, z = -231.6 }, rot = { x = 353.3, y = 113.8, z = 342.4 }, level = 25, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 190007, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 703.5, y = 230.6, z = -254.8 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_190005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_190005", action = "action_EVENT_PLATFORM_REACH_POINT_190005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_190006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_190006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_190006", trigger_count = 0 },
	{ name = "ENTER_REGION_190007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190007", action = "action_EVENT_ENTER_REGION_190007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_190008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190008", action = "action_EVENT_GADGET_STATE_CHANGE_190008" },
	{ name = "GADGET_CREATE_190009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_190009", action = "action_EVENT_GADGET_CREATE_190009", trigger_count = 0 }
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
		gadgets = { 190001, 190002, 190003 },
		regions = { 190007 },
		triggers = { "PLATFORM_REACH_POINT_190005", "AVATAR_NEAR_PLATFORM_190006", "ENTER_REGION_190007", "GADGET_STATE_CHANGE_190008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 190001, 190004 },
		regions = { },
		triggers = { "GADGET_CREATE_190009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_190005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_190005(context, evt)
	-- 将configid为 190001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 190001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 190002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 190002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_190006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_190006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 190002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_190007(context, evt)
	if evt.param1 ~= 190007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 190002, 310500048) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 190003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_190008(context, evt)
	if 190001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105190, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_190009(context, evt)
	if 190001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_190009(context, evt)
	-- 将configid为 190001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 190001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

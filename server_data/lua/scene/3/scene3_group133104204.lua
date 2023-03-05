-- Trigger变量
local defs = {
	point_sum = 13,
	route_2 = 310400086,
	gadget_seelie = 204002
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
	{ config_id = 204001, gadget_id = 70710006, pos = { x = 129.7, y = 259.8, z = 113.0 }, rot = { x = 0.0, y = 55.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 204002, gadget_id = 70710010, pos = { x = 180.6, y = 239.9, z = 85.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, route_id = 310400085 },
	{ config_id = 204003, gadget_id = 70710007, pos = { x = 130.3, y = 259.7, z = 113.1 }, rot = { x = 0.0, y = 98.5, z = 0.0 }, level = 19 },
	{ config_id = 204004, gadget_id = 70211111, pos = { x = 127.8, y = 259.9, z = 112.7 }, rot = { x = 3.7, y = 83.1, z = 353.9 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 204007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 180.8, y = 240.2, z = 84.6 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_204005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_204005", action = "action_EVENT_PLATFORM_REACH_POINT_204005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_204006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_204006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_204006", trigger_count = 0 },
	{ name = "ENTER_REGION_204007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_204007", action = "action_EVENT_ENTER_REGION_204007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_204008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204008", action = "action_EVENT_GADGET_STATE_CHANGE_204008" },
	{ name = "GADGET_CREATE_204009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_204009", action = "action_EVENT_GADGET_CREATE_204009", trigger_count = 0 }
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
		gadgets = { 204001, 204002, 204003 },
		regions = { 204007 },
		triggers = { "PLATFORM_REACH_POINT_204005", "AVATAR_NEAR_PLATFORM_204006", "ENTER_REGION_204007", "GADGET_STATE_CHANGE_204008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 204001, 204004 },
		regions = { },
		triggers = { "GADGET_CREATE_204009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_204005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_204005(context, evt)
	-- 将configid为 204001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 204002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 204002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_204006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_204006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 204002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_204007(context, evt)
	if evt.param1 ~= 204007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_204007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 204002, 310400086) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 204003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204008(context, evt)
	if 204001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104204, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_204009(context, evt)
	if 204001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_204009(context, evt)
	-- 将configid为 204001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

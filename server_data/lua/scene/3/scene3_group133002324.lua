-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300200227,
	gadget_seelie = 324002
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
	{ config_id = 324001, gadget_id = 70710006, pos = { x = 1871.8, y = 204.3, z = -113.4 }, rot = { x = 0.0, y = 126.5, z = 0.0 }, level = 10 },
	{ config_id = 324002, gadget_id = 70710010, pos = { x = 1829.0, y = 203.2, z = -97.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, route_id = 300200228 },
	{ config_id = 324003, gadget_id = 70710007, pos = { x = 1869.9, y = 204.3, z = -113.1 }, rot = { x = 0.0, y = 286.3, z = 0.0 }, level = 10 },
	{ config_id = 324004, gadget_id = 70211111, pos = { x = 1874.3, y = 204.6, z = -114.2 }, rot = { x = 2.8, y = 238.8, z = 359.4 }, level = 10, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 324007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1829.4, y = 203.2, z = -97.4 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_324005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_324005", action = "action_EVENT_PLATFORM_REACH_POINT_324005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_324006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_324006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_324006", trigger_count = 0 },
	{ name = "ENTER_REGION_324007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_324007", action = "action_EVENT_ENTER_REGION_324007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_324008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_324008", action = "action_EVENT_GADGET_STATE_CHANGE_324008" },
	{ name = "GADGET_CREATE_324009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_324009", action = "action_EVENT_GADGET_CREATE_324009", trigger_count = 0 }
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
		gadgets = { 324001, 324002, 324003 },
		regions = { 324007 },
		triggers = { "PLATFORM_REACH_POINT_324005", "AVATAR_NEAR_PLATFORM_324006", "ENTER_REGION_324007", "GADGET_STATE_CHANGE_324008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 324001 },
		regions = { },
		triggers = { "GADGET_CREATE_324009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_324005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_324005(context, evt)
	-- 将configid为 324001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 324001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 324002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 324002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_324006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_324006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 324002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_324007(context, evt)
	if evt.param1 ~= 324007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_324007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 324002, 300200227) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 324003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_324008(context, evt)
	if 324001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_324008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133002324, 2) then
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133002333) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_324009(context, evt)
	if 324001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_324009(context, evt)
	-- 将configid为 324001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 324001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- Trigger变量
local defs = {
	point_sum = 5,
	route_2 = 300400625,
	gadget_seelie = 91002
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
	{ config_id = 91001, gadget_id = 70710006, pos = { x = 2252.0, y = 270.4, z = -256.5 }, rot = { x = 0.0, y = 70.6, z = 0.0 }, level = 15 },
	{ config_id = 91002, gadget_id = 70710010, pos = { x = 2287.5, y = 271.3, z = -269.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, route_id = 300400626 },
	{ config_id = 91003, gadget_id = 70710007, pos = { x = 2252.6, y = 270.5, z = -256.6 }, rot = { x = 0.0, y = 113.7, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
	{ config_id = 91006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2287.2, y = 270.8, z = -269.9 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_91004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_91004", action = "action_EVENT_PLATFORM_REACH_POINT_91004", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_91005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_91005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_91005", trigger_count = 0 },
	{ name = "ENTER_REGION_91006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91006", action = "action_EVENT_ENTER_REGION_91006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_91007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91007", action = "action_EVENT_GADGET_STATE_CHANGE_91007" },
	{ name = "GADGET_CREATE_91008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91008", action = "action_EVENT_GADGET_CREATE_91008", trigger_count = 0 }
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
		gadgets = { 91001, 91002, 91003 },
		regions = { 91006 },
		triggers = { "PLATFORM_REACH_POINT_91004", "AVATAR_NEAR_PLATFORM_91005", "ENTER_REGION_91006", "GADGET_STATE_CHANGE_91007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 91001 },
		regions = { },
		triggers = { "GADGET_CREATE_91008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_91004(context, evt)
	local uid = ScriptLib.GetSceneUidList(context)
	ScriptLib.PrintLog("## Special Seelie Debug Log")
	ScriptLib.PrintLog("## uid="..uid[1].." evt.param={"..evt.param1..", "..evt.param2..", "..evt.param3)
	
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
function action_EVENT_PLATFORM_REACH_POINT_91004(context, evt)
	-- 将configid为 91001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 91002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_91005(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_91005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 91002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_91006(context, evt)
	if evt.param1 ~= 91006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 91002, 300400625) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91007(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91007(context, evt)
	-- 针对当前group内变量名为 "unlock_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "unlock_1", 1, 133004088) then
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004091, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91008(context, evt)
	if 91001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91008(context, evt)
	-- 将configid为 91001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

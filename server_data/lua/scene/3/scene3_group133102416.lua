-- Trigger变量
local defs = {
	point_sum = 6,
	route_2 = 310200145,
	gadget_seelie = 416002
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
	{ config_id = 416001, gadget_id = 70710006, pos = { x = 1549.0, y = 207.6, z = 826.3 }, rot = { x = 0.0, y = 239.6, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 416002, gadget_id = 70710010, pos = { x = 1493.0, y = 208.6, z = 785.8 }, rot = { x = 0.0, y = 10.3, z = 0.0 }, level = 32, route_id = 310200144 },
	{ config_id = 416003, gadget_id = 70710007, pos = { x = 1547.5, y = 206.5, z = 826.1 }, rot = { x = 0.0, y = 246.4, z = 0.0 }, level = 32 },
	{ config_id = 416004, gadget_id = 70211111, pos = { x = 1553.1, y = 208.2, z = 827.6 }, rot = { x = 12.6, y = 247.1, z = 5.3 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 416007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1493.1, y = 206.9, z = 785.1 } }
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_416005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_416005", action = "action_EVENT_PLATFORM_REACH_POINT_416005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_416006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_416006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_416006", trigger_count = 0 },
	{ name = "ENTER_REGION_416007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_416007", action = "action_EVENT_ENTER_REGION_416007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_416008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_416008", action = "action_EVENT_GADGET_STATE_CHANGE_416008" },
	{ name = "GADGET_CREATE_416009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_416009", action = "action_EVENT_GADGET_CREATE_416009", trigger_count = 0 }
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
		gadgets = { 416001, 416002, 416003 },
		regions = { 416007 },
		triggers = { "PLATFORM_REACH_POINT_416005", "AVATAR_NEAR_PLATFORM_416006", "ENTER_REGION_416007", "GADGET_STATE_CHANGE_416008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 416001, 416004 },
		regions = { },
		triggers = { "GADGET_CREATE_416009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_416005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_416005(context, evt)
	-- 将configid为 416001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 416001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 416002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 416002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_416006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_416006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 416002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_416007(context, evt)
	if evt.param1 ~= 416007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_416007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 416002, 310200145) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 416003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_416008(context, evt)
	if 416001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_416008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102416, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_416009(context, evt)
	if 416001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_416009(context, evt)
	-- 将configid为 416001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 416001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

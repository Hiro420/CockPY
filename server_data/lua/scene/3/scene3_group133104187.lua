-- Trigger变量
local defs = {
	gadget_lift = 709,
	route_down = 310400076,
	route_up = 310400077,
	group_id = 133104187,
	lift_wait_time = 4
}


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
	{ config_id = 709, gadget_id = 70380011, pos = { x = 871.8, y = 215.7, z = 340.4 }, rot = { x = 0.0, y = 315.0, z = 0.0 }, level = 16, route_id = 310400076, start_route = false, persistent = true }
}

-- 区域
regions = {
	{ config_id = 187001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 871.3, y = 216.1, z = 341.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_187001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_187001", action = "action_EVENT_ENTER_REGION_187001", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_187002", event = EventType.EVENT_VARIABLE_CHANGE, source = "switch", condition = "", action = "action_EVENT_VARIABLE_CHANGE_187002", trigger_count = 0 },
	{ name = "GADGET_CREATE_187003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_187003", action = "action_EVENT_GADGET_CREATE_187003", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_187004", event = EventType.EVENT_VARIABLE_CHANGE, source = "isActive", condition = "condition_EVENT_VARIABLE_CHANGE_187004", action = "action_EVENT_VARIABLE_CHANGE_187004" }
}

-- 变量
variables = {
	{ name = "switch", value = 1, no_refresh = false },
	{ name = "isActive", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 709 },
		regions = { 187001 },
		triggers = { "ENTER_REGION_187001", "VARIABLE_CHANGE_187002", "GADGET_CREATE_187003", "VARIABLE_CHANGE_187004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_187001(context, evt)
	if evt.param1 ~= 187001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isActive"为0
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187001(context, evt)
	
	
	if ScriptLib.GetGroupVariableValue(context, "switch") == 1 then
			ScriptLib.SetGroupVariableValue(context, "isActive", 1) 
		end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187002(context, evt)
	-- 启动移动平台
	local y = ScriptLib.GetGroupVariableValue(context, "isActive")
	if y == 1 then
		if evt.param1 == 1 then
			ScriptLib.StartPlatform(context, 709)
		elseif evt.param1 == 0 then
			ScriptLib.StopPlatform(context, 709)
		end
	end
		
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_187003(context, evt)
	if 709 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_187003(context, evt)
	local x = ScriptLib.GetGroupVariableValue(context, "switch")
	local y = ScriptLib.GetGroupVariableValue(context, "isActive")
	
	if y == 1 then
	
		if x == 1 then
			ScriptLib.StartPlatform(context, 709)
		elseif x == 0 then
			ScriptLib.StopPlatform(context, 709)
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187004(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187004(context, evt)
	ScriptLib.StartPlatform(context, 709)
	
	return 0
end

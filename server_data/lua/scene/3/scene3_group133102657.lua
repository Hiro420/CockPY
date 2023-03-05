-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310200209,
	gadget_seelie = 657002
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
	{ config_id = 657001, gadget_id = 70710006, pos = { x = 1989.9, y = 241.3, z = 686.0 }, rot = { x = 0.0, y = 33.6, z = 0.0 }, level = 18 },
	{ config_id = 657002, gadget_id = 70710010, pos = { x = 2012.5, y = 215.9, z = 669.6 }, rot = { x = 0.0, y = 55.7, z = 0.0 }, level = 18, route_id = 310200209 },
	{ config_id = 657003, gadget_id = 70710007, pos = { x = 1990.5, y = 241.6, z = 685.5 }, rot = { x = 0.0, y = 119.6, z = 0.0 }, level = 18 },
	{ config_id = 657004, gadget_id = 70211111, pos = { x = 1989.8, y = 241.3, z = 688.8 }, rot = { x = 20.8, y = 92.5, z = 0.2 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_657005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_657005", action = "action_EVENT_PLATFORM_REACH_POINT_657005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_657006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_657006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_657006", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_657007", event = EventType.EVENT_VARIABLE_CHANGE, source = "chest", condition = "condition_EVENT_VARIABLE_CHANGE_657007", action = "action_EVENT_VARIABLE_CHANGE_657007" },
	{ name = "GADGET_STATE_CHANGE_657008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_657008", action = "action_EVENT_GADGET_STATE_CHANGE_657008" },
	{ name = "GADGET_CREATE_657009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_657009", action = "action_EVENT_GADGET_CREATE_657009", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "chest", value = 0, no_refresh = true }
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
		gadgets = { 657001, 657003 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_657005", "AVATAR_NEAR_PLATFORM_657006", "VARIABLE_CHANGE_657007", "GADGET_STATE_CHANGE_657008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 657001, 657004 },
		regions = { },
		triggers = { "GADGET_CREATE_657009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_657005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_657005(context, evt)
	-- 将configid为 657001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 657001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 657002) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133102644) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 657002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_657006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_657006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 657002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_657007(context, evt)
	-- 判断变量"chest"为1
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_657007(context, evt)
	-- 创建id为657002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 657002 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 657003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_657008(context, evt)
	if 657001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_657008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102657, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_657009(context, evt)
	if 657001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_657009(context, evt)
	-- 将configid为 657001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 657001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

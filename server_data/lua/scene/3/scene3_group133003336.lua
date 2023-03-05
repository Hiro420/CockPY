-- Trigger变量
local defs = {
	point_sum = 23,
	route_2 = 300300274,
	gadget_seelie = 336002
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
	{ config_id = 336001, gadget_id = 70710006, pos = { x = 2837.5, y = 265.6, z = -1891.2 }, rot = { x = 353.5, y = 167.2, z = 12.5 }, level = 15 },
	{ config_id = 336002, gadget_id = 70710010, pos = { x = 2872.4, y = 260.2, z = -1797.1 }, rot = { x = 0.0, y = 176.2, z = 0.0 }, level = 15, route_id = 300300275 },
	{ config_id = 336003, gadget_id = 70710007, pos = { x = 2837.6, y = 266.0, z = -1890.9 }, rot = { x = 0.0, y = 18.3, z = 0.0 }, level = 15 },
	{ config_id = 336004, gadget_id = 70211111, pos = { x = 2839.1, y = 265.2, z = -1890.3 }, rot = { x = 9.3, y = 359.3, z = 351.3 }, level = 15, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 336010, gadget_id = 70220021, pos = { x = 2872.8, y = 258.9, z = -1797.1 }, rot = { x = 46.5, y = 343.0, z = 345.2 }, level = 15, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_336005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_336005", action = "action_EVENT_PLATFORM_REACH_POINT_336005", trigger_count = 0 },
	{ name = "AVATAR_NEAR_PLATFORM_336006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_336006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_336006", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_336007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_336007", action = "action_EVENT_ANY_GADGET_DIE_336007" },
	{ name = "GADGET_STATE_CHANGE_336008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_336008", action = "action_EVENT_GADGET_STATE_CHANGE_336008" },
	{ name = "GADGET_CREATE_336009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_336009", action = "action_EVENT_GADGET_CREATE_336009", trigger_count = 0 }
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
		gadgets = { 336001, 336002, 336003, 336010 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_336005", "AVATAR_NEAR_PLATFORM_336006", "ANY_GADGET_DIE_336007", "GADGET_STATE_CHANGE_336008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 336001, 336004 },
		regions = { },
		triggers = { "GADGET_CREATE_336009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_336005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_336005(context, evt)
	-- 将configid为 336001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 336002) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 336002 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_336006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_336006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 336002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_336007(context, evt)
	if 336010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_336007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 336002, 300300274) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 336003 }) then
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_336008(context, evt)
	if 336001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_336008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003336, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_336009(context, evt)
	if 336001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_336009(context, evt)
	-- 将configid为 336001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

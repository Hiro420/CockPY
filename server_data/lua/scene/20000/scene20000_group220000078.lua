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
	{ config_id = 554, gadget_id = 70900274, pos = { x = 108.9, y = -12.0, z = 538.3 }, rot = { x = 0.0, y = 181.2, z = 0.0 }, level = 1 },
	{ config_id = 555, gadget_id = 70710002, pos = { x = 101.3, y = -11.6, z = 549.5 }, rot = { x = 0.0, y = 191.9, z = 0.0 }, level = 1, route_id = 20000021 },
	{ config_id = 556, gadget_id = 70211001, pos = { x = 109.0, y = -12.0, z = 538.2 }, rot = { x = 0.0, y = 224.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 558, gadget_id = 70300037, pos = { x = 108.7, y = -12.0, z = 539.1 }, rot = { x = 0.0, y = 326.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_159", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "555", condition = "condition_EVENT_PLATFORM_REACH_POINT_159", action = "action_EVENT_PLATFORM_REACH_POINT_159" },
	{ name = "AVATAR_NEAR_PLATFORM_160", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_160", action = "action_EVENT_AVATAR_NEAR_PLATFORM_160", forbid_guest = false },
	{ name = "PLATFORM_REACH_POINT_171", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_171", action = "action_EVENT_PLATFORM_REACH_POINT_171", trigger_count = 0 }
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
	end_suite = 0,
	rand_suite = true,
	npcs = { }
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 554, 555, 558 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_159", "AVATAR_NEAR_PLATFORM_160", "PLATFORM_REACH_POINT_171" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_159(context, evt)
	-- 判断是gadgetid 为 555的移动平台，是否到达了20000021 的路线中的 2 点
	
	if 555 ~= evt.param1 then
	  return false
	end
	
	if 20000021 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_159(context, evt)
	-- 创建id为556的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 556 }) then
	  return -1
	end
	
	-- 将configid为 554 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 554, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_160(context, evt)
	-- 判断是gadgetid 为 555的移动平台，是否到达了20000021 的路线中的 0 点
	
	if 555 ~= evt.param1 then
	  return false
	end
	
	if 20000021 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_160(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 555) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_171(context, evt)
	if evt.param1 ~= 555 then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_171(context, evt)
	ScriptLib.PrintLog("## point_id = "..evt.param3)
	return 0
end

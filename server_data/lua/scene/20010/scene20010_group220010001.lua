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
	{ config_id = 1001, gadget_id = 70350002, pos = { x = 28.5, y = 12.8, z = 48.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1002, gadget_id = 70360021, pos = { x = 160.8, y = -10.0, z = 10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010012 },
	{ config_id = 1003, gadget_id = 70360021, pos = { x = 160.3, y = -36.0, z = 55.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010011 },
	{ config_id = 1004, gadget_id = 70360021, pos = { x = 299.6, y = -8.0, z = 9.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010014 },
	{ config_id = 1005, gadget_id = 70360021, pos = { x = 299.6, y = -40.0, z = 54.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010013 },
	{ config_id = 1007, gadget_id = 70690006, pos = { x = 107.6, y = 5.2, z = 62.1 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1008, gadget_id = 70690006, pos = { x = 105.4, y = -9.7, z = 14.1 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1009, gadget_id = 70690006, pos = { x = 231.2, y = -33.9, z = 54.6 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70690006, pos = { x = 233.4, y = -24.3, z = 7.3 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1011, gadget_id = 70360021, pos = { x = 299.6, y = -2.0, z = 9.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010014 },
	{ config_id = 1012, gadget_id = 70360021, pos = { x = 299.6, y = -46.0, z = 54.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010013 },
	{ config_id = 1013, gadget_id = 70360021, pos = { x = 299.6, y = 3.7, z = 9.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010014 },
	{ config_id = 1014, gadget_id = 70360021, pos = { x = 299.6, y = -51.6, z = 54.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010013 },
	{ config_id = 1015, gadget_id = 70360021, pos = { x = 232.0, y = 5.0, z = 44.0 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010016 },
	{ config_id = 1016, gadget_id = 70360021, pos = { x = 230.0, y = 5.0, z = 22.0 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, route_id = 20010017 },
	{ config_id = 1017, gadget_id = 70690006, pos = { x = 208.6, y = -42.7, z = -22.1 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1018, gadget_id = 70690006, pos = { x = 204.5, y = -28.3, z = -70.1 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1019, gadget_id = 70900201, pos = { x = 192.8, y = -32.5, z = 31.6 }, rot = { x = 0.0, y = 86.3, z = 0.0 }, level = 1 },
	{ config_id = 1020, gadget_id = 70900201, pos = { x = 365.7, y = -33.6, z = 32.2 }, rot = { x = 0.0, y = 86.3, z = 0.0 }, level = 1 },
	{ config_id = 1021, gadget_id = 70690006, pos = { x = 352.6, y = -56.3, z = 32.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 56, shape = RegionShape.CUBIC, size = { x = 20.0, y = 10.0, z = 20.0 }, pos = { x = 66.1, y = 11.3, z = 36.0 } },
	{ config_id = 64, shape = RegionShape.CUBIC, size = { x = 20.0, y = 10.0, z = 20.0 }, pos = { x = 196.2, y = -30.0, z = 29.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56", forbid_guest = false },
	{ name = "TIMER_EVENT_58", event = EventType.EVENT_TIMER_EVENT, source = "W1_1", condition = "", action = "action_EVENT_TIMER_EVENT_58", trigger_count = 0 },
	{ name = "TIMER_EVENT_59", event = EventType.EVENT_TIMER_EVENT, source = "W1_2", condition = "", action = "action_EVENT_TIMER_EVENT_59", trigger_count = 0 },
	{ name = "ENTER_REGION_64", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64", action = "action_EVENT_ENTER_REGION_64", forbid_guest = false }
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
	rand_suite = true
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1021 },
		regions = { 56, 64 },
		triggers = { "ENTER_REGION_56", "TIMER_EVENT_58", "TIMER_EVENT_59", "ENTER_REGION_64" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if evt.param1 ~= 56 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56(context, evt)
	-- 创建id为1019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1019 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_58(context, evt)
	-- 创建id为1007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1007 }) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1008} }) then
			return -1
		end
	
	-- 创建id为1009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1009 }) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1010} }) then
			return -1
		end
	
	-- 改变指定group组220010001中， configid为139的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 139, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组220010001中， configid为140的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 140, GadgetState.Default) then
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：220010001的对象,请求一次调用,并将string参数："W1_2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220010001, "W1_2", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_59(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1007} }) then
			return -1
		end
	
	-- 创建id为1008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1008 }) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1009} }) then
			return -1
		end
	
	-- 创建id为1010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1010 }) then
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：220010001的对象,请求一次调用,并将string参数："W1_1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220010001, "W1_1", 2) then
	  return -1
	end
	
	-- 改变指定group组220010001中， configid为139的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 139, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220010001中， configid为140的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 140, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_64(context, evt)
	if evt.param1 ~= 64 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1019} }) then
			return -1
		end
	
	-- 创建id为1020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1020 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010201, pos = { x = 7.5, y = 42.0, z = 95.5 }, rot = { x = 0.0, y = 196.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 2002, monster_id = 21010201, pos = { x = -3.3, y = 42.0, z = 107.8 }, rot = { x = 0.0, y = 148.2, z = 0.0 }, level = 1 },
	{ config_id = 2003, monster_id = 21010201, pos = { x = 4.4, y = 42.0, z = 108.4 }, rot = { x = 0.0, y = 180.4, z = 0.0 }, level = 1 },
	{ config_id = 2004, monster_id = 20010801, pos = { x = 35.0, y = 42.0, z = 89.3 }, rot = { x = 0.0, y = 311.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 2005, monster_id = 20010801, pos = { x = 42.4, y = 42.0, z = 87.9 }, rot = { x = 0.0, y = 299.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 21010701, pos = { x = 8.6, y = 42.0, z = 108.6 }, rot = { x = 0.0, y = 182.6, z = 0.0 }, level = 2 },
	{ config_id = 2007, monster_id = 21010301, pos = { x = -4.4, y = 42.0, z = 95.2 }, rot = { x = 0.0, y = 65.4, z = 0.0 }, level = 2 },
	{ config_id = 2008, monster_id = 21010501, pos = { x = 13.4, y = 42.0, z = 119.7 }, rot = { x = 0.0, y = 206.4, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 20011001, pos = { x = -4.0, y = 42.0, z = 122.3 }, rot = { x = 0.0, y = 190.4, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 2010, monster_id = 20011001, pos = { x = -1.8, y = 42.0, z = 121.7 }, rot = { x = 0.0, y = 200.9, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2011, gadget_id = 70220005, pos = { x = 6.0, y = 42.0, z = 97.6 }, rot = { x = 0.0, y = 337.0, z = 0.0 }, level = 1 },
	{ config_id = 2012, gadget_id = 70211001, pos = { x = 23.1, y = 42.1, z = 130.4 }, rot = { x = 0.0, y = 90.8, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德" },
	{ config_id = 2013, gadget_id = 70350003, pos = { x = 54.9, y = 42.2, z = 121.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, gadget_id = 70360002, pos = { x = 47.0, y = 42.0, z = 126.8 }, rot = { x = 0.0, y = 235.1, z = 0.0 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220011, pos = { x = 15.4, y = 42.0, z = 97.7 }, rot = { x = 0.0, y = 233.5, z = 0.0 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220011, pos = { x = 15.7, y = 42.1, z = 108.6 }, rot = { x = 0.0, y = 228.0, z = 0.0 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220003, pos = { x = 32.0, y = 42.0, z = 132.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220003, pos = { x = -5.4, y = 42.0, z = 117.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220013, pos = { x = -2.0, y = 42.0, z = 117.9 }, rot = { x = 0.0, y = 266.6, z = 0.0 }, level = 1 },
	{ config_id = 2020, gadget_id = 70220013, pos = { x = -2.1, y = 43.6, z = 117.9 }, rot = { x = 0.0, y = 154.6, z = 0.0 }, level = 1 },
	{ config_id = 2021, gadget_id = 70211001, pos = { x = -2.6, y = 42.0, z = 123.6 }, rot = { x = 0.0, y = 179.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德" }
}

-- 区域
regions = {
	{ config_id = 31, shape = RegionShape.SPHERE, radius = 12.21, pos = { x = 74.3, y = 39.5, z = 121.3 } },
	{ config_id = 37, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3.8, y = 42.0, z = 124.0 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_28", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_28", action = "action_EVENT_GADGET_CREATE_28" },
	{ name = "SELECT_OPTION_29", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29", action = "action_EVENT_SELECT_OPTION_29", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_30", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_30", action = "action_EVENT_SELECT_OPTION_30", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31", forbid_guest = false },
	{ name = "ENTER_REGION_37", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37", action = "action_EVENT_ENTER_REGION_37", forbid_guest = false }
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
		-- description = suite_1,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008 },
		gadgets = { 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021 },
		regions = { 31, 37 },
		triggers = { "GADGET_CREATE_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "ENTER_REGION_31", "ENTER_REGION_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_28(context, evt)
	if 2014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_28(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29(context, evt)
	-- 判断是gadgetid 2014
	if 2014 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_30(context, evt)
	-- 判断是gadgetid 2014
	if 2014 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_30(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31(context, evt)
	if evt.param1 ~= 31 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31(context, evt)
	-- 将configid为 2013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 2014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37(context, evt)
	if evt.param1 ~= 37 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2009, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2010, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

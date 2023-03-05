-- Trigger变量
local defs = {
	gadget_id_1 = 49
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011301, pos = { x = 190.5, y = 42.1, z = 120.9 }, rot = { x = 0.0, y = 270.4, z = 0.0 }, level = 2, disableWander = true },
	{ config_id = 4002, monster_id = 20011201, pos = { x = 148.9, y = 39.5, z = 125.6 }, rot = { x = 0.0, y = 259.1, z = 0.0 }, level = 1 },
	{ config_id = 4003, monster_id = 20011201, pos = { x = 151.6, y = 39.5, z = 121.1 }, rot = { x = 0.0, y = 268.5, z = 0.0 }, level = 1 },
	{ config_id = 4004, monster_id = 20011201, pos = { x = 147.7, y = 39.6, z = 116.1 }, rot = { x = 0.0, y = 312.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4005, gadget_id = 70220002, pos = { x = 190.1, y = 42.1, z = 122.4 }, rot = { x = 0.0, y = 157.9, z = 0.0 }, level = 1 },
	{ config_id = 4006, gadget_id = 70220002, pos = { x = 190.8, y = 42.0, z = 124.3 }, rot = { x = 0.0, y = 46.2, z = 0.0 }, level = 1 },
	{ config_id = 4007, gadget_id = 70220002, pos = { x = 191.8, y = 42.1, z = 122.4 }, rot = { x = 0.0, y = 301.0, z = 0.0 }, level = 1 },
	{ config_id = 4008, gadget_id = 70220002, pos = { x = 189.8, y = 42.0, z = 124.0 }, rot = { x = 0.0, y = 14.5, z = 0.0 }, level = 1 },
	{ config_id = 4009, gadget_id = 70220002, pos = { x = 189.8, y = 42.1, z = 125.8 }, rot = { x = 0.0, y = 97.9, z = 0.0 }, level = 1 },
	{ config_id = 4010, gadget_id = 70220002, pos = { x = 189.8, y = 42.0, z = 127.3 }, rot = { x = 0.0, y = 147.8, z = 0.0 }, level = 1 },
	{ config_id = 4011, gadget_id = 70220002, pos = { x = 191.0, y = 42.1, z = 126.1 }, rot = { x = 0.0, y = 170.0, z = 0.0 }, level = 1 },
	{ config_id = 4012, gadget_id = 70220002, pos = { x = 190.3, y = 42.0, z = 119.4 }, rot = { x = 0.0, y = 20.2, z = 0.0 }, level = 1 },
	{ config_id = 4013, gadget_id = 70220002, pos = { x = 189.2, y = 42.0, z = 119.4 }, rot = { x = 0.0, y = 75.0, z = 0.0 }, level = 1 },
	{ config_id = 4014, gadget_id = 70220002, pos = { x = 189.0, y = 42.1, z = 120.3 }, rot = { x = 0.0, y = 168.1, z = 0.0 }, level = 1 },
	{ config_id = 4015, gadget_id = 70220002, pos = { x = 189.8, y = 42.0, z = 117.5 }, rot = { x = 0.0, y = 217.7, z = 0.0 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220002, pos = { x = 189.8, y = 42.1, z = 116.1 }, rot = { x = 0.0, y = 219.8, z = 0.0 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220002, pos = { x = 190.1, y = 42.0, z = 114.7 }, rot = { x = 0.0, y = 239.6, z = 0.0 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220002, pos = { x = 190.3, y = 42.0, z = 116.8 }, rot = { x = 0.0, y = 309.4, z = 0.0 }, level = 1 },
	{ config_id = 4019, gadget_id = 70220002, pos = { x = 191.9, y = 42.1, z = 120.4 }, rot = { x = 0.0, y = 84.2, z = 0.0 }, level = 1 },
	{ config_id = 4020, gadget_id = 70220002, pos = { x = 193.4, y = 42.0, z = 119.7 }, rot = { x = 0.0, y = 265.7, z = 0.0 }, level = 1 },
	{ config_id = 4021, gadget_id = 70220002, pos = { x = 194.5, y = 42.0, z = 120.1 }, rot = { x = 0.0, y = 46.3, z = 0.0 }, level = 1 },
	{ config_id = 4022, gadget_id = 70220002, pos = { x = 195.5, y = 42.1, z = 121.2 }, rot = { x = 0.0, y = 121.7, z = 0.0 }, level = 1 },
	{ config_id = 4023, gadget_id = 70220002, pos = { x = 196.4, y = 42.0, z = 119.9 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 1 },
	{ config_id = 4024, gadget_id = 70220002, pos = { x = 197.3, y = 42.0, z = 120.6 }, rot = { x = 0.0, y = 102.1, z = 0.0 }, level = 1 },
	{ config_id = 4025, gadget_id = 70220002, pos = { x = 188.2, y = 42.0, z = 121.0 }, rot = { x = 0.0, y = 272.8, z = 0.0 }, level = 1 },
	{ config_id = 4026, gadget_id = 70220002, pos = { x = 186.6, y = 42.0, z = 120.9 }, rot = { x = 0.0, y = 2.0, z = 0.0 }, level = 1 },
	{ config_id = 4027, gadget_id = 70220002, pos = { x = 185.2, y = 42.0, z = 120.6 }, rot = { x = 0.0, y = 335.0, z = 0.0 }, level = 1 },
	{ config_id = 4028, gadget_id = 70220002, pos = { x = 185.2, y = 42.1, z = 121.7 }, rot = { x = 0.0, y = 72.9, z = 0.0 }, level = 1 },
	{ config_id = 4029, gadget_id = 70220002, pos = { x = 183.8, y = 42.0, z = 120.8 }, rot = { x = 0.0, y = 143.3, z = 0.0 }, level = 1 },
	{ config_id = 4030, gadget_id = 70220002, pos = { x = 182.6, y = 42.0, z = 121.3 }, rot = { x = 0.0, y = 101.3, z = 0.0 }, level = 1 },
	{ config_id = 4031, gadget_id = 70220002, pos = { x = 198.7, y = 42.0, z = 120.5 }, rot = { x = 0.0, y = 57.0, z = 0.0 }, level = 1 },
	{ config_id = 4032, gadget_id = 70220002, pos = { x = 198.2, y = 42.0, z = 121.8 }, rot = { x = 0.0, y = 121.2, z = 0.0 }, level = 1 },
	{ config_id = 4033, gadget_id = 70220002, pos = { x = 190.1, y = 42.0, z = 113.6 }, rot = { x = 0.0, y = 350.1, z = 0.0 }, level = 1 },
	{ config_id = 4034, gadget_id = 70220002, pos = { x = 191.2, y = 42.0, z = 113.1 }, rot = { x = 0.0, y = 63.6, z = 0.0 }, level = 1 },
	{ config_id = 4035, gadget_id = 70220002, pos = { x = 190.6, y = 42.0, z = 112.0 }, rot = { x = 0.0, y = 303.1, z = 0.0 }, level = 1 },
	{ config_id = 4036, gadget_id = 70220002, pos = { x = 191.1, y = 42.1, z = 115.8 }, rot = { x = 0.0, y = 0.9, z = 0.0 }, level = 1 },
	{ config_id = 4037, gadget_id = 70220002, pos = { x = 190.4, y = 42.0, z = 128.6 }, rot = { x = 0.0, y = 45.4, z = 0.0 }, level = 1 },
	{ config_id = 4038, gadget_id = 70220002, pos = { x = 191.0, y = 42.0, z = 130.1 }, rot = { x = 0.0, y = 348.0, z = 0.0 }, level = 1 },
	{ config_id = 4039, gadget_id = 70220002, pos = { x = 199.9, y = 42.0, z = 122.0 }, rot = { x = 0.0, y = 40.8, z = 0.0 }, level = 1 },
	{ config_id = 4040, gadget_id = 70220002, pos = { x = 201.7, y = 42.0, z = 122.1 }, rot = { x = 0.0, y = 105.9, z = 0.0 }, level = 1 },
	{ config_id = 4041, gadget_id = 70220002, pos = { x = 190.8, y = 42.0, z = 110.6 }, rot = { x = 0.0, y = 39.6, z = 0.0 }, level = 1 },
	{ config_id = 4042, gadget_id = 70220002, pos = { x = 181.2, y = 42.0, z = 121.2 }, rot = { x = 0.0, y = 218.5, z = 0.0 }, level = 1 },
	{ config_id = 4043, gadget_id = 70220002, pos = { x = 193.8, y = 42.0, z = 122.8 }, rot = { x = 0.0, y = 149.5, z = 0.0 }, level = 1 },
	{ config_id = 4044, gadget_id = 70220002, pos = { x = 192.5, y = 42.0, z = 124.3 }, rot = { x = 0.0, y = 239.7, z = 0.0 }, level = 1 },
	{ config_id = 4045, gadget_id = 70220002, pos = { x = 188.0, y = 42.0, z = 123.6 }, rot = { x = 0.0, y = 88.3, z = 0.0 }, level = 1 },
	{ config_id = 4046, gadget_id = 70220002, pos = { x = 187.4, y = 42.0, z = 122.6 }, rot = { x = 0.0, y = 205.5, z = 0.0 }, level = 1 },
	{ config_id = 4047, gadget_id = 70220002, pos = { x = 187.3, y = 42.0, z = 119.4 }, rot = { x = 0.0, y = 316.8, z = 0.0 }, level = 1 },
	{ config_id = 4048, gadget_id = 70220002, pos = { x = 187.8, y = 42.0, z = 117.7 }, rot = { x = 0.0, y = 300.8, z = 0.0 }, level = 1 },
	{ config_id = 4049, gadget_id = 70220002, pos = { x = 192.2, y = 42.0, z = 117.3 }, rot = { x = 0.0, y = 15.6, z = 0.0 }, level = 1 },
	{ config_id = 4050, gadget_id = 70220002, pos = { x = 193.3, y = 42.0, z = 118.3 }, rot = { x = 0.0, y = 93.1, z = 0.0 }, level = 1 },
	{ config_id = 4051, gadget_id = 70350002, pos = { x = 173.9, y = 41.9, z = 120.9 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4052, gadget_id = 70350002, pos = { x = 190.5, y = 42.0, z = 137.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4053, gadget_id = 70360002, pos = { x = 170.5, y = 42.0, z = 123.5 }, rot = { x = 0.0, y = 222.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 43, shape = RegionShape.SPHERE, radius = 15.19, pos = { x = 195.0, y = 42.0, z = 123.4 } },
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 12.2, pos = { x = 121.9, y = 39.5, z = 121.2 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 14.98, pos = { x = 156.5, y = 39.5, z = 120.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_43", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43", action = "action_EVENT_ENTER_REGION_43", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44", trigger_count = 0 },
	{ name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ name = "GADGET_CREATE_47", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47", action = "action_EVENT_GADGET_CREATE_47" },
	{ name = "SELECT_OPTION_48", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48", action = "action_EVENT_SELECT_OPTION_48", trigger_count = 0, forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49", trigger_count = 0 },
	{ name = "SELECT_OPTION_51", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_51", action = "action_EVENT_SELECT_OPTION_51", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_52", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52", action = "action_EVENT_SELECT_OPTION_52", trigger_count = 0, forbid_guest = false }
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
		monsters = { 4001 },
		gadgets = { 4005, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4037, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050, 4051, 4052, 4053 },
		regions = { 43, 45, 46 },
		triggers = { "ENTER_REGION_43", "ANY_MONSTER_DIE_44", "ENTER_REGION_45", "ENTER_REGION_46", "GADGET_CREATE_47", "SELECT_OPTION_48", "ANY_MONSTER_DIE_49", "SELECT_OPTION_51", "SELECT_OPTION_52" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_43(context, evt)
	if evt.param1 ~= 43 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43(context, evt)
	-- 将configid为 4051 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 4052 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 4053 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4053, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 将configid为 161 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= 45 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45(context, evt)
	-- 将configid为 4051 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 4051 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_47(context, evt)
	if 4053 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_47(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_48(context, evt)
	-- 判断是gadgetid 4053
	if 4053 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 判断角色数量不少于0
	if evt.type == EventType.EVENT_ANY_MONSTER_DIE and evt.param1 == defs.gadget_id_1  then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 将configid为 4052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_51(context, evt)
	-- 判断是gadgetid 4053
	if 4053 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_51(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4053, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_52(context, evt)
	-- 判断是gadgetid 4053
	if 4053 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_52(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

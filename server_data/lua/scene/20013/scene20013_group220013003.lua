--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22010101, pos = { x = 343.2, y = -18.9, z = 343.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 21010701, pos = { x = 352.3, y = -19.0, z = 331.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 21010701, pos = { x = 343.0, y = -18.4, z = 332.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010701, pos = { x = 333.9, y = -19.2, z = 331.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 20011201, pos = { x = 350.9, y = -18.9, z = 342.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3006, monster_id = 20011201, pos = { x = 336.9, y = -18.9, z = 349.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 22010201, pos = { x = 343.2, y = -18.9, z = 343.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 20010801, pos = { x = 350.0, y = -18.9, z = 340.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 20010801, pos = { x = 337.2, y = -18.9, z = 347.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3010, monster_id = 21010401, pos = { x = 358.1, y = -14.2, z = 336.3 }, rot = { x = 0.0, y = 327.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3011, monster_id = 21010401, pos = { x = 358.4, y = -16.9, z = 339.4 }, rot = { x = 0.0, y = 323.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3012, monster_id = 20010601, pos = { x = 347.2, y = -18.9, z = 342.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3013, monster_id = 20010701, pos = { x = 337.8, y = -18.9, z = 343.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3014, monster_id = 20010501, pos = { x = 348.1, y = -18.9, z = 348.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3015, monster_id = 20010501, pos = { x = 336.5, y = -18.9, z = 338.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3016, gadget_id = 70350003, pos = { x = 353.2, y = -18.6, z = 322.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3017, gadget_id = 70350003, pos = { x = 343.2, y = -18.4, z = 322.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3018, gadget_id = 70350003, pos = { x = 333.3, y = -18.5, z = 322.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220005, pos = { x = 357.4, y = -19.4, z = 350.5 }, rot = { x = 0.0, y = 29.7, z = 0.0 }, level = 1 },
	{ config_id = 3020, gadget_id = 70220005, pos = { x = 360.5, y = -14.3, z = 336.7 }, rot = { x = 0.0, y = 146.3, z = 0.0 }, level = 1 },
	{ config_id = 3021, gadget_id = 70211011, pos = { x = 366.1, y = -14.3, z = 332.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 3022, gadget_id = 70220004, pos = { x = 357.3, y = -19.3, z = 346.4 }, rot = { x = 0.0, y = 119.2, z = 0.0 }, level = 3 },
	{ config_id = 3023, gadget_id = 70220004, pos = { x = 358.3, y = -16.9, z = 344.4 }, rot = { x = 0.0, y = 131.0, z = 0.0 }, level = 3 },
	{ config_id = 3024, gadget_id = 70220004, pos = { x = 358.2, y = -16.9, z = 340.8 }, rot = { x = 0.0, y = 339.0, z = 0.0 }, level = 3 },
	{ config_id = 3025, gadget_id = 70220004, pos = { x = 357.9, y = -16.9, z = 338.4 }, rot = { x = 0.0, y = 266.0, z = 0.0 }, level = 3 },
	{ config_id = 3026, gadget_id = 70220004, pos = { x = 357.9, y = -14.3, z = 337.3 }, rot = { x = 0.0, y = 91.7, z = 0.0 }, level = 3 },
	{ config_id = 3027, gadget_id = 70220005, pos = { x = 357.3, y = -19.3, z = 345.5 }, rot = { x = 0.0, y = 21.3, z = 0.0 }, level = 1 },
	{ config_id = 3028, gadget_id = 70310001, pos = { x = 362.0, y = -14.3, z = 336.5 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1 },
	{ config_id = 3029, gadget_id = 70310001, pos = { x = 358.6, y = -16.9, z = 354.6 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3030, gadget_id = 70310001, pos = { x = 358.6, y = -16.9, z = 350.2 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3031, gadget_id = 70310001, pos = { x = 358.6, y = -16.9, z = 345.2 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3032, gadget_id = 70310001, pos = { x = 358.7, y = -16.9, z = 340.3 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3033, gadget_id = 70310001, pos = { x = 358.7, y = -14.3, z = 335.2 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3034, gadget_id = 70310001, pos = { x = 358.8, y = -14.3, z = 330.2 }, rot = { x = 0.0, y = 17.8, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 7, shape = RegionShape.SPHERE, radius = 49.11, pos = { x = 342.5, y = -18.9, z = 315.0 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" },
	{ name = "ENTER_REGION_7", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7", action = "action_EVENT_ENTER_REGION_7", trigger_count = 0, forbid_guest = false }
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
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3016, 3017, 3018, 3021, 3028 },
		regions = { 7 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_7" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3007, 3008, 3009, 3010, 3011 },
		gadgets = { 3016, 3017, 3018, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028 },
		regions = { 7 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_7" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3012, 3013, 3014, 3015 },
		gadgets = { 3016, 3017, 3018, 3021, 3028 },
		regions = { 7 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_7" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 将configid为 3016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3018, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7(context, evt)
	if evt.param1 ~= 7 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7(context, evt)
	-- 将configid为 8 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 9 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 10 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

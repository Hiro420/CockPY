--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 22010101, pos = { x = 343.2, y = -11.5, z = 243.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 9013 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 345.8, y = -12.7, z = 252.5 }, rot = { x = 0.0, y = 180.9, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 340.4, y = -12.7, z = 252.3 }, rot = { x = 0.0, y = 177.6, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 345.9, y = -12.7, z = 255.5 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 340.6, y = -12.7, z = 255.6 }, rot = { x = 0.0, y = 166.5, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 3007, monster_id = 23030101, pos = { x = 343.3, y = -12.7, z = 263.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 3008, monster_id = 22010201, pos = { x = 343.2, y = -12.7, z = 257.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 9013 },
	{ config_id = 3009, monster_id = 21010301, pos = { x = 345.9, y = -12.7, z = 255.7 }, rot = { x = 0.0, y = 315.2, z = 0.0 }, level = 1, pose_id = 9012 },
	{ config_id = 3010, monster_id = 21010301, pos = { x = 340.7, y = -12.7, z = 255.6 }, rot = { x = 0.0, y = 35.9, z = 0.0 }, level = 1, pose_id = 9012 },
	{ config_id = 3011, monster_id = 21010301, pos = { x = 345.8, y = -12.7, z = 260.5 }, rot = { x = 0.0, y = 229.6, z = 0.0 }, level = 1, pose_id = 9012 },
	{ config_id = 3012, monster_id = 21010301, pos = { x = 340.7, y = -12.7, z = 260.4 }, rot = { x = 0.0, y = 127.1, z = 0.0 }, level = 1, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70350002, pos = { x = 343.5, y = -11.1, z = 240.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3013, gadget_id = 70350003, pos = { x = 353.3, y = -11.2, z = 291.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3014, gadget_id = 70350003, pos = { x = 333.3, y = -11.2, z = 291.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3015, gadget_id = 70350003, pos = { x = 343.3, y = -11.2, z = 291.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3020, gadget_id = 70220025, pos = { x = 345.8, y = -12.7, z = 255.6 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220025, pos = { x = 340.4, y = -12.7, z = 255.6 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220025, pos = { x = 340.5, y = -12.7, z = 252.7 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220025, pos = { x = 345.7, y = -12.7, z = 252.5 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3024, gadget_id = 70310001, pos = { x = 346.3, y = -11.4, z = 243.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3025, gadget_id = 70310001, pos = { x = 340.4, y = -11.4, z = 243.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3026, gadget_id = 70300107, pos = { x = 343.2, y = -11.3, z = 245.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3027, gadget_id = 70310001, pos = { x = 345.7, y = -12.7, z = 260.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3028, gadget_id = 70310001, pos = { x = 340.9, y = -12.7, z = 260.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3029, gadget_id = 70310001, pos = { x = 345.8, y = -12.7, z = 265.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3030, gadget_id = 70310001, pos = { x = 340.8, y = -12.7, z = 265.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3031, gadget_id = 70310001, pos = { x = 350.7, y = -12.7, z = 270.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3032, gadget_id = 70310001, pos = { x = 336.0, y = -12.7, z = 270.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3033, gadget_id = 70310001, pos = { x = 335.9, y = -12.7, z = 255.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3034, gadget_id = 70310001, pos = { x = 350.7, y = -12.7, z = 255.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3035, gadget_id = 70220010, pos = { x = 343.1, y = -12.7, z = 258.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3036, gadget_id = 70211031, pos = { x = 343.3, y = -12.8, z = 254.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 3038, gadget_id = 70220013, pos = { x = 325.1, y = -11.4, z = 281.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3039, gadget_id = 70220013, pos = { x = 326.4, y = -11.4, z = 284.4 }, rot = { x = 0.0, y = 41.1, z = 0.0 }, level = 1 },
	{ config_id = 3040, gadget_id = 70220014, pos = { x = 327.4, y = -11.4, z = 282.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3041, gadget_id = 70220014, pos = { x = 325.6, y = -11.4, z = 286.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3042, gadget_id = 70220007, pos = { x = 326.8, y = -11.4, z = 248.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3043, gadget_id = 70220007, pos = { x = 330.8, y = -11.4, z = 243.5 }, rot = { x = 0.0, y = 91.9, z = 0.0 }, level = 1 },
	{ config_id = 3044, gadget_id = 70211001, pos = { x = 326.5, y = -11.4, z = 243.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 3045, gadget_id = 70220025, pos = { x = 325.3, y = -11.2, z = 282.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3046, gadget_id = 70220025, pos = { x = 326.8, y = -11.3, z = 285.4 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3016, shape = RegionShape.CUBIC, size = { x = 10.0, y = 8.0, z = 5.0 }, pos = { x = 353.2, y = -16.9, z = 306.7 } },
	{ config_id = 3017, shape = RegionShape.CUBIC, size = { x = 10.0, y = 8.0, z = 5.0 }, pos = { x = 343.1, y = -16.9, z = 306.7 } },
	{ config_id = 3018, shape = RegionShape.CUBIC, size = { x = 10.0, y = 8.0, z = 5.0 }, pos = { x = 333.2, y = -16.9, z = 306.8 } },
	{ config_id = 3019, shape = RegionShape.CUBIC, size = { x = 120.0, y = 8.0, z = 3.0 }, pos = { x = 343.4, y = -11.4, z = 281.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_3016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3016", action = "action_EVENT_ENTER_REGION_3016" },
	{ name = "ENTER_REGION_3017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3017", action = "action_EVENT_ENTER_REGION_3017" },
	{ name = "ENTER_REGION_3018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3018", action = "action_EVENT_ENTER_REGION_3018" },
	{ name = "ENTER_REGION_3019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3019", action = "action_EVENT_ENTER_REGION_3019" },
	{ name = "ANY_MONSTER_DIE_3037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3037", action = "action_EVENT_ANY_MONSTER_DIE_3037" }
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
		-- description = ,
		monsters = { },
		gadgets = { 3001, 3013, 3014, 3015, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046 },
		regions = { 3016, 3017, 3018, 3019 },
		triggers = { "ENTER_REGION_3016", "ENTER_REGION_3017", "ENTER_REGION_3018", "ENTER_REGION_3019", "ANY_MONSTER_DIE_3037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 挑战1水,
		monsters = { 3008, 3009, 3010, 3011, 3012 },
		gadgets = { 3031, 3032, 3033, 3034, 3035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 挑战2雷,
		monsters = { 3007 },
		gadgets = { 3027, 3028, 3029, 3030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 挑战3火,
		monsters = { 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3020, 3021, 3022, 3023, 3024, 3025, 3026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 宝箱奖励,
		monsters = { },
		gadgets = { 3036 },
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
function condition_EVENT_ENTER_REGION_3016(context, evt)
	if evt.param1 ~= 3016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3016(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3017(context, evt)
	if evt.param1 ~= 3017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3017(context, evt)
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3018(context, evt)
	if evt.param1 ~= 3018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3018(context, evt)
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3019(context, evt)
	if evt.param1 ~= 3019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3019(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStop) then
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStop) then
			return -1
		end 
	
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240008003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008003, 5)
	
	return 0
end

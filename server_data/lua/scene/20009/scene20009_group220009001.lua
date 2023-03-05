-- Trigger变量
local defs = {
	gadget_id_1 = 137,
	gadget_id_2 = 138,
	gadget_id_3 = 55,
	gadget_id_4 = 54,
	gadget_id_5 = 1,
	gadget_id_6 = 179
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
	{ config_id = 40, gadget_id = 70211001, pos = { x = -57.6, y = -8.1, z = 100.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 54, gadget_id = 70360002, pos = { x = -31.8, y = -8.0, z = 93.9 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 1 },
	{ config_id = 55, gadget_id = 70350003, pos = { x = -34.7, y = -8.2, z = 97.9 }, rot = { x = 0.0, y = 89.4, z = 0.0 }, level = 1 },
	{ config_id = 117, gadget_id = 70220003, pos = { x = -54.9, y = -8.0, z = 90.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 133, gadget_id = 70900202, pos = { x = -31.8, y = -6.3, z = 93.8 }, rot = { x = 0.0, y = 344.9, z = 0.0 }, level = 1 },
	{ config_id = 136, gadget_id = 70220003, pos = { x = -55.2, y = -8.1, z = 100.0 }, rot = { x = 0.0, y = 273.6, z = 2.7 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 137, gadget_id = 70900201, pos = { x = -147.1, y = 33.5, z = 45.7 }, rot = { x = 0.0, y = 114.4, z = 0.0 }, level = 1 },
	{ config_id = 138, gadget_id = 70900201, pos = { x = -103.8, y = -10.7, z = 125.8 }, rot = { x = 0.0, y = 165.5, z = 0.0 }, level = 1 },
	{ config_id = 139, gadget_id = 70900201, pos = { x = -128.4, y = -10.6, z = 111.5 }, rot = { x = 0.0, y = 153.2, z = 0.0 }, level = 1 },
	{ config_id = 140, gadget_id = 70900201, pos = { x = -145.0, y = 20.9, z = 73.7 }, rot = { x = 0.0, y = 260.1, z = 0.0 }, level = 1 },
	{ config_id = 141, gadget_id = 70900202, pos = { x = -147.3, y = 20.6, z = 45.5 }, rot = { x = 0.0, y = 153.8, z = 0.0 }, level = 1 },
	{ config_id = 142, gadget_id = 70900201, pos = { x = -147.1, y = 23.3, z = 36.1 }, rot = { x = 0.0, y = 315.4, z = 0.0 }, level = 1 },
	{ config_id = 179, gadget_id = 70900201, pos = { x = -78.0, y = -5.1, z = 103.0 }, rot = { x = 0.0, y = 165.5, z = 0.0 }, level = 1 },
	{ config_id = 180, gadget_id = 70900201, pos = { x = -58.2, y = -5.7, z = 90.2 }, rot = { x = 0.0, y = 165.5, z = 0.0 }, level = 1 },
	{ config_id = 221, gadget_id = 70220013, pos = { x = -45.9, y = -8.0, z = 83.4 }, rot = { x = 0.0, y = 345.0, z = 0.0 }, level = 1 },
	{ config_id = 222, gadget_id = 70220014, pos = { x = -47.2, y = -8.0, z = 83.0 }, rot = { x = 0.0, y = 197.5, z = 0.0 }, level = 1 },
	{ config_id = 223, gadget_id = 70220014, pos = { x = -45.6, y = -8.0, z = 85.0 }, rot = { x = 0.0, y = 69.9, z = 0.0 }, level = 1 },
	{ config_id = 224, gadget_id = 70220014, pos = { x = -58.8, y = -8.0, z = 98.6 }, rot = { x = 0.0, y = 191.6, z = 0.0 }, level = 1 },
	{ config_id = 226, gadget_id = 70220013, pos = { x = -52.2, y = -8.0, z = 83.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 227, gadget_id = 70220003, pos = { x = -66.4, y = -8.0, z = 97.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 228, gadget_id = 70220003, pos = { x = -67.7, y = -8.0, z = 95.8 }, rot = { x = 0.0, y = 51.5, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 229, gadget_id = 70220003, pos = { x = -68.4, y = -8.0, z = 97.7 }, rot = { x = 359.9, y = 113.0, z = 1.2 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 230, gadget_id = 70220003, pos = { x = -69.8, y = -8.0, z = 99.1 }, rot = { x = 0.0, y = 69.8, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 231, gadget_id = 70220003, pos = { x = -70.5, y = -8.0, z = 95.6 }, rot = { x = 0.0, y = 104.5, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 232, gadget_id = 70220003, pos = { x = -71.4, y = -8.0, z = 99.9 }, rot = { x = 0.0, y = 300.4, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 266, gadget_id = 70220003, pos = { x = -91.2, y = -15.6, z = 103.1 }, rot = { x = 0.0, y = 4.2, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 267, gadget_id = 70220003, pos = { x = -90.2, y = -15.5, z = 102.5 }, rot = { x = 0.0, y = 4.2, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 268, gadget_id = 70220003, pos = { x = -93.6, y = -15.4, z = 102.8 }, rot = { x = 0.0, y = 4.2, z = 0.0 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 277, gadget_id = 70220025, pos = { x = -46.0, y = -7.9, z = 85.8 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 278, gadget_id = 70220025, pos = { x = -45.7, y = -8.0, z = 84.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 279, gadget_id = 70220025, pos = { x = -46.6, y = -7.9, z = 104.2 }, rot = { x = 274.1, y = 265.8, z = 100.1 }, level = 1 },
	{ config_id = 280, gadget_id = 70220025, pos = { x = -48.2, y = -7.9, z = 104.2 }, rot = { x = 270.0, y = 296.1, z = 0.0 }, level = 1 },
	{ config_id = 281, gadget_id = 70220025, pos = { x = -47.4, y = -7.9, z = 106.3 }, rot = { x = 270.0, y = 296.1, z = 0.0 }, level = 1 },
	{ config_id = 282, gadget_id = 70220025, pos = { x = -92.1, y = -11.3, z = 133.6 }, rot = { x = 270.0, y = 272.8, z = 0.0 }, level = 1 },
	{ config_id = 283, gadget_id = 70220025, pos = { x = -92.1, y = -11.6, z = 130.5 }, rot = { x = 270.0, y = 343.4, z = 0.0 }, level = 1 },
	{ config_id = 288, gadget_id = 70220025, pos = { x = -143.2, y = 14.3, z = 61.4 }, rot = { x = 270.0, y = 132.9, z = 0.0 }, level = 1 },
	{ config_id = 289, gadget_id = 70220025, pos = { x = -137.5, y = -12.4, z = 141.2 }, rot = { x = 270.0, y = 78.9, z = 0.0 }, level = 1 },
	{ config_id = 290, gadget_id = 70220025, pos = { x = -139.6, y = -12.4, z = 138.4 }, rot = { x = 270.0, y = 80.8, z = 0.0 }, level = 1 },
	{ config_id = 291, gadget_id = 70220025, pos = { x = -111.2, y = -12.4, z = 139.4 }, rot = { x = 270.0, y = 96.4, z = 0.0 }, level = 1 },
	{ config_id = 292, gadget_id = 70220025, pos = { x = -108.9, y = -12.4, z = 140.5 }, rot = { x = 270.0, y = 96.4, z = 0.0 }, level = 1 },
	{ config_id = 293, gadget_id = 70220025, pos = { x = -112.4, y = -12.4, z = 141.8 }, rot = { x = 270.0, y = 96.4, z = 0.0 }, level = 1 },
	{ config_id = 294, gadget_id = 70220025, pos = { x = -132.0, y = -12.4, z = 109.6 }, rot = { x = 270.0, y = 96.4, z = 0.0 }, level = 1 },
	{ config_id = 295, gadget_id = 70220025, pos = { x = -144.8, y = -12.5, z = 110.8 }, rot = { x = 272.1, y = 90.6, z = 6.6 }, level = 1 },
	{ config_id = 296, gadget_id = 70220025, pos = { x = -125.9, y = -0.3, z = 133.0 }, rot = { x = 270.0, y = 106.8, z = 0.0 }, level = 1 },
	{ config_id = 297, gadget_id = 70220025, pos = { x = -128.9, y = -0.3, z = 131.9 }, rot = { x = 270.0, y = 106.8, z = 0.0 }, level = 1 },
	{ config_id = 298, gadget_id = 70220025, pos = { x = -127.5, y = -0.3, z = 128.0 }, rot = { x = 270.0, y = 106.8, z = 0.0 }, level = 1 },
	{ config_id = 299, gadget_id = 70220025, pos = { x = -129.8, y = -0.3, z = 121.2 }, rot = { x = 270.0, y = 106.8, z = 0.0 }, level = 1 },
	{ config_id = 300, gadget_id = 70220025, pos = { x = -125.0, y = -0.3, z = 122.8 }, rot = { x = 270.0, y = 106.8, z = 0.0 }, level = 1 },
	{ config_id = 301, gadget_id = 70220025, pos = { x = -130.2, y = -0.3, z = 130.0 }, rot = { x = 270.0, y = 68.2, z = 0.0 }, level = 1 },
	{ config_id = 302, gadget_id = 70220025, pos = { x = -140.4, y = -12.4, z = 137.0 }, rot = { x = 270.0, y = 80.8, z = 0.0 }, level = 1 },
	{ config_id = 303, gadget_id = 70220025, pos = { x = -135.5, y = -12.4, z = 142.0 }, rot = { x = 270.0, y = 80.8, z = 0.0 }, level = 1 },
	{ config_id = 304, gadget_id = 70220025, pos = { x = -137.5, y = -12.4, z = 139.2 }, rot = { x = 270.0, y = 80.8, z = 0.0 }, level = 1 },
	{ config_id = 305, gadget_id = 70220025, pos = { x = -141.1, y = -12.4, z = 139.8 }, rot = { x = 270.0, y = 78.9, z = 0.0 }, level = 1 },
	{ config_id = 306, gadget_id = 70220025, pos = { x = -108.6, y = -12.4, z = 137.8 }, rot = { x = 270.0, y = 96.4, z = 0.0 }, level = 1 },
	{ config_id = 307, gadget_id = 70220025, pos = { x = -82.5, y = -15.6, z = 129.0 }, rot = { x = 270.0, y = 185.0, z = 0.0 }, level = 1 },
	{ config_id = 308, gadget_id = 70220025, pos = { x = -80.7, y = -15.5, z = 128.9 }, rot = { x = 273.1, y = 275.0, z = 270.0 }, level = 1 },
	{ config_id = 309, gadget_id = 70220014, pos = { x = -54.3, y = -8.0, z = 86.1 }, rot = { x = 0.0, y = 197.5, z = 0.0 }, level = 1 },
	{ config_id = 310, gadget_id = 70220014, pos = { x = -54.3, y = -8.0, z = 85.1 }, rot = { x = 0.0, y = 197.5, z = 0.0 }, level = 1 },
	{ config_id = 311, gadget_id = 70220005, pos = { x = -86.9, y = -15.5, z = 102.1 }, rot = { x = 0.0, y = 21.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3, shape = RegionShape.SPHERE, radius = 8.31, pos = { x = -31.9, y = -7.9, z = 97.7 } },
	{ config_id = 4, shape = RegionShape.SPHERE, radius = 18.11, pos = { x = -55.9, y = -8.0, z = 98.0 } },
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 14.82, pos = { x = -57.8, y = -8.0, z = 94.9 } },
	{ config_id = 23, shape = RegionShape.SPHERE, radius = 5, pos = { x = -128.7, y = -12.3, z = 106.5 } },
	{ config_id = 24, shape = RegionShape.CUBIC, size = { x = 53.3, y = 30.2, z = 1.0 }, pos = { x = -146.0, y = 27.6, z = 56.5 } },
	{ config_id = 25, shape = RegionShape.CUBIC, size = { x = 28.8, y = 13.5, z = 3.0 }, pos = { x = -82.4, y = -8.0, z = 103.3 } },
	{ config_id = 31, shape = RegionShape.CUBIC, size = { x = 2.1, y = 1.0, z = 6.6 }, pos = { x = -105.1, y = -12.5, z = 125.6 } },
	{ config_id = 32, shape = RegionShape.CUBIC, size = { x = 38.9, y = 29.0, z = 2.7 }, pos = { x = -146.6, y = 21.3, z = 78.7 } },
	{ config_id = 37, shape = RegionShape.SPHERE, radius = 5, pos = { x = -61.9, y = -8.1, z = 89.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3", forbid_guest = false },
	{ name = "ENTER_REGION_4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4", action = "action_EVENT_ENTER_REGION_4", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" },
	{ name = "DUNGEON_SETTLE_8", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_8", action = "action_EVENT_DUNGEON_SETTLE_8" },
	{ name = "GADGET_CREATE_9", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9", action = "action_EVENT_GADGET_CREATE_9" },
	{ name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", forbid_guest = false },
	{ name = "SELECT_OPTION_17", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17", action = "action_EVENT_SELECT_OPTION_17", forbid_guest = false },
	{ name = "ENTER_REGION_23", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23", action = "action_EVENT_ENTER_REGION_23", forbid_guest = false },
	{ name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24", action = "action_EVENT_ENTER_REGION_24", forbid_guest = false },
	{ name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", forbid_guest = false },
	{ name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31", forbid_guest = false },
	{ name = "ENTER_REGION_32", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32", action = "action_EVENT_ENTER_REGION_32", forbid_guest = false },
	{ name = "ANY_GADGET_DIE_34", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_34", action = "action_EVENT_ANY_GADGET_DIE_34" },
	{ name = "ANY_GADGET_DIE_36", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36", action = "action_EVENT_ANY_GADGET_DIE_36" },
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
		gadgets = { 40, 54, 55, 117, 133, 136, 221, 222, 223, 224, 227, 228, 229, 230, 231, 232, 266, 267, 268, 277, 278, 279, 280, 281, 282, 283, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311 },
		regions = { 3, 4, 11, 23, 24, 25, 31, 32, 37 },
		triggers = { "ENTER_REGION_3", "ENTER_REGION_4", "ANY_MONSTER_DIE_6", "GADGET_CREATE_9", "ENTER_REGION_11", "SELECT_OPTION_17", "ENTER_REGION_23", "ENTER_REGION_24", "ENTER_REGION_25", "ENTER_REGION_31", "ENTER_REGION_32", "ANY_GADGET_DIE_34", "ANY_GADGET_DIE_36", "ENTER_REGION_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3(context, evt)
	if evt.param1 ~= 3 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3(context, evt)
	-- 调用提示id为 1001002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1001002) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4(context, evt)
	if evt.param1 ~= 4 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4(context, evt)
	if 0 ~= ScriptLib.ShowReminder(context, 1002001) then
		return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
	pos = {x=-147.3, y=33.0, z=49.9}
		if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false }) then
				return -1
			end 
	
	return 0
end

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
	-- 调用提示id为 1004001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1004001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_8(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_8(context, evt)
	-- 调用提示id为 1006001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1006001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9(context, evt)
	-- 判断是gadgetid 54
	if 54 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
	-- 将configid为 55 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 54 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17(context, evt)
	-- 判断是gadgetid 54 option_id 1
	if 54 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17(context, evt)
	-- 改变指定group组220009001中， configid为54的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220009001, 54, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组220009001中， configid为55的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220009001, 55, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {133} }) then
			return -1
		end
	
	-- 删除指定group： 220009001 ；指定config：54；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220009001, 54, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_23(context, evt)
	if evt.param1 ~= 23 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23(context, evt)
	-- 创生gadget 140
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140 }) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {139} }) then
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（-148，18，75），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-148, y=18, z=75}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
	if evt.param1 ~= 24 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24(context, evt)
	-- 触发镜头注目，注目位置为坐标（-147，18，43），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-147, y=18, z=43}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1032001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1032001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25(context, evt)
	if evt.param1 ~= 25 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25(context, evt)
	 if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_2 }) then
		return -1
	end
	
	if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {defs.gadget_id_6} }) then
			return -1
		end
	
	pos = {x=-81.3, y=-14.7, z=120.9}
		if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false }) then
				return -1
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {138} }) then
			return -1
		end
	
	-- 创生gadget 139
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32(context, evt)
	if evt.param1 ~= 32 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32(context, evt)
	-- 创生gadget 141
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 141 }) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {140} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_34(context, evt)
	if 141 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_34(context, evt)
	-- 创生gadget 142
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 142 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36(context, evt)
	if 117 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {137} }) then
			return -1
		end
	
	-- 创生gadget 180
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 180 }) then
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {180} }) then
			return -1
		end
	
	-- 创生gadget 179
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 179 }) then
		return -1
	end
	
	return 0
end

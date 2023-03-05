--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 21010301, pos = { x = -132.8, y = -12.5, z = 123.5 }, rot = { x = 0.0, y = 17.4, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 7, monster_id = 21010301, pos = { x = -132.7, y = -12.4, z = 132.2 }, rot = { x = 0.0, y = 172.6, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 20, monster_id = 21010301, pos = { x = -136.6, y = -12.4, z = 125.4 }, rot = { x = 0.0, y = 7.8, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 23, monster_id = 21010401, pos = { x = -133.9, y = -10.6, z = 135.5 }, rot = { x = 0.0, y = 185.3, z = 0.0 }, level = 1, disableWander = true, pose_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6, gadget_id = 70211031, pos = { x = -147.1, y = 18.0, z = 41.5 }, rot = { x = 0.0, y = 0.2, z = 0.0 }, level = 1, chest_drop_id = 11010300, drop_count = 1, isOneoff = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST },
	{ config_id = 58, gadget_id = 70350003, pos = { x = -128.5, y = -12.6, z = 112.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 115, gadget_id = 70211001, pos = { x = -123.0, y = -0.6, z = 124.2 }, rot = { x = 0.0, y = 91.3, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 121, gadget_id = 70690001, pos = { x = -132.8, y = -12.5, z = 101.9 }, rot = { x = 15.2, y = 230.2, z = 0.0 }, level = 1 },
	{ config_id = 122, gadget_id = 70690001, pos = { x = -138.8, y = -14.2, z = 97.9 }, rot = { x = 327.1, y = 242.7, z = 0.0 }, level = 1 },
	{ config_id = 123, gadget_id = 70690001, pos = { x = -147.3, y = -8.9, z = 93.5 }, rot = { x = 319.6, y = 244.0, z = 0.0 }, level = 1 },
	{ config_id = 124, gadget_id = 70690001, pos = { x = -154.5, y = -4.2, z = 89.2 }, rot = { x = 310.1, y = 215.0, z = 0.0 }, level = 1 },
	{ config_id = 125, gadget_id = 70690001, pos = { x = -158.0, y = 3.7, z = 83.4 }, rot = { x = 295.0, y = 140.6, z = 0.0 }, level = 1 },
	{ config_id = 130, gadget_id = 70300014, pos = { x = -147.3, y = 18.0, z = 45.4 }, rot = { x = 0.0, y = 122.6, z = 0.0 }, level = 1 },
	{ config_id = 131, gadget_id = 70690001, pos = { x = -134.0, y = 26.0, z = 97.9 }, rot = { x = 13.3, y = 205.4, z = 0.0 }, level = 1 },
	{ config_id = 206, gadget_id = 70211002, pos = { x = -139.3, y = -12.5, z = 127.6 }, rot = { x = 0.0, y = 90.2, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 207, gadget_id = 70220013, pos = { x = -123.1, y = -12.5, z = 141.9 }, rot = { x = 359.9, y = 179.9, z = 1.1 }, level = 1 },
	{ config_id = 209, gadget_id = 70220013, pos = { x = -138.4, y = -12.5, z = 138.1 }, rot = { x = 0.0, y = 42.9, z = 0.0 }, level = 1 },
	{ config_id = 211, gadget_id = 70220013, pos = { x = -114.2, y = -12.5, z = 141.4 }, rot = { x = 0.0, y = 164.6, z = 0.0 }, level = 1 },
	{ config_id = 212, gadget_id = 70220014, pos = { x = -141.6, y = -12.5, z = 116.3 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 1 },
	{ config_id = 215, gadget_id = 70220013, pos = { x = -107.7, y = -12.6, z = 138.9 }, rot = { x = 0.0, y = 164.6, z = 0.0 }, level = 1 },
	{ config_id = 216, gadget_id = 70310001, pos = { x = -133.0, y = -12.5, z = 114.2 }, rot = { x = 0.0, y = 171.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 217, gadget_id = 70310001, pos = { x = -141.1, y = -12.6, z = 121.2 }, rot = { x = 0.0, y = 171.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 218, gadget_id = 70310001, pos = { x = -141.3, y = -12.5, z = 135.2 }, rot = { x = 0.0, y = 171.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 219, gadget_id = 70310001, pos = { x = -131.7, y = -12.5, z = 142.0 }, rot = { x = 0.0, y = 171.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 248, gadget_id = 70220005, pos = { x = -132.4, y = -12.5, z = 136.8 }, rot = { x = 0.0, y = 271.5, z = 0.0 }, level = 4 },
	{ config_id = 249, gadget_id = 70220016, pos = { x = -121.7, y = -12.0, z = 114.0 }, rot = { x = 17.4, y = 85.1, z = 267.8 }, level = 1 },
	{ config_id = 250, gadget_id = 70220016, pos = { x = -120.6, y = -12.0, z = 114.0 }, rot = { x = 17.4, y = 85.1, z = 267.8 }, level = 1 },
	{ config_id = 251, gadget_id = 70220016, pos = { x = -119.5, y = -11.9, z = 114.1 }, rot = { x = 17.4, y = 85.1, z = 267.8 }, level = 1 },
	{ config_id = 254, gadget_id = 70220005, pos = { x = -131.9, y = -12.5, z = 137.6 }, rot = { x = 0.0, y = 193.2, z = 0.0 }, level = 4 },
	{ config_id = 255, gadget_id = 70220016, pos = { x = -116.9, y = -12.0, z = 141.7 }, rot = { x = 2.9, y = 272.7, z = 266.9 }, level = 1 },
	{ config_id = 258, gadget_id = 70220014, pos = { x = -139.0, y = -12.5, z = 113.8 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 1 },
	{ config_id = 259, gadget_id = 70220014, pos = { x = -137.9, y = -12.5, z = 113.8 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 1 },
	{ config_id = 260, gadget_id = 70220016, pos = { x = -118.0, y = -12.0, z = 141.8 }, rot = { x = 2.9, y = 272.7, z = 266.9 }, level = 1 },
	{ config_id = 261, gadget_id = 70220016, pos = { x = -119.2, y = -12.0, z = 141.7 }, rot = { x = 2.9, y = 272.7, z = 266.9 }, level = 1 },
	{ config_id = 262, gadget_id = 70220013, pos = { x = -126.6, y = -12.5, z = 141.8 }, rot = { x = 359.9, y = 179.9, z = 1.1 }, level = 1 },
	{ config_id = 263, gadget_id = 70220014, pos = { x = -124.9, y = -12.5, z = 141.8 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 1 },
	{ config_id = 273, gadget_id = 70310001, pos = { x = -140.2, y = -12.5, z = 125.9 }, rot = { x = 0.0, y = 171.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 274, gadget_id = 70310001, pos = { x = -140.3, y = -12.5, z = 129.3 }, rot = { x = 0.0, y = 171.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 275, gadget_id = 70220013, pos = { x = -134.0, y = -12.5, z = 135.6 }, rot = { x = 0.0, y = 42.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 5, pos = { x = -100.9, y = -12.9, z = 126.1 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 5, pos = { x = -111.0, y = -12.5, z = 126.3 } }
}

-- 触发器
triggers = {
	{ name = "DUNGEON_SETTLE_2", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_2", action = "action_EVENT_DUNGEON_SETTLE_2" },
	{ name = "ANY_MONSTER_DIE_16", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16", action = "action_EVENT_ANY_MONSTER_DIE_16" },
	{ name = "ANY_GADGET_DIE_33", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_33", action = "action_EVENT_ANY_GADGET_DIE_33" },
	{ name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ name = "ANY_GADGET_DIE_50", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50", action = "action_EVENT_ANY_GADGET_DIE_50" }
}

-- 变量
variables = {
	{ name = "isoff", value = 0, no_refresh = true }
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
		monsters = { 4, 7, 20 },
		gadgets = { 58, 115, 130, 206, 207, 209, 211, 212, 215, 216, 217, 218, 219, 248, 249, 250, 251, 254, 255, 258, 259, 260, 261, 262, 263, 273, 274, 275 },
		regions = { 45, 46 },
		triggers = { "DUNGEON_SETTLE_2", "ANY_MONSTER_DIE_16", "ANY_GADGET_DIE_33", "ENTER_REGION_45", "ENTER_REGION_46", "ANY_GADGET_DIE_50" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_2(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_2(context, evt)
	-- 创生gadget 6
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 将configid为 58 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58, GadgetState.GearStart) then
			return -1
		end 
	
	-- 解锁目标206
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 206, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_33(context, evt)
	if 130 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_33(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {141} }) then
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
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
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
	
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 触发镜头注目，注目位置为坐标（-132，-11，137），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-132, y=-11, z=137}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 10010201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10010201) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50(context, evt)
	if 248 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50(context, evt)
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  return -1
	end
	
	return 0
end

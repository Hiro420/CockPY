--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 21010201, pos = { x = 547.6, y = -68.5, z = 202.9 }, rot = { x = 0.0, y = 357.8, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 43, monster_id = 21010201, pos = { x = 543.2, y = -68.4, z = 208.9 }, rot = { x = 0.0, y = 90.3, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 44, monster_id = 21010201, pos = { x = 543.3, y = -68.4, z = 203.7 }, rot = { x = 0.0, y = 78.7, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 180, gadget_id = 70350003, pos = { x = 538.4, y = -68.0, z = 206.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 187, gadget_id = 70211101, pos = { x = 576.7, y = -68.4, z = 189.3 }, rot = { x = 0.0, y = 359.9, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 367, gadget_id = 70900202, pos = { x = 390.0, y = -19.1, z = 173.5 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 368, gadget_id = 70900201, pos = { x = 517.3, y = -65.0, z = 219.0 }, rot = { x = 0.0, y = 180.4, z = 0.0 }, level = 1 },
	{ config_id = 370, gadget_id = 70900202, pos = { x = 488.8, y = -27.0, z = 269.6 }, rot = { x = 0.0, y = 118.1, z = 0.0 }, level = 1 },
	{ config_id = 374, gadget_id = 70900201, pos = { x = 537.5, y = -66.3, z = 206.6 }, rot = { x = 0.0, y = 292.6, z = 0.0 }, level = 1 },
	{ config_id = 375, gadget_id = 70220013, pos = { x = 571.5, y = -68.6, z = 199.5 }, rot = { x = 0.0, y = 42.8, z = 0.0 }, level = 1 },
	{ config_id = 376, gadget_id = 70220013, pos = { x = 572.9, y = -68.5, z = 200.8 }, rot = { x = 0.0, y = 61.2, z = 0.0 }, level = 1 },
	{ config_id = 377, gadget_id = 70220013, pos = { x = 568.7, y = -68.5, z = 187.2 }, rot = { x = 357.8, y = 61.2, z = 5.0 }, level = 1 },
	{ config_id = 378, gadget_id = 70220013, pos = { x = 580.6, y = -58.8, z = 200.2 }, rot = { x = 358.8, y = 50.3, z = 5.4 }, level = 1 },
	{ config_id = 379, gadget_id = 70220014, pos = { x = 582.3, y = -58.7, z = 200.1 }, rot = { x = 0.0, y = 347.2, z = 0.0 }, level = 1 },
	{ config_id = 380, gadget_id = 70220014, pos = { x = 569.5, y = -68.5, z = 228.2 }, rot = { x = 0.0, y = 347.2, z = 0.0 }, level = 1 },
	{ config_id = 381, gadget_id = 70220014, pos = { x = 568.4, y = -68.5, z = 228.3 }, rot = { x = 0.0, y = 102.2, z = 0.0 }, level = 1 },
	{ config_id = 382, gadget_id = 70220013, pos = { x = 560.9, y = -68.5, z = 227.6 }, rot = { x = 0.0, y = 354.6, z = 0.0 }, level = 1 },
	{ config_id = 383, gadget_id = 70900201, pos = { x = 517.5, y = -63.2, z = 250.0 }, rot = { x = 0.0, y = 292.6, z = 0.0 }, level = 1 },
	{ config_id = 384, gadget_id = 70900201, pos = { x = 500.3, y = -26.9, z = 266.2 }, rot = { x = 0.0, y = 292.6, z = 0.0 }, level = 1 },
	{ config_id = 385, gadget_id = 70900201, pos = { x = 440.3, y = -23.5, z = 246.4 }, rot = { x = 0.0, y = 1.7, z = 0.0 }, level = 1 },
	{ config_id = 387, gadget_id = 70900201, pos = { x = 440.4, y = -23.7, z = 198.7 }, rot = { x = 0.0, y = 1.7, z = 0.0 }, level = 1 },
	{ config_id = 388, gadget_id = 70900201, pos = { x = 419.6, y = -19.5, z = 173.5 }, rot = { x = 0.0, y = 89.2, z = 0.0 }, level = 1 },
	{ config_id = 400, gadget_id = 70900201, pos = { x = 422.6, y = -10.2, z = 173.7 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 26, shape = RegionShape.SPHERE, radius = 5, pos = { x = 583.1, y = -58.7, z = 207.0 } },
	{ config_id = 48, shape = RegionShape.SPHERE, radius = 5, pos = { x = 532.8, y = -67.8, z = 206.1 } },
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 5, pos = { x = 517.5, y = -66.4, z = 222.9 } },
	{ config_id = 50, shape = RegionShape.SPHERE, radius = 5, pos = { x = 517.1, y = -65.9, z = 253.0 } },
	{ config_id = 51, shape = RegionShape.SPHERE, radius = 6.3, pos = { x = 501.4, y = -25.9, z = 266.8 } },
	{ config_id = 52, shape = RegionShape.SPHERE, radius = 5, pos = { x = 478.6, y = -28.6, z = 265.8 } },
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 440.5, y = -25.5, z = 240.4 } },
	{ config_id = 55, shape = RegionShape.SPHERE, radius = 5, pos = { x = 440.3, y = -24.4, z = 220.4 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 5, pos = { x = 413.9, y = -21.4, z = 174.6 } },
	{ config_id = 58, shape = RegionShape.SPHERE, radius = 19, pos = { x = 555.1, y = -67.8, z = 204.6 } },
	{ config_id = 66, shape = RegionShape.CUBIC, size = { x = 10.9, y = 7.5, z = 3.8 }, pos = { x = 440.4, y = -25.5, z = 233.6 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_18", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18", action = "action_EVENT_ANY_MONSTER_DIE_18" },
	{ name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26", forbid_guest = false },
	{ name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49", forbid_guest = false },
	{ name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50", forbid_guest = false },
	{ name = "ENTER_REGION_51", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51", action = "action_EVENT_ENTER_REGION_51", forbid_guest = false },
	{ name = "ENTER_REGION_52", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52", action = "action_EVENT_ENTER_REGION_52", forbid_guest = false },
	{ name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false },
	{ name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55", forbid_guest = false },
	{ name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56", forbid_guest = false },
	{ name = "ENTER_REGION_58", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58", action = "action_EVENT_ENTER_REGION_58", forbid_guest = false },
	{ name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66", action = "action_EVENT_ENTER_REGION_66", forbid_guest = false }
}

-- 变量
variables = {
	{ name = "MonsterDie43", value = 0, no_refresh = false },
	{ name = "MonsterDie44", value = 0, no_refresh = false },
	{ name = "MonsterDie55", value = 0, no_refresh = false },
	{ name = "MonsterDie56", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { 39, 43, 44 },
		gadgets = { 180, 187, 375, 376, 377, 378, 379, 380, 381, 382 },
		regions = { 26, 48, 49, 50, 51, 52, 53, 55, 56, 58, 66 },
		triggers = { "ANY_MONSTER_DIE_18", "ENTER_REGION_26", "ENTER_REGION_48", "ENTER_REGION_49", "ENTER_REGION_50", "ENTER_REGION_51", "ENTER_REGION_52", "ENTER_REGION_53", "ENTER_REGION_55", "ENTER_REGION_56", "ENTER_REGION_58", "ENTER_REGION_66" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18(context, evt)
	-- 将configid为 180 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180, GadgetState.GearStart) then
			return -1
		end 
	
	-- 调用提示id为 1010004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1010004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26(context, evt)
	if evt.param1 ~= 26 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26(context, evt)
	-- 创生gadget 400
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 400 }) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（461，-11，174），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=461, y=-11, z=174}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1039005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1039005) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {374} }) then
			return -1
		end
	
	-- 创生gadget 368
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 368 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49(context, evt)
	if evt.param1 ~= 49 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {368} }) then
			return -1
		end
	
	-- 创生gadget 383
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 383 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_50(context, evt)
	if evt.param1 ~= 50 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {383} }) then
			return -1
		end
	
	-- 创生gadget 384
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 384 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_51(context, evt)
	if evt.param1 ~= 51 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {384} }) then
			return -1
		end
	
	-- 创生gadget 370
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 370 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52(context, evt)
	if evt.param1 ~= 52 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52(context, evt)
	-- 创生gadget 385
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 385 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53(context, evt)
	if evt.param1 ~= 53 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {385} }) then
			return -1
		end
	
	-- 创生gadget 387
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 387 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {387} }) then
			return -1
		end
	
	-- 创生gadget 388
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 388 }) then
		return -1
	end
	
	-- 调用提示id为 1010007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1010007) then
		return -1
	end
	
	return 0
end

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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {388} }) then
			return -1
		end
	
	-- 创生gadget 367
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 367 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_58(context, evt)
	if evt.param1 ~= 58 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {400} }) then
			return -1
		end
	
	-- 创生gadget 374
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 374 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66(context, evt)
	if evt.param1 ~= 66 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220008001") then
	  return -1
	end
	
	return 0
end

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
	{ config_id = 1, npc_id = 86, pos = { x = -5.7, y = 0.0, z = -9.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 74, gadget_id = 70211001, pos = { x = -5.3, y = 0.0, z = -78.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true },
	{ config_id = 75, gadget_id = 70211001, pos = { x = -5.3, y = 0.0, z = -76.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true },
	{ config_id = 76, gadget_id = 70211011, pos = { x = -5.3, y = 0.0, z = -74.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true },
	{ config_id = 77, gadget_id = 70350002, pos = { x = -4.9, y = -0.2, z = -83.9 }, rot = { x = 0.0, y = 177.7, z = 0.0 }, level = 1 },
	{ config_id = 126, gadget_id = 70211012, pos = { x = 1.3, y = 7.5, z = -119.3 }, rot = { x = 0.0, y = 269.4, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 127, gadget_id = 70211012, pos = { x = -2.7, y = 7.5, z = -123.0 }, rot = { x = 0.0, y = 359.2, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 128, gadget_id = 70211012, pos = { x = -9.1, y = 7.5, z = -122.7 }, rot = { x = 0.0, y = 359.9, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 129, gadget_id = 70211012, pos = { x = -11.6, y = 7.5, z = -118.4 }, rot = { x = 0.0, y = 93.5, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked }
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.CUBIC, size = { x = 2.5, y = 5.9, z = 10.4 }, pos = { x = 37.8, y = 1.5, z = -106.2 } },
	{ config_id = 6, shape = RegionShape.CUBIC, size = { x = 3.0, y = 9.4, z = 17.8 }, pos = { x = 13.8, y = 2.9, z = -75.2 } },
	{ config_id = 8, shape = RegionShape.CUBIC, size = { x = 2.7, y = 18.8, z = 8.7 }, pos = { x = 74.6, y = -0.5, z = -114.6 } },
	{ config_id = 9, shape = RegionShape.CUBIC, size = { x = 2.5, y = 15.4, z = 10.1 }, pos = { x = 142.0, y = -0.5, z = -115.0 } },
	{ config_id = 10, shape = RegionShape.CUBIC, size = { x = 2.5, y = 15.2, z = 8.1 }, pos = { x = 65.3, y = -0.5, z = -156.5 } },
	{ config_id = 11, shape = RegionShape.CUBIC, size = { x = 2.1, y = 13.4, z = 8.7 }, pos = { x = 37.8, y = -0.5, z = -154.9 } },
	{ config_id = 12, shape = RegionShape.CUBIC, size = { x = 9.1, y = 15.5, z = 2.3 }, pos = { x = 55.6, y = -0.5, z = -124.9 } },
	{ config_id = 13, shape = RegionShape.CUBIC, size = { x = 11.9, y = 17.3, z = 3.2 }, pos = { x = 11.8, y = -0.5, z = -192.9 } },
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 10.1, y = 24.1, z = 3.1 }, pos = { x = -20.2, y = -0.6, z = -234.3 } },
	{ config_id = 15, shape = RegionShape.CUBIC, size = { x = 17.5, y = 14.6, z = 2.8 }, pos = { x = -66.6, y = 5.4, z = -179.3 } },
	{ config_id = 16, shape = RegionShape.CUBIC, size = { x = 8.8, y = 12.3, z = 2.5 }, pos = { x = -46.0, y = 2.0, z = -120.2 } },
	{ config_id = 17, shape = RegionShape.CUBIC, size = { x = 3.9, y = 15.0, z = 13.1 }, pos = { x = -22.9, y = 0.0, z = -74.0 } },
	{ config_id = 18, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4.7, y = 0.0, z = -12.3 } },
	{ config_id = 50, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5.3, y = 0.0, z = -24.0 } }
}

-- 触发器
triggers = {
	{ name = "DUNGEON_BROADCAST_ONTIMER_2", event = EventType.EVENT_DUNGEON_BROADCAST_ONTIMER, source = "", condition = "condition_EVENT_DUNGEON_BROADCAST_ONTIMER_2", action = "action_EVENT_DUNGEON_BROADCAST_ONTIMER_2" },
	{ name = "DUNGEON_BROADCAST_ONTIMER_3", event = EventType.EVENT_DUNGEON_BROADCAST_ONTIMER, source = "", condition = "condition_EVENT_DUNGEON_BROADCAST_ONTIMER_3", action = "action_EVENT_DUNGEON_BROADCAST_ONTIMER_3" },
	{ name = "DUNGEON_BROADCAST_ONTIMER_4", event = EventType.EVENT_DUNGEON_BROADCAST_ONTIMER, source = "", condition = "condition_EVENT_DUNGEON_BROADCAST_ONTIMER_4", action = "action_EVENT_DUNGEON_BROADCAST_ONTIMER_4" },
	{ name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6", action = "action_EVENT_ENTER_REGION_6", trigger_count = 0, forbid_guest = false },
	{ name = "DUNGEON_BROADCAST_ONTIMER_7", event = EventType.EVENT_DUNGEON_BROADCAST_ONTIMER, source = "", condition = "condition_EVENT_DUNGEON_BROADCAST_ONTIMER_7", action = "action_EVENT_DUNGEON_BROADCAST_ONTIMER_7" },
	{ name = "ENTER_REGION_8", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8", action = "action_EVENT_ENTER_REGION_8", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_9", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9", action = "action_EVENT_ENTER_REGION_9", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_12", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12", action = "action_EVENT_ENTER_REGION_12", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_15", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15", action = "action_EVENT_ENTER_REGION_15", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_18", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18", action = "action_EVENT_ENTER_REGION_18", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50", forbid_guest = false },
	{ name = "DUNGEON_BROADCAST_ONTIMER_52", event = EventType.EVENT_DUNGEON_BROADCAST_ONTIMER, source = "", condition = "condition_EVENT_DUNGEON_BROADCAST_ONTIMER_52", action = "action_EVENT_DUNGEON_BROADCAST_ONTIMER_52" }
}

-- 变量
variables = {
	{ name = "grouplevel1", value = 0, no_refresh = false },
	{ name = "grouplevel3", value = 0, no_refresh = false },
	{ name = "grouplevel5", value = 0, no_refresh = false },
	{ name = "grouplevel7", value = 0, no_refresh = false },
	{ name = "grouplevel9", value = 0, no_refresh = false },
	{ name = "grouplevel12", value = 0, no_refresh = false },
	{ name = "grouplevel14", value = 0, no_refresh = false }
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
		gadgets = { 77, 126, 127, 128, 129 },
		regions = { 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 50 },
		triggers = { "DUNGEON_BROADCAST_ONTIMER_2", "DUNGEON_BROADCAST_ONTIMER_3", "DUNGEON_BROADCAST_ONTIMER_4", "ENTER_REGION_5", "ENTER_REGION_6", "DUNGEON_BROADCAST_ONTIMER_7", "ENTER_REGION_8", "ENTER_REGION_9", "ENTER_REGION_10", "ENTER_REGION_11", "ENTER_REGION_12", "ENTER_REGION_13", "ENTER_REGION_14", "ENTER_REGION_15", "ENTER_REGION_16", "ENTER_REGION_17", "ENTER_REGION_18", "ENTER_REGION_50", "DUNGEON_BROADCAST_ONTIMER_52" },
		npcs = { 1 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_BROADCAST_ONTIMER_2(context, evt)
	--判断当前场景死亡的怪物总数不少于25
	if ScriptLib.GetMonsterDieCount(context) < 25 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_BROADCAST_ONTIMER_2(context, evt)
	-- 创生gadget 74
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 74 }) then
		return -1
	end
	
	-- 调用提示id为 20010401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010401) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_BROADCAST_ONTIMER_3(context, evt)
	--判断当前场景死亡的怪物总数不少于50
	if ScriptLib.GetMonsterDieCount(context) < 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_BROADCAST_ONTIMER_3(context, evt)
	-- 创生gadget 75
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 75 }) then
		return -1
	end
	
	-- 调用提示id为 20010501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010501) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_BROADCAST_ONTIMER_4(context, evt)
	--判断当前场景死亡的怪物总数不少于75
	if ScriptLib.GetMonsterDieCount(context) < 75 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_BROADCAST_ONTIMER_4(context, evt)
	-- 创生gadget 76
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76 }) then
		return -1
	end
	
	-- 调用提示id为 20010601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010601) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 重新生成指定group，默认为独立随机
	-- 判断如果group1中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel1", 1)
	   c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) > 0 then
	c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001008 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001016 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6(context, evt)
	if evt.param1 ~= 6 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
	-- 重新生成指定group，默认为独立随机
	-- 判断如果group3中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	end
	-- 判断如果group3中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	
	end
	
	
	
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001016 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_BROADCAST_ONTIMER_7(context, evt)
	--判断当前场景死亡的怪物总数不少于75
	if ScriptLib.GetMonsterDieCount(context) < 75 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_BROADCAST_ONTIMER_7(context, evt)
		-- 重新生成指定group，指定suite
	
	local suite_id = math.random(1,3)
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001018, suite = suite_id }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8(context, evt)
	if evt.param1 ~= 8 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8(context, evt)
	-- 判断如果230001005中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001005) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel5", 1)
	   local c_grouplevel5 = ScriptLib.GetGroupVariableValue(context, "grouplevel5")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001005, refresh_level_revise = c_grouplevel5}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001005) > 0 then
	local c_grouplevel5 = ScriptLib.GetGroupVariableValue(context, "grouplevel5")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001005, refresh_level_revise = c_grouplevel5}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9(context, evt)
	if evt.param1 ~= 9 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9(context, evt)
	-- 判断如果230001003中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	
	end
	
	-- 判断如果230001009中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel9", 1)
	   local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) > 0 then
	local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
			return -1
		end
	
	end
	
	-- 判断如果230001003中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001011 }) then
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
	-- 判断如果230001003中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	
	end
	
	-- 判断如果230001009中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel9", 1)
	   local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) > 0 then
	local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12(context, evt)
	if evt.param1 ~= 12 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	
	end
	
	-- 判断如果230001009中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel9", 1)
	   local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) > 0 then
	local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001008 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13(context, evt)
	if evt.param1 ~= 13 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13(context, evt)
	-- 判断如果230001012中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel12", 1)
	   local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) > 0 then
	local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001013 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14(context, evt)
	if evt.param1 ~= 14 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	
	end
	
	-- 判断如果230001014中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel14", 1)
	   local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) > 0 then
	local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001013 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15(context, evt)
	if evt.param1 ~= 15 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
			return -1
		end
	
	end
	
	-- 判断如果230001012中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel12", 1)
	   local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) > 0 then
	local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001016 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 判断如果230001001中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel1", 1)
	   local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) > 0 then
	local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001011 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 判断如果230001014中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel14", 1)
	   local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) > 0 then
	local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18(context, evt)
	if evt.param1 ~= 18 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18(context, evt)
	-- 判断如果230001001中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel1", 1)
	   local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) > 0 then
	local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	
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
	-- 调用提示id为 20010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010101) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_BROADCAST_ONTIMER_52(context, evt)
	--判断当前场景死亡的怪物总数不少于100
	if ScriptLib.GetMonsterDieCount(context) < 100 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_BROADCAST_ONTIMER_52(context, evt)
	-- 将configid为 77 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77, GadgetState.GearStart) then
			return -1
		end 
	
	-- 解锁目标126
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 126, state = GadgetState.Default }) then
		return -1
	end
	
	-- 解锁目标127
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 127, state = GadgetState.Default }) then
		return -1
	end
	
	-- 解锁目标128
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 128, state = GadgetState.Default }) then
		return -1
	end
	
	-- 解锁目标129
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 129, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

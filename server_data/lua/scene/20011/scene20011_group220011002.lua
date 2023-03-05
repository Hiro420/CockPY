--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010401, pos = { x = 403.5, y = -23.9, z = 127.1 }, rot = { x = 0.0, y = 182.0, z = 0.0 }, level = 3, disableWander = true, pose_id = 402 },
	{ config_id = 2002, monster_id = 21010401, pos = { x = 408.9, y = -24.2, z = 125.2 }, rot = { x = 0.0, y = 206.8, z = 0.0 }, level = 3, disableWander = true, pose_id = 402 },
	{ config_id = 2003, monster_id = 21010401, pos = { x = 397.4, y = -24.1, z = 125.9 }, rot = { x = 0.0, y = 159.6, z = 0.0 }, level = 3, disableWander = true, pose_id = 402 },
	{ config_id = 2004, monster_id = 21010201, pos = { x = 400.3, y = -24.5, z = 130.9 }, rot = { x = 0.0, y = 181.9, z = 0.0 }, level = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2005, gadget_id = 70350002, pos = { x = 416.0, y = -24.2, z = 120.7 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2006, gadget_id = 70211002, pos = { x = 403.4, y = -24.2, z = 122.3 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 2007, gadget_id = 70220005, pos = { x = 399.8, y = -23.6, z = 140.6 }, rot = { x = 0.0, y = 212.0, z = 0.0 }, level = 1 },
	{ config_id = 2008, gadget_id = 70220014, pos = { x = 401.4, y = -23.7, z = 141.3 }, rot = { x = 0.0, y = 206.7, z = 0.0 }, level = 1 },
	{ config_id = 2009, gadget_id = 70220013, pos = { x = 404.1, y = -23.6, z = 141.2 }, rot = { x = 0.0, y = 199.7, z = 0.0 }, level = 1 },
	{ config_id = 2010, gadget_id = 70220013, pos = { x = 402.7, y = -23.7, z = 143.0 }, rot = { x = 0.0, y = 205.4, z = 0.0 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220013, pos = { x = 399.9, y = -23.6, z = 142.4 }, rot = { x = 0.0, y = 92.7, z = 0.0 }, level = 1 },
	{ config_id = 2012, gadget_id = 70310001, pos = { x = 414.0, y = -22.2, z = 126.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 2013, gadget_id = 70310001, pos = { x = 413.8, y = -22.2, z = 114.9 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, gadget_id = 70900202, pos = { x = 422.9, y = -22.8, z = 120.9 }, rot = { x = 0.0, y = 215.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 33, shape = RegionShape.CUBIC, size = { x = 5.0, y = 3.0, z = 10.0 }, pos = { x = 418.5, y = -24.1, z = 121.1 } },
	{ config_id = 62, shape = RegionShape.CUBIC, size = { x = 10.0, y = 3.0, z = 10.0 }, pos = { x = 418.1, y = -22.5, z = 71.3 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_9", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9", action = "action_EVENT_ANY_MONSTER_DIE_9" },
	{ name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" },
	{ name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33", action = "action_EVENT_ENTER_REGION_33", forbid_guest = false },
	{ name = "ENTER_REGION_62", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62", action = "action_EVENT_ENTER_REGION_62", forbid_guest = false }
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
		-- description = suite_1,
		monsters = { 2001, 2002, 2003, 2004 },
		gadgets = { 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013 },
		regions = { 33, 62 },
		triggers = { "ANY_MONSTER_DIE_9", "ANY_MONSTER_DIE_32", "ENTER_REGION_33", "ENTER_REGION_62" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 2013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创生gadget 2014
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2014 }) then
		return -1
	end
	
	-- 调用提示id为 1041042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041042) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（415，-19，121），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=415, y=-19, z=121}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 将configid为 2006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_33(context, evt)
	if evt.param1 ~= 33 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_33(context, evt)
	-- 调用提示id为 1041072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041072) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62(context, evt)
	if evt.param1 ~= 62 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62(context, evt)
	-- 触发镜头注目，注目位置为坐标（410，-22，63），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=410, y=-22, z=63}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1041093 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041093) then
		return -1
	end
	
	return 0
end

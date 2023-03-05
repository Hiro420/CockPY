--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3, monster_id = 21010301, pos = { x = 31.3, y = 51.0, z = 42.9 }, rot = { x = 0.0, y = 53.8, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 4, monster_id = 21010701, pos = { x = 31.9, y = 51.1, z = 42.0 }, rot = { x = 0.0, y = 49.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 45, monster_id = 20010801, pos = { x = 39.1, y = 42.0, z = 87.6 }, rot = { x = 0.0, y = 107.7, z = 0.0 }, level = 1 },
	{ config_id = 46, monster_id = 20010801, pos = { x = 39.9, y = 42.0, z = 90.6 }, rot = { x = 0.0, y = 107.7, z = 0.0 }, level = 1 },
	{ config_id = 47, monster_id = 20010801, pos = { x = 36.7, y = 42.0, z = 89.2 }, rot = { x = 0.0, y = 107.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1, gadget_id = 70211001, pos = { x = 33.4, y = 50.8, z = 41.5 }, rot = { x = 0.0, y = 43.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 51, gadget_id = 70211001, pos = { x = -6.9, y = 42.0, z = 121.4 }, rot = { x = 0.0, y = 87.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 52, gadget_id = 70211011, pos = { x = 45.7, y = 42.0, z = 80.4 }, rot = { x = 0.0, y = 359.7, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 2002, gadget_id = 70220014, pos = { x = 2.6, y = 53.0, z = 25.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220014, pos = { x = 3.1, y = 52.9, z = 26.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220014, pos = { x = -2.4, y = 53.0, z = 24.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220014, pos = { x = -2.7, y = 53.0, z = 25.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2006, gadget_id = 70220013, pos = { x = 4.7, y = 53.0, z = 26.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 19, shape = RegionShape.SPHERE, radius = 4, pos = { x = 45.7, y = 42.1, z = 80.8 } },
	{ config_id = 2001, shape = RegionShape.SPHERE, radius = 6.08, pos = { x = 28.9, y = 51.0, z = 39.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_19", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19", action = "action_EVENT_ENTER_REGION_19", forbid_guest = false },
	{ name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", forbid_guest = false }
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
		monsters = { 3, 4 },
		gadgets = { 1, 51, 52, 2002, 2003, 2004, 2005, 2006 },
		regions = { 19, 2001 },
		triggers = { "ENTER_REGION_19", "ENTER_REGION_2001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_19(context, evt)
	if evt.param1 ~= 19 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 45, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 46, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 调用提示id为 200220101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200220101) then
		return -1
	end
	
	return 0
end

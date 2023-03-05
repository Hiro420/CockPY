--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32, monster_id = 21010501, pos = { x = 104.1, y = 58.5, z = 129.1 }, rot = { x = 0.0, y = 273.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 33, monster_id = 21010501, pos = { x = 104.1, y = 58.5, z = 123.7 }, rot = { x = 0.0, y = 273.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 34, monster_id = 21010501, pos = { x = 109.3, y = 63.2, z = 126.9 }, rot = { x = 0.0, y = 273.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 35, monster_id = 20010301, pos = { x = 140.9, y = 59.1, z = 117.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 36, monster_id = 20010301, pos = { x = 140.9, y = 59.2, z = 125.6 }, rot = { x = 0.0, y = 248.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 37, monster_id = 20010301, pos = { x = 136.1, y = 59.1, z = 121.0 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 38, monster_id = 20010401, pos = { x = 139.1, y = 59.0, z = 121.6 }, rot = { x = 0.0, y = 281.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 39, monster_id = 21010901, pos = { x = 159.0, y = 65.8, z = 124.3 }, rot = { x = 0.0, y = 267.8, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 40, monster_id = 21010901, pos = { x = 159.0, y = 65.8, z = 123.0 }, rot = { x = 0.0, y = 270.6, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 41, monster_id = 21010901, pos = { x = 158.9, y = 65.8, z = 121.5 }, rot = { x = 0.0, y = 270.4, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 42, monster_id = 24010101, pos = { x = 190.9, y = 49.8, z = 190.7 }, rot = { x = 0.0, y = 175.2, z = 0.0 }, level = 1, affix = { 1008, 1011 }, isElite = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17, gadget_id = 70211011, pos = { x = 109.5, y = 63.0, z = 125.1 }, rot = { x = 0.0, y = 269.1, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 18, gadget_id = 70220004, pos = { x = 156.3, y = 61.2, z = 128.9 }, rot = { x = 0.0, y = 8.0, z = 0.0 }, level = 1 },
	{ config_id = 19, gadget_id = 70220004, pos = { x = 159.6, y = 61.2, z = 129.1 }, rot = { x = 0.0, y = 353.9, z = 0.0 }, level = 1 },
	{ config_id = 20, gadget_id = 70220004, pos = { x = 162.2, y = 61.2, z = 129.1 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 21, gadget_id = 70220004, pos = { x = 164.8, y = 61.2, z = 129.2 }, rot = { x = 0.0, y = 171.1, z = 0.0 }, level = 1 },
	{ config_id = 22, gadget_id = 70220004, pos = { x = 168.2, y = 61.2, z = 129.2 }, rot = { x = 0.0, y = 97.5, z = 0.0 }, level = 1 },
	{ config_id = 23, gadget_id = 70220004, pos = { x = 175.8, y = 59.0, z = 130.5 }, rot = { x = 0.0, y = 256.2, z = 0.0 }, level = 1 },
	{ config_id = 24, gadget_id = 70220004, pos = { x = 175.9, y = 59.0, z = 134.8 }, rot = { x = 0.0, y = 243.3, z = 0.0 }, level = 1 },
	{ config_id = 25, gadget_id = 70220004, pos = { x = 156.2, y = 61.2, z = 125.8 }, rot = { x = 0.0, y = 52.5, z = 0.0 }, level = 1 },
	{ config_id = 26, gadget_id = 70220004, pos = { x = 156.1, y = 61.2, z = 122.7 }, rot = { x = 0.0, y = 178.4, z = 0.0 }, level = 1 },
	{ config_id = 27, gadget_id = 70220004, pos = { x = 156.1, y = 61.2, z = 119.7 }, rot = { x = 0.0, y = 167.7, z = 0.0 }, level = 1 },
	{ config_id = 28, gadget_id = 70220004, pos = { x = 156.1, y = 61.2, z = 116.7 }, rot = { x = 0.0, y = 145.6, z = 0.0 }, level = 1 },
	{ config_id = 29, gadget_id = 70220004, pos = { x = 156.4, y = 61.2, z = 113.5 }, rot = { x = 0.0, y = 125.1, z = 0.0 }, level = 1 },
	{ config_id = 30, gadget_id = 70900201, pos = { x = 190.5, y = 45.7, z = 138.3 }, rot = { x = 0.0, y = 122.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12, shape = RegionShape.SPHERE, radius = 5, pos = { x = 190.4, y = 42.0, z = 132.1 } },
	{ config_id = 13, shape = RegionShape.SPHERE, radius = 12.3, pos = { x = 148.0, y = 59.0, z = 120.5 } },
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 120.0, y = 1.0, z = 44.6 }, pos = { x = 108.1, y = 56.5, z = 121.6 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" },
	{ name = "ENTER_REGION_12", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12", action = "action_EVENT_ENTER_REGION_12", forbid_guest = false },
	{ name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", forbid_guest = false },
	{ name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false }
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
	suite = 2,
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
		monsters = { 32, 33, 34, 39, 40, 41, 42 },
		gadgets = { 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 },
		regions = { 12, 13 },
		triggers = { "ANY_MONSTER_DIE_11", "ENTER_REGION_12", "ENTER_REGION_13" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 14 },
		triggers = { "ENTER_REGION_14" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	if 42 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 改变指定group组220022007中， configid为11的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220022007, 11, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创生gadget 30
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 30 }) then
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220022008, monsters = {}, gadgets = {30} }) then
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
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 35, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 37, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 38, delay_time = 0 }) then
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
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022008, suite = 1 }) then
			return -1
		end
	
	return 0
end

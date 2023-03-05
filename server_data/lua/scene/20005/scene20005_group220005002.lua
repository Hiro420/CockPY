--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 21010601, pos = { x = -56.3, y = 4.3, z = 0.6 }, rot = { x = 359.8, y = 89.6, z = 1.2 }, level = 1, pose_id = 9012 },
	{ config_id = 2003, monster_id = 21010601, pos = { x = -51.9, y = 4.3, z = -3.5 }, rot = { x = 359.8, y = 1.6, z = 1.2 }, level = 1, pose_id = 9012 },
	{ config_id = 2004, monster_id = 21010601, pos = { x = -51.8, y = 4.3, z = 4.1 }, rot = { x = 359.8, y = 179.6, z = 1.2 }, level = 1, pose_id = 9012 },
	{ config_id = 2005, monster_id = 21020101, pos = { x = -56.6, y = 4.3, z = 10.0 }, rot = { x = 0.0, y = 157.5, z = 0.0 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 2009, monster_id = 21010901, pos = { x = -69.7, y = 10.6, z = 11.2 }, rot = { x = 0.0, y = 131.9, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2017, monster_id = 20010801, pos = { x = -64.7, y = 4.6, z = 7.2 }, rot = { x = 0.0, y = 43.5, z = 0.0 }, level = 1 },
	{ config_id = 2022, monster_id = 20010801, pos = { x = -63.3, y = 4.5, z = 10.9 }, rot = { x = 0.0, y = 91.1, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70300099, pos = { x = -52.1, y = 4.3, z = 0.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2006, gadget_id = 70220013, pos = { x = -62.9, y = 4.3, z = 14.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2007, gadget_id = 70220013, pos = { x = -64.7, y = 4.3, z = 13.3 }, rot = { x = 0.0, y = 22.7, z = 0.0 }, level = 1 },
	{ config_id = 2008, gadget_id = 70350018, pos = { x = -68.2, y = 4.4, z = 11.6 }, rot = { x = 1.3, y = 230.6, z = 359.0 }, level = 1 },
	{ config_id = 2010, gadget_id = 70300097, pos = { x = -58.3, y = 4.3, z = 12.2 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220013, pos = { x = -59.4, y = 4.2, z = -12.9 }, rot = { x = 0.0, y = 358.4, z = 0.0 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220013, pos = { x = -60.1, y = 4.3, z = -10.6 }, rot = { x = 0.0, y = 17.0, z = 0.0 }, level = 1 },
	{ config_id = 2013, gadget_id = 70220014, pos = { x = -55.4, y = 4.3, z = 13.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220014, pos = { x = -52.1, y = 4.3, z = -4.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220014, pos = { x = -53.5, y = 4.3, z = -4.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220014, pos = { x = -52.9, y = 4.3, z = -5.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2018, gadget_id = 70900201, pos = { x = -72.7, y = 20.2, z = 10.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2020, gadget_id = 70211012, pos = { x = -58.3, y = 4.5, z = 12.4 }, rot = { x = 0.0, y = 136.5, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 2019, shape = RegionShape.SPHERE, radius = 5, pos = { x = -74.5, y = 22.3, z = 11.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_2019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2019", action = "action_EVENT_ENTER_REGION_2019", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_2021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2021", action = "action_EVENT_ANY_MONSTER_DIE_2021" }
}

-- 变量
variables = {
	{ name = "iskill", value = 0, no_refresh = true }
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
		monsters = { 2002, 2003, 2004, 2005, 2009, 2017, 2022 },
		gadgets = { 2001, 2006, 2007, 2008, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2020 },
		regions = { 2019 },
		triggers = { "ENTER_REGION_2019", "ANY_MONSTER_DIE_2021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2019(context, evt)
	if evt.param1 ~= 2019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2018 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2021(context, evt)
	-- 解锁目标2020
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2020, state = GadgetState.Default }) then
		return -1
	end
	
	-- 创建id为2018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2018 }) then
	  return -1
	end
	
	return 0
end

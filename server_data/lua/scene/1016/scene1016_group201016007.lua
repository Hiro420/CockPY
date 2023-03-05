--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010501, pos = { x = 258.3, y = 1.6, z = -14.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62, gadget_id = 70350004, pos = { x = 270.8, y = -1.9, z = -23.3 }, rot = { x = 0.0, y = 90.9, z = 0.0 }, level = 1 },
	{ config_id = 119, gadget_id = 70220005, pos = { x = 259.0, y = 1.3, z = -16.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 135, gadget_id = 70220005, pos = { x = 254.9, y = 1.3, z = -12.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 139, gadget_id = 70900201, pos = { x = 296.3, y = -0.7, z = -15.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 140, gadget_id = 70900202, pos = { x = 258.5, y = 3.2, z = -14.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 52, shape = RegionShape.CUBIC, size = { x = 10.0, y = 10.0, z = 20.0 }, pos = { x = 297.4, y = 1.4, z = -13.4 } },
	{ config_id = 78, shape = RegionShape.CUBIC, size = { x = 10.0, y = 10.0, z = 20.0 }, pos = { x = 335.5, y = 16.0, z = -13.4 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" },
	{ name = "ENTER_REGION_52", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52", action = "action_EVENT_ENTER_REGION_52", forbid_guest = false },
	{ name = "ENTER_REGION_78", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_78", action = "action_EVENT_ENTER_REGION_78", forbid_guest = false }
}

-- 变量
variables = {
	{ name = "Die", value = 0, no_refresh = false }
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
		monsters = { 16 },
		gadgets = { 62, 119, 135 },
		regions = { 52, 78 },
		triggers = { "ANY_MONSTER_DIE_51", "ENTER_REGION_52", "ENTER_REGION_78" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	if 16 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 将configid为 62 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016007, monsters = {}, gadgets = {140} }) then
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016007, monsters = {}, gadgets = {139} }) then
			return -1
		end
	
	-- 创建id为140的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_78(context, evt)
	if evt.param1 ~= 78 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_78(context, evt)
	-- 创建id为139的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139 }) then
	  return -1
	end
	
	return 0
end

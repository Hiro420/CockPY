--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 373001, monster_id = 20011501, pos = { x = 619.7, y = 218.1, z = 840.3 }, rot = { x = 7.2, y = 105.0, z = 353.7 }, level = 22, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 373003, gadget_id = 70211001, pos = { x = 617.7, y = 218.3, z = 840.3 }, rot = { x = 356.8, y = 259.8, z = 2.4 }, level = 20, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 373004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 620.0, y = 217.9, z = 840.9 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_373002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_373002", action = "action_EVENT_ANY_MONSTER_DIE_373002" },
	{ name = "ENTER_REGION_373004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_373004", action = "action_EVENT_ENTER_REGION_373004" }
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
		gadgets = { },
		regions = { 373004 },
		triggers = { "ANY_MONSTER_DIE_373002", "ENTER_REGION_373004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_373002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_373002(context, evt)
	-- 创建id为373003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 373003 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_373004(context, evt)
	if evt.param1 ~= 373004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_373004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 373001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 373002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 373003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

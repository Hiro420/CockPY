--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145, monster_id = 21010701, pos = { x = 590.8, y = 294.8, z = -237.6 }, rot = { x = 0.0, y = 78.1, z = 0.0 }, level = 25, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130, gadget_id = 70300089, pos = { x = 592.4, y = 294.6, z = -236.9 }, rot = { x = 0.0, y = 154.6, z = 0.0 }, level = 25 },
	{ config_id = 131, gadget_id = 70211001, pos = { x = 593.7, y = 295.0, z = -238.0 }, rot = { x = 355.2, y = 359.3, z = 16.8 }, level = 25, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 87, shape = RegionShape.CUBIC, size = { x = 6.2, y = 4.2, z = 16.4 }, pos = { x = 592.3, y = 294.6, z = -237.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_87", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_87", action = "action_EVENT_ENTER_REGION_87" },
	{ name = "ANY_GADGET_DIE_88", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_88", action = "action_EVENT_ANY_GADGET_DIE_88" }
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
		-- description = ,
		monsters = { },
		gadgets = { 130 },
		regions = { 87 },
		triggers = { "ENTER_REGION_87", "ANY_GADGET_DIE_88" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_87(context, evt)
	if evt.param1 ~= 87 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_87(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 145, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_88(context, evt)
	if 130 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_88(context, evt)
	-- 创建id为131的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 131 }) then
	  return -1
	end
	
	return 0
end

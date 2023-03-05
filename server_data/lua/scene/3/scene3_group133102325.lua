--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 325002, monster_id = 20011401, pos = { x = 1668.7, y = 208.2, z = 89.4 }, rot = { x = 0.0, y = 97.6, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 325003, monster_id = 20011401, pos = { x = 1658.0, y = 208.2, z = 92.7 }, rot = { x = 0.0, y = 111.7, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 325004, monster_id = 20011401, pos = { x = 1649.7, y = 208.2, z = 96.2 }, rot = { x = 0.0, y = 116.1, z = 0.0 }, level = 15, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 325005, gadget_id = 70211101, pos = { x = 1690.1, y = 204.6, z = 81.5 }, rot = { x = 0.0, y = 293.7, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 325001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1669.7, y = 204.5, z = 87.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_325001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_325001", action = "action_EVENT_ENTER_REGION_325001" }
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
		gadgets = { 325005 },
		regions = { 325001 },
		triggers = { "ENTER_REGION_325001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_325001(context, evt)
	if evt.param1 ~= 325001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_325001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325003, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325004, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

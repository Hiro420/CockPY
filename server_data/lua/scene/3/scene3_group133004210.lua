--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 593, monster_id = 20011401, pos = { x = 2366.8, y = 208.1, z = -465.5 }, rot = { x = 0.0, y = 28.7, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 594, monster_id = 20011401, pos = { x = 2369.0, y = 207.6, z = -466.3 }, rot = { x = 0.0, y = 31.5, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 595, monster_id = 20011401, pos = { x = 2367.2, y = 207.5, z = -462.8 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1332, gadget_id = 70690001, pos = { x = 2424.5, y = 204.7, z = -442.1 }, rot = { x = 0.0, y = 72.0, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
	{ config_id = 249, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2366.5, y = 204.9, z = -465.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_249", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_249", action = "action_EVENT_ENTER_REGION_249" }
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
		monsters = { },
		gadgets = { 1332 },
		regions = { 249 },
		triggers = { "ENTER_REGION_249" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_249(context, evt)
	if evt.param1 ~= 249 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_249(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 593, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 594, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 595, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 791, monster_id = 20010701, pos = { x = 1539.0, y = 333.7, z = -2079.6 }, rot = { x = 0.0, y = 307.3, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 792, monster_id = 20010501, pos = { x = 1546.2, y = 334.2, z = -2083.4 }, rot = { x = 0.0, y = 312.5, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 793, monster_id = 20010501, pos = { x = 1542.5, y = 333.1, z = -2069.5 }, rot = { x = 0.0, y = 237.9, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 794, monster_id = 20010501, pos = { x = 1534.6, y = 333.7, z = -2086.7 }, rot = { x = 0.0, y = 344.1, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2313, gadget_id = 70220009, pos = { x = 1487.1, y = 308.0, z = -1934.3 }, rot = { x = 0.0, y = 8.9, z = 0.0 }, level = 15 },
	{ config_id = 2314, gadget_id = 70220009, pos = { x = 1487.6, y = 308.0, z = -1933.8 }, rot = { x = 0.0, y = 177.5, z = 0.0 }, level = 15 },
	{ config_id = 2315, gadget_id = 70220009, pos = { x = 1487.7, y = 308.1, z = -1934.8 }, rot = { x = 0.0, y = 227.5, z = 0.0 }, level = 15 },
	{ config_id = 2316, gadget_id = 70220009, pos = { x = 1488.0, y = 308.0, z = -1934.3 }, rot = { x = 0.0, y = 110.1, z = 0.0 }, level = 15 },
	{ config_id = 2317, gadget_id = 70220009, pos = { x = 1480.5, y = 308.4, z = -1939.7 }, rot = { x = 0.0, y = 245.3, z = 0.0 }, level = 15 },
	{ config_id = 2318, gadget_id = 70220009, pos = { x = 1480.5, y = 308.3, z = -1939.3 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 15 },
	{ config_id = 2319, gadget_id = 70220009, pos = { x = 1481.0, y = 308.4, z = -1939.4 }, rot = { x = 0.0, y = 116.8, z = 0.0 }, level = 15 },
	{ config_id = 2320, gadget_id = 70220009, pos = { x = 1480.8, y = 308.3, z = -1939.1 }, rot = { x = 0.0, y = 321.6, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
	{ config_id = 178, shape = RegionShape.SPHERE, radius = 18.8, pos = { x = 1537.5, y = 332.8, z = -2077.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_178", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178", action = "action_EVENT_ENTER_REGION_178" }
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
		gadgets = { 2313, 2314, 2315, 2316, 2317, 2318, 2319, 2320 },
		regions = { 178 },
		triggers = { "ENTER_REGION_178" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_178(context, evt)
	if evt.param1 ~= 178 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_178(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 791, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 792, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 793, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 794, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

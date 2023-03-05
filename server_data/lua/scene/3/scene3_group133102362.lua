--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 20010901, pos = { x = 1333.9, y = 200.2, z = 133.1 }, rot = { x = 0.0, y = 41.1, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 362007, monster_id = 20010801, pos = { x = 1331.3, y = 200.0, z = 136.2 }, rot = { x = 0.0, y = 41.1, z = 0.0 }, level = 13, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 362008, monster_id = 20010801, pos = { x = 1337.2, y = 200.0, z = 135.8 }, rot = { x = 0.0, y = 300.4, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362002, gadget_id = 70220013, pos = { x = 1336.1, y = 199.1, z = 134.1 }, rot = { x = 323.4, y = 16.6, z = 333.4 }, level = 16 },
	{ config_id = 362003, gadget_id = 70220013, pos = { x = 1332.2, y = 198.9, z = 133.7 }, rot = { x = 25.0, y = 335.5, z = 17.7 }, level = 16 },
	{ config_id = 362004, gadget_id = 70220014, pos = { x = 1330.8, y = 199.2, z = 137.3 }, rot = { x = 32.7, y = 267.9, z = 330.1 }, level = 16 },
	{ config_id = 362005, gadget_id = 70220026, pos = { x = 1333.2, y = 199.2, z = 130.9 }, rot = { x = 13.1, y = 0.0, z = 8.5 }, level = 16 }
}

-- 区域
regions = {
	{ config_id = 362006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1333.5, y = 200.0, z = 133.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_362006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_362006", action = "action_EVENT_ENTER_REGION_362006" }
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
		gadgets = { 362002, 362003, 362004, 362005 },
		regions = { 362006 },
		triggers = { "ENTER_REGION_362006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_362006(context, evt)
	if evt.param1 ~= 362006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_362006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

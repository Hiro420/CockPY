--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291, monster_id = 28030101, pos = { x = 1752.6, y = 265.2, z = -692.6 }, rot = { x = 0.0, y = 48.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 292, monster_id = 28030101, pos = { x = 1761.9, y = 266.3, z = -685.2 }, rot = { x = 0.0, y = 48.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 293, monster_id = 28030101, pos = { x = 1750.8, y = 263.0, z = -686.3 }, rot = { x = 0.0, y = 48.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 294, monster_id = 28030101, pos = { x = 1759.1, y = 265.5, z = -691.5 }, rot = { x = 0.0, y = 25.2, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 130, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1767.5, y = 248.8, z = -688.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_130", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130", action = "action_EVENT_ENTER_REGION_130" }
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
		gadgets = { },
		regions = { 130 },
		triggers = { "ENTER_REGION_130" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_130(context, evt)
	if evt.param1 ~= 130 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_130(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 291, delay_time = 0.5 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 292, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 293, delay_time = 1.5 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 294, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

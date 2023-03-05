--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 511, monster_id = 20010801, pos = { x = 2524.6, y = 202.5, z = -464.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 512, monster_id = 20010801, pos = { x = 2521.8, y = 202.5, z = -463.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 513, monster_id = 20010801, pos = { x = 2524.0, y = 202.8, z = -462.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 211, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2522.7, y = 202.4, z = -465.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_211", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_211", action = "action_EVENT_ENTER_REGION_211" }
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
		regions = { 211 },
		triggers = { "ENTER_REGION_211" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_211(context, evt)
	if evt.param1 ~= 211 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_211(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 511, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 512, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 513, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

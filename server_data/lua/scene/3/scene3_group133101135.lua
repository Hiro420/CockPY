--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135001, monster_id = 20010501, pos = { x = 1100.2, y = 247.1, z = 1130.7 }, rot = { x = 0.0, y = 170.9, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 135002, monster_id = 20010501, pos = { x = 1101.7, y = 246.7, z = 1129.5 }, rot = { x = 0.0, y = 186.1, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 135003, monster_id = 20010501, pos = { x = 1098.7, y = 246.7, z = 1129.6 }, rot = { x = 0.0, y = 155.7, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 135004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1101.1, y = 245.9, z = 1127.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_135004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_135004", action = "action_EVENT_ENTER_REGION_135004" }
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
		gadgets = { },
		regions = { 135004 },
		triggers = { "ENTER_REGION_135004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_135004(context, evt)
	if evt.param1 ~= 135004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_135004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 135001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 135002, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 135003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

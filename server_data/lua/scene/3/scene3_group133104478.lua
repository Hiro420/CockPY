--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 478002, monster_id = 20011201, pos = { x = -83.6, y = 335.6, z = 742.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 478003, monster_id = 20011201, pos = { x = -86.0, y = 335.3, z = 742.3 }, rot = { x = 0.0, y = 62.2, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 478004, monster_id = 20011201, pos = { x = -84.3, y = 335.1, z = 739.3 }, rot = { x = 0.0, y = 238.6, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 478001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -84.5, y = 336.3, z = 740.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_478001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_478001", action = "action_EVENT_ENTER_REGION_478001" }
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
		regions = { 478001 },
		triggers = { "ENTER_REGION_478001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_478001(context, evt)
	if evt.param1 ~= 478001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_478001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 478002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 478003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 478004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

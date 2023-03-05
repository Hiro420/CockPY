--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 848, monster_id = 20010501, pos = { x = 1400.6, y = 258.2, z = -1686.5 }, rot = { x = 0.0, y = 70.4, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 849, monster_id = 20010501, pos = { x = 1401.0, y = 258.0, z = -1682.3 }, rot = { x = 0.0, y = 110.3, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 850, monster_id = 20010501, pos = { x = 1400.4, y = 258.1, z = -1684.4 }, rot = { x = 0.0, y = 86.6, z = 0.0 }, level = 13, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 222, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1402.1, y = 257.7, z = -1684.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_222", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_222", action = "action_EVENT_ENTER_REGION_222" }
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
		regions = { 222 },
		triggers = { "ENTER_REGION_222" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_222(context, evt)
	if evt.param1 ~= 222 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_222(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 848, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 849, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 850, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

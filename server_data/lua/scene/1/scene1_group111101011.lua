--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 20011201, pos = { x = 2568.6, y = 215.8, z = -1318.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 11002, monster_id = 20011201, pos = { x = 2570.1, y = 215.6, z = -1319.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 11003, monster_id = 20011201, pos = { x = 2567.1, y = 215.5, z = -1319.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 11004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2568.6, y = 215.6, z = -1319.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_11004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11004", action = "action_EVENT_ENTER_REGION_11004", forbid_guest = false }
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
		regions = { 11004 },
		triggers = { "ENTER_REGION_11004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11004(context, evt)
	if evt.param1 ~= 11004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

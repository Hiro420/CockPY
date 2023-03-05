--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 378001, monster_id = 20010601, pos = { x = 720.3, y = 222.9, z = 710.7 }, rot = { x = 4.1, y = 186.5, z = 356.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 378002, monster_id = 20010501, pos = { x = 719.0, y = 223.3, z = 712.2 }, rot = { x = 4.1, y = 186.5, z = 356.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 378003, monster_id = 20010501, pos = { x = 721.9, y = 223.3, z = 711.7 }, rot = { x = 4.1, y = 186.5, z = 356.0 }, level = 21, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 378004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 720.5, y = 223.3, z = 711.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_378004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378004", action = "action_EVENT_ENTER_REGION_378004" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 378004 },
		triggers = { "ENTER_REGION_378004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_378004(context, evt)
	if evt.param1 ~= 378004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378004(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 378001, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 378002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 378003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 637001, monster_id = 20010901, pos = { x = 1232.5, y = 201.5, z = 934.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 637002, monster_id = 20010901, pos = { x = 1239.0, y = 201.5, z = 934.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 637004, shape = RegionShape.SPHERE, radius = 6, pos = { x = 1235.0, y = 201.5, z = 933.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_637004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637004", action = "action_EVENT_ENTER_REGION_637004" }
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
		regions = { 637004 },
		triggers = { "ENTER_REGION_637004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_637004(context, evt)
	if evt.param1 ~= 637004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 637001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 637002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 560001, monster_id = 20011501, pos = { x = 678.2, y = 244.7, z = 941.0 }, rot = { x = 0.0, y = 109.8, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 560002, monster_id = 20011401, pos = { x = 681.0, y = 244.0, z = 942.2 }, rot = { x = 0.0, y = 109.3, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 560003, monster_id = 20011201, pos = { x = 679.8, y = 245.0, z = 938.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 560004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 678.2, y = 244.7, z = 939.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_560004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_560004", action = "action_EVENT_ENTER_REGION_560004" }
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
		regions = { 560004 },
		triggers = { "ENTER_REGION_560004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_560004(context, evt)
	if evt.param1 ~= 560004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_560004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 560001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 560002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 560003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

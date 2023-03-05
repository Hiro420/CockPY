--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 568001, monster_id = 20011201, pos = { x = 681.9, y = 203.7, z = 269.7 }, rot = { x = 0.0, y = 56.9, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 568002, monster_id = 20011201, pos = { x = 682.9, y = 203.8, z = 267.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 568003, monster_id = 20011201, pos = { x = 679.5, y = 203.5, z = 268.4 }, rot = { x = 0.0, y = 50.4, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 568004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 681.9, y = 203.5, z = 268.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_568004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_568004", action = "action_EVENT_ENTER_REGION_568004" }
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
		regions = { 568004 },
		triggers = { "ENTER_REGION_568004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_568004(context, evt)
	if evt.param1 ~= 568004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_568004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 568001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 568002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 568003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

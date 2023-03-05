--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 336, monster_id = 20011201, pos = { x = 100.2, y = 256.6, z = 185.6 }, rot = { x = 0.0, y = 62.5, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 337, monster_id = 20011201, pos = { x = 100.4, y = 256.6, z = 182.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 338, monster_id = 20011201, pos = { x = 104.4, y = 256.2, z = 185.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 339, monster_id = 20011201, pos = { x = 103.0, y = 256.6, z = 181.0 }, rot = { x = 0.0, y = 79.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 214, shape = RegionShape.SPHERE, radius = 10, pos = { x = 102.6, y = 256.5, z = 184.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_214", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_214", action = "action_EVENT_ENTER_REGION_214" }
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
		regions = { 214 },
		triggers = { "ENTER_REGION_214" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_214(context, evt)
	if evt.param1 ~= 214 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 336, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 337, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 338, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 339, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

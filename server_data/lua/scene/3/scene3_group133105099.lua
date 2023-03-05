--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 183, monster_id = 20011001, pos = { x = 711.6, y = 216.8, z = -235.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 184, monster_id = 20011001, pos = { x = 712.4, y = 216.8, z = -231.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 185, monster_id = 20011101, pos = { x = 710.8, y = 216.8, z = -233.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 99001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 711.6, y = 215.9, z = -233.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_99001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_99001", action = "action_EVENT_ENTER_REGION_99001" }
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
		regions = { 99001 },
		triggers = { "ENTER_REGION_99001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_99001(context, evt)
	if evt.param1 ~= 99001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_99001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 183, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 184, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 185, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

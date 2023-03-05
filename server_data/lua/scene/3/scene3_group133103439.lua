--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 439001, monster_id = 20011201, pos = { x = 191.2, y = 216.2, z = 1131.3 }, rot = { x = 0.0, y = 146.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 439002, monster_id = 20011301, pos = { x = 194.5, y = 216.5, z = 1128.1 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 439003, monster_id = 20011201, pos = { x = 189.8, y = 216.1, z = 1127.3 }, rot = { x = 0.0, y = 56.4, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 439004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 191.6, y = 216.4, z = 1128.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_439004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_439004", action = "action_EVENT_ENTER_REGION_439004" }
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
		regions = { 439004 },
		triggers = { "ENTER_REGION_439004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_439004(context, evt)
	if evt.param1 ~= 439004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_439004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 439001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 439002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 439003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

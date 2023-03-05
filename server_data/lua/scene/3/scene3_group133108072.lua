--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 20010801, pos = { x = -376.8, y = 200.0, z = -632.1 }, rot = { x = 0.0, y = 171.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 72002, monster_id = 20010801, pos = { x = -375.3, y = 200.0, z = -633.3 }, rot = { x = 0.0, y = 195.7, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 72003, monster_id = 20010801, pos = { x = -378.3, y = 200.0, z = -633.2 }, rot = { x = 0.0, y = 185.8, z = 0.0 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 72004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -376.8, y = 200.0, z = -633.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_72004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72004", action = "action_EVENT_ENTER_REGION_72004" }
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
		regions = { 72004 },
		triggers = { "ENTER_REGION_72004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_72004(context, evt)
	if evt.param1 ~= 72004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

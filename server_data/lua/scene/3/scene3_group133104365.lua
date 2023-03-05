--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 365002, monster_id = 20010801, pos = { x = 531.5, y = 200.0, z = 796.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 365003, monster_id = 20010801, pos = { x = 525.6, y = 200.0, z = 796.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 365004, monster_id = 20010801, pos = { x = 526.4, y = 200.0, z = 791.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 365001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 528.4, y = 200.0, z = 795.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_365001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_365001", action = "action_EVENT_ENTER_REGION_365001" }
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
		regions = { 365001 },
		triggers = { "ENTER_REGION_365001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_365001(context, evt)
	if evt.param1 ~= 365001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_365001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

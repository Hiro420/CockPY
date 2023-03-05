--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1433, monster_id = 28020102, pos = { x = 2593.3, y = 226.4, z = -1573.2 }, rot = { x = 0.0, y = 45.6, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 507, shape = RegionShape.SPHERE, radius = 16.7, pos = { x = 2602.8, y = 223.0, z = -1591.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_507", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_507", action = "action_EVENT_ENTER_REGION_507" }
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
	rand_suite = true
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
		regions = { 507 },
		triggers = { "ENTER_REGION_507" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_507(context, evt)
	if evt.param1 ~= 507 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_507(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1433, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

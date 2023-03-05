--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 650001, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1560.4, y = 237.2, z = 471.9 } },
	{ config_id = 650002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1716.7, y = 307.5, z = 389.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_650001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_650001", action = "action_EVENT_ENTER_REGION_650001" },
	{ name = "ENTER_REGION_650002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_650002", action = "action_EVENT_ENTER_REGION_650002" }
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
		regions = { 650001, 650002 },
		triggers = { "ENTER_REGION_650001", "ENTER_REGION_650002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_650001(context, evt)
	if evt.param1 ~= 650001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_650001(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2012, 1)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_650002(context, evt)
	if evt.param1 ~= 650002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_650002(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2012, 1)
	return 0
end

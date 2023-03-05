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
	{ config_id = 277, shape = RegionShape.SPHERE, radius = 4.3, pos = { x = 1678.9, y = 263.6, z = -889.9 } },
	{ config_id = 278, shape = RegionShape.SPHERE, radius = 4.3, pos = { x = 1735.2, y = 241.1, z = -942.9 } },
	{ config_id = 279, shape = RegionShape.SPHERE, radius = 6.3, pos = { x = 1559.0, y = 201.3, z = -308.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_277", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277", action = "", tlog_tag = "酒庄_228_隐秘地城_进入" },
	{ name = "ENTER_REGION_278", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278", action = "", tlog_tag = "酒庄_228_泉水左侧山洞_进入" },
	{ name = "ENTER_REGION_279", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_279", action = "", tlog_tag = "酒庄_228_湖中密地_进入" }
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
		regions = { 277, 278, 279 },
		triggers = { "ENTER_REGION_277", "ENTER_REGION_278", "ENTER_REGION_279" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_277(context, evt)
	if evt.param1 ~= 277 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_278(context, evt)
	if evt.param1 ~= 278 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_279(context, evt)
	if evt.param1 ~= 279 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

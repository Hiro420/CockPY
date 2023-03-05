--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1104, monster_id = 20011201, pos = { x = 2070.4, y = 224.3, z = -1585.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, drop_tag = "史莱姆" },
	{ config_id = 1105, monster_id = 20011201, pos = { x = 2065.5, y = 224.1, z = -1586.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 284, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2068.5, y = 224.2, z = -1585.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_284", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284", action = "action_EVENT_ENTER_REGION_284" }
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
		regions = { 284 },
		triggers = { "ENTER_REGION_284" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_284(context, evt)
	if evt.param1 ~= 284 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1104, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1105, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291001, monster_id = 25010201, pos = { x = 782.3, y = 212.6, z = 1223.4 }, rot = { x = 0.0, y = 187.5, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 291002, monster_id = 25010201, pos = { x = 780.9, y = 212.2, z = 1224.8 }, rot = { x = 0.0, y = 187.5, z = 0.0 }, level = 24, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 291004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 782.1, y = 212.6, z = 1221.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_291004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_291004", action = "action_EVENT_ENTER_REGION_291004" }
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
		regions = { 291004 },
		triggers = { "ENTER_REGION_291004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_291004(context, evt)
	if evt.param1 ~= 291004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_291004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 291001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 291002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 291003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

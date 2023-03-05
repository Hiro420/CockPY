--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83001, monster_id = 25030201, pos = { x = -185.5, y = 220.8, z = -124.9 }, rot = { x = 0.0, y = 130.3, z = 0.0 }, level = 25, drop_tag = "盗宝团" },
	{ config_id = 83002, monster_id = 25040201, pos = { x = -185.2, y = 219.8, z = -129.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "盗宝团" },
	{ config_id = 83003, monster_id = 20010401, pos = { x = -178.6, y = 248.6, z = -111.2 }, rot = { x = 0.0, y = 286.5, z = 0.0 }, level = 22, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 83004, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -178.7, y = 248.6, z = -111.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_83004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_83004", action = "action_EVENT_ENTER_REGION_83004" }
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
		monsters = { 83001, 83002 },
		gadgets = { },
		regions = { 83004 },
		triggers = { "ENTER_REGION_83004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_83004(context, evt)
	if evt.param1 ~= 83004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_83004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 83003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

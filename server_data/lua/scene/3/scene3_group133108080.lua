--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80002, monster_id = 25010201, pos = { x = -122.9, y = 200.7, z = -171.9 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 22, drop_tag = "盗宝团" },
	{ config_id = 80003, monster_id = 25020201, pos = { x = -126.3, y = 200.6, z = -176.7 }, rot = { x = 0.0, y = 62.0, z = 0.0 }, level = 22, drop_tag = "盗宝团" },
	{ config_id = 80004, monster_id = 25020201, pos = { x = -127.3, y = 201.2, z = -172.0 }, rot = { x = 0.0, y = 78.7, z = 0.0 }, level = 22, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 80001, shape = RegionShape.SPHERE, radius = 9.1, pos = { x = -123.0, y = 200.6, z = -171.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_80001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80001", action = "action_EVENT_ENTER_REGION_80001" }
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
		regions = { 80001 },
		triggers = { "ENTER_REGION_80001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_80001(context, evt)
	if evt.param1 ~= 80001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80003, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80004, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

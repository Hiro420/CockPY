--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 339, monster_id = 20010501, pos = { x = 2034.7, y = 207.6, z = -983.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 340, monster_id = 20010501, pos = { x = 2040.9, y = 207.1, z = -987.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 341, monster_id = 20010501, pos = { x = 2043.5, y = 206.8, z = -979.9 }, rot = { x = 0.0, y = 47.2, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 342, monster_id = 20010801, pos = { x = 2035.9, y = 206.7, z = -978.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 343, monster_id = 20010801, pos = { x = 2039.5, y = 206.4, z = -976.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 145, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2037.8, y = 207.0, z = -984.6 } },
	{ config_id = 146, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2037.4, y = 206.4, z = -970.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_145", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_145", action = "action_EVENT_ENTER_REGION_145" },
	{ name = "ENTER_REGION_146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_146", action = "action_EVENT_ENTER_REGION_146" }
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
		monsters = { 340, 341 },
		gadgets = { },
		regions = { 145 },
		triggers = { "ENTER_REGION_145" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 146 },
		triggers = { "ENTER_REGION_146" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_145(context, evt)
	if evt.param1 ~= 145 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_145(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 339, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 340, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146(context, evt)
	if evt.param1 ~= 146 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 342, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 343, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

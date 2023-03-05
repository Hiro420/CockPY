--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54, monster_id = 21010201, pos = { x = -31.0, y = 1.3, z = 79.4 }, rot = { x = 0.0, y = 76.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 55, monster_id = 21010201, pos = { x = -25.2, y = 1.3, z = 72.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 56, monster_id = 21010301, pos = { x = -22.3, y = 1.3, z = 81.9 }, rot = { x = 0.0, y = 166.2, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 57, monster_id = 21010401, pos = { x = -8.0, y = 7.0, z = 77.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 58, monster_id = 21010401, pos = { x = -20.5, y = 7.0, z = 102.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 59, monster_id = 21010401, pos = { x = -19.2, y = 7.0, z = 54.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73, gadget_id = 70220005, pos = { x = -38.7, y = 7.2, z = 207.0 }, rot = { x = 0.0, y = 116.0, z = 0.0 }, level = 1 },
	{ config_id = 74, gadget_id = 70220005, pos = { x = -42.0, y = 7.2, z = 213.5 }, rot = { x = 0.0, y = 337.0, z = 0.0 }, level = 1 },
	{ config_id = 75, gadget_id = 70220005, pos = { x = -33.7, y = 7.2, z = 212.9 }, rot = { x = 0.0, y = 132.6, z = 0.0 }, level = 1 },
	{ config_id = 83, gadget_id = 70220005, pos = { x = -39.1, y = 7.2, z = 210.0 }, rot = { x = 0.0, y = 51.0, z = 0.0 }, level = 1 },
	{ config_id = 84, gadget_id = 70220005, pos = { x = -35.7, y = 7.2, z = 211.9 }, rot = { x = 0.0, y = 353.6, z = 0.0 }, level = 1 },
	{ config_id = 85, gadget_id = 70220005, pos = { x = -35.2, y = 7.2, z = 209.8 }, rot = { x = 0.0, y = 237.5, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 10.2, pos = { x = 19.3, y = 0.5, z = 51.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49", forbid_guest = false }
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
	rand_suite = true,
	npcs = { }
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 73, 74, 75, 83, 84, 85 },
		regions = { 49 },
		triggers = { "ENTER_REGION_49" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 54, 55, 56, 57, 58, 59 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_49(context, evt)
	if evt.param1 ~= 49 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 55, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 56, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 57, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 59, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

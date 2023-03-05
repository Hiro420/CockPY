--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 123001, monster_id = 20010801, pos = { x = 384.1, y = 221.4, z = 732.1 }, rot = { x = 0.0, y = 57.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 123002, monster_id = 20010801, pos = { x = 380.6, y = 221.4, z = 738.7 }, rot = { x = 0.0, y = 276.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 123003, monster_id = 20010801, pos = { x = 386.3, y = 221.4, z = 736.0 }, rot = { x = 0.0, y = 267.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 123004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 383.6, y = 221.4, z = 734.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_123004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_123004", action = "action_EVENT_ENTER_REGION_123004" }
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
	end_suite = 3,
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
		regions = { 123004 },
		triggers = { "ENTER_REGION_123004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_123004(context, evt)
	if evt.param1 ~= 123004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 123001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 123002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 123003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

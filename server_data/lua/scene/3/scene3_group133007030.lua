--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60, monster_id = 20011001, pos = { x = 2598.7, y = 205.7, z = 20.3 }, rot = { x = 0.0, y = 252.3, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 61, monster_id = 20011001, pos = { x = 2598.1, y = 205.7, z = 23.2 }, rot = { x = 0.0, y = 297.4, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 39, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2598.2, y = 205.7, z = 22.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_39", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39", action = "action_EVENT_ENTER_REGION_39", tlog_tag = "风龙_30_伏击_触发" }
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
		regions = { 39 },
		triggers = { "ENTER_REGION_39" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_39(context, evt)
	if evt.param1 ~= 39 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 60, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 61, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

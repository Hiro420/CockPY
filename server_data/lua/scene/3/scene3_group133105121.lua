--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203, monster_id = 20010501, pos = { x = 542.3, y = 200.2, z = -93.3 }, rot = { x = 0.0, y = 35.3, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 204, monster_id = 20010501, pos = { x = 538.5, y = 200.2, z = -92.9 }, rot = { x = 0.0, y = 347.9, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 205, monster_id = 20010601, pos = { x = 540.5, y = 200.2, z = -93.1 }, rot = { x = 0.0, y = 297.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 285, gadget_id = 70290010, pos = { x = 546.7, y = 200.2, z = -92.1 }, rot = { x = 9.7, y = 301.0, z = 0.0 }, level = 19 },
	{ config_id = 286, gadget_id = 70500000, pos = { x = 546.7, y = 200.2, z = -92.1 }, rot = { x = 9.7, y = 301.0, z = 0.0 }, level = 19, point_type = 3006, owner = 285 },
	{ config_id = 287, gadget_id = 70290010, pos = { x = 534.4, y = 201.4, z = -94.1 }, rot = { x = 351.8, y = 2.8, z = 331.2 }, level = 19 },
	{ config_id = 288, gadget_id = 70500000, pos = { x = 534.4, y = 201.4, z = -94.1 }, rot = { x = 351.8, y = 2.8, z = 331.2 }, level = 19, point_type = 3006, owner = 287 }
}

-- 区域
regions = {
	{ config_id = 162, shape = RegionShape.SPHERE, radius = 5, pos = { x = 540.5, y = 200.2, z = -93.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_162", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162", action = "action_EVENT_ENTER_REGION_162" }
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
		gadgets = { 285, 286, 287, 288 },
		regions = { 162 },
		triggers = { "ENTER_REGION_162" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_162(context, evt)
	if evt.param1 ~= 162 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_162(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

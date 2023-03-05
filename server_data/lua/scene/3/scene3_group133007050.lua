--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87, monster_id = 20011501, pos = { x = 2970.5, y = 227.9, z = 346.3 }, rot = { x = 0.0, y = 42.7, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 88, monster_id = 20011401, pos = { x = 2969.2, y = 227.5, z = 350.4 }, rot = { x = 0.0, y = 147.2, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 426, monster_id = 20011401, pos = { x = 2975.3, y = 227.5, z = 345.1 }, rot = { x = 0.0, y = 287.2, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1040, gadget_id = 70220021, pos = { x = 2974.4, y = 227.5, z = 351.6 }, rot = { x = 0.0, y = 34.2, z = 0.0 }, level = 23, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 25, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2971.6, y = 227.5, z = 348.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", tlog_tag = "风龙_50_伏击_触发" }
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
		gadgets = { 1040 },
		regions = { 25 },
		triggers = { "ENTER_REGION_25" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_25(context, evt)
	if evt.param1 ~= 25 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 87, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 88, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109, monster_id = 20011401, pos = { x = 1663.9, y = 277.9, z = -1520.3 }, rot = { x = 0.0, y = 299.7, z = 0.0 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true },
	{ config_id = 110, monster_id = 20011401, pos = { x = 1668.5, y = 277.4, z = -1512.4 }, rot = { x = 0.0, y = 272.2, z = 0.0 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true },
	{ config_id = 111, monster_id = 20011401, pos = { x = 1662.2, y = 276.6, z = -1506.2 }, rot = { x = 0.0, y = 274.4, z = 0.0 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true },
	{ config_id = 112, monster_id = 20011401, pos = { x = 1652.2, y = 277.0, z = -1507.4 }, rot = { x = 0.0, y = 287.0, z = 0.0 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true },
	{ config_id = 113, monster_id = 20011401, pos = { x = 1654.3, y = 277.3, z = -1518.0 }, rot = { x = 0.0, y = 308.0, z = 0.0 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1641.5, y = 276.7, z = -1504.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 5 },
		triggers = { "ENTER_REGION_5" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 109, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 111, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 112, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 113, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

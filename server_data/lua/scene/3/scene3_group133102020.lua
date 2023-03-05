--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 20011001, pos = { x = 1292.3, y = 200.0, z = 485.2 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 23, monster_id = 20011001, pos = { x = 1294.3, y = 200.0, z = 495.2 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 24, monster_id = 20011001, pos = { x = 1289.0, y = 200.0, z = 489.9 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 103, gadget_id = 70211101, pos = { x = 1293.7, y = 200.1, z = 491.9 }, rot = { x = 0.0, y = 154.4, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 480, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1292.5, y = 199.4, z = 490.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_480", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_480", action = "action_EVENT_ENTER_REGION_480" }
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
		gadgets = { 103 },
		regions = { 480 },
		triggers = { "ENTER_REGION_480" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_480(context, evt)
	if evt.param1 ~= 480 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_480(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 24, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

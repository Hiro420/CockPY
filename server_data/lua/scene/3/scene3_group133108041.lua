--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 21020101, pos = { x = -178.7, y = 200.0, z = -976.2 }, rot = { x = 0.0, y = 14.8, z = 0.0 }, level = 32, drop_tag = "丘丘暴徒" },
	{ config_id = 41002, monster_id = 21010901, pos = { x = -177.7, y = 200.0, z = -979.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "远程丘丘人" },
	{ config_id = 41003, monster_id = 21011001, pos = { x = -181.3, y = 200.1, z = -978.3 }, rot = { x = 0.0, y = 22.8, z = 0.0 }, level = 32, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41005, gadget_id = 70310009, pos = { x = -154.7, y = 200.4, z = -918.7 }, rot = { x = 358.9, y = 50.0, z = 5.6 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 41004, shape = RegionShape.SPHERE, radius = 7.2, pos = { x = -165.4, y = 200.3, z = -946.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_41004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41004", action = "action_EVENT_ENTER_REGION_41004" }
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
		gadgets = { 41005 },
		regions = { 41004 },
		triggers = { "ENTER_REGION_41004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_41004(context, evt)
	if evt.param1 ~= 41004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

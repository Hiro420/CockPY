--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 381001, monster_id = 20011001, pos = { x = 773.5, y = 200.4, z = 530.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 381002, monster_id = 20011001, pos = { x = 775.0, y = 200.5, z = 529.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 381003, monster_id = 20011001, pos = { x = 772.0, y = 200.3, z = 529.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 381004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 773.5, y = 200.4, z = 529.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_381004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_381004", action = "action_EVENT_ENTER_REGION_381004" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 381004 },
		triggers = { "ENTER_REGION_381004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_381004(context, evt)
	if evt.param1 ~= 381004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_381004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

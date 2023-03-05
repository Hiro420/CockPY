--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 227, monster_id = 21010201, pos = { x = 1886.4, y = 233.6, z = -320.0 }, rot = { x = 0.0, y = 81.1, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 228, monster_id = 21010201, pos = { x = 1897.9, y = 237.6, z = -333.9 }, rot = { x = 0.0, y = 1.8, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 229, monster_id = 21010201, pos = { x = 1912.6, y = 235.0, z = -311.1 }, rot = { x = 0.0, y = 247.9, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 230, monster_id = 21010201, pos = { x = 1889.7, y = 233.5, z = -306.0 }, rot = { x = 0.0, y = 126.8, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 111, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1900.2, y = 234.6, z = -316.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_111", action = "action_EVENT_ENTER_REGION_111" }
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
		regions = { 111 },
		triggers = { "ENTER_REGION_111" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_111(context, evt)
	if evt.param1 ~= 111 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_111(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 227, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 228, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 229, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

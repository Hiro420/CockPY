--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 642001, monster_id = 20011201, pos = { x = 1101.9, y = 204.9, z = 814.6 }, rot = { x = 0.0, y = 233.8, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 642002, monster_id = 20011201, pos = { x = 1103.4, y = 204.8, z = 813.3 }, rot = { x = 3.8, y = 268.2, z = 6.1 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 642003, monster_id = 20011201, pos = { x = 1100.4, y = 204.6, z = 813.4 }, rot = { x = 9.7, y = 239.9, z = 2.6 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 642004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1101.9, y = 204.7, z = 813.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_642004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_642004", action = "action_EVENT_ENTER_REGION_642004" }
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
		gadgets = { },
		regions = { 642004 },
		triggers = { "ENTER_REGION_642004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_642004(context, evt)
	if evt.param1 ~= 642004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_642004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

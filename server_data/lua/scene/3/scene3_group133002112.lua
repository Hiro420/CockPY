--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 274, monster_id = 28030101, pos = { x = 1995.5, y = 268.5, z = -543.8 }, rot = { x = 0.0, y = 85.4, z = 0.0 }, level = 10, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 275, monster_id = 28030101, pos = { x = 1998.0, y = 268.3, z = -543.8 }, rot = { x = 0.0, y = 299.9, z = 0.0 }, level = 10, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 276, monster_id = 28030101, pos = { x = 1995.9, y = 268.4, z = -547.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 277, monster_id = 20011201, pos = { x = 1993.8, y = 268.5, z = -547.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 278, monster_id = 20011201, pos = { x = 1993.8, y = 268.5, z = -544.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 279, monster_id = 20011201, pos = { x = 1989.5, y = 268.3, z = -542.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 127, shape = RegionShape.SPHERE, radius = 4.4, pos = { x = 1993.8, y = 268.5, z = -543.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_127", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127", action = "action_EVENT_ENTER_REGION_127" }
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
		monsters = { 274, 275, 276 },
		gadgets = { },
		regions = { 127 },
		triggers = { "ENTER_REGION_127" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_127(context, evt)
	if evt.param1 ~= 127 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 277, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 278, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 427001, monster_id = 20011201, pos = { x = 138.3, y = 243.6, z = 1024.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 427002, monster_id = 20011201, pos = { x = 143.6, y = 243.0, z = 1018.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 427003, monster_id = 20011201, pos = { x = 130.2, y = 246.0, z = 1017.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 427005, monster_id = 20011201, pos = { x = 134.7, y = 245.5, z = 1013.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 427006, monster_id = 20011201, pos = { x = 141.4, y = 244.1, z = 1014.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 427007, monster_id = 20011201, pos = { x = 132.2, y = 244.9, z = 1023.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 427004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 136.7, y = 245.3, z = 1018.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_427004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427004", action = "action_EVENT_ENTER_REGION_427004" }
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
		regions = { 427004 },
		triggers = { "ENTER_REGION_427004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_427004(context, evt)
	if evt.param1 ~= 427004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

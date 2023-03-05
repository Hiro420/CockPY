--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131, monster_id = 20011401, pos = { x = 934.9, y = 262.6, z = -282.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 132, monster_id = 20011401, pos = { x = 933.3, y = 262.6, z = -282.4 }, rot = { x = 0.0, y = 70.8, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 133, monster_id = 20011501, pos = { x = 932.9, y = 262.6, z = -283.4 }, rot = { x = 0.0, y = 20.6, z = 0.0 }, level = 23, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 67, shape = RegionShape.SPHERE, radius = 5, pos = { x = 932.9, y = 262.7, z = -283.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_67", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67", action = "action_EVENT_ENTER_REGION_67" }
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
		monsters = { 131, 132 },
		gadgets = { },
		regions = { 67 },
		triggers = { "ENTER_REGION_67" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_67(context, evt)
	if evt.param1 ~= 67 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_67(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 133, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

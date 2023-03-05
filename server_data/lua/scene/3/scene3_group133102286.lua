--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 286001, monster_id = 28030101, pos = { x = 1727.5, y = 212.8, z = 95.7 }, rot = { x = 0.0, y = 334.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 286006, shape = RegionShape.SPHERE, radius = 9, pos = { x = 1745.4, y = 202.5, z = 93.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_286006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_286006", action = "action_EVENT_ENTER_REGION_286006" }
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
		regions = { 286006 },
		triggers = { "ENTER_REGION_286006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_286006(context, evt)
	if evt.param1 ~= 286006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_286006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 286001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

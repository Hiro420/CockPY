--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 318, monster_id = 28030101, pos = { x = 1810.1, y = 254.6, z = -962.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 321, monster_id = 28030101, pos = { x = 1771.9, y = 271.2, z = -845.3 }, rot = { x = 0.0, y = 210.3, z = 0.0 }, level = 5, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 322, monster_id = 28030101, pos = { x = 1781.2, y = 271.2, z = -839.7 }, rot = { x = 0.0, y = 213.0, z = 0.0 }, level = 5, drop_tag = "鸟类", pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 141, shape = RegionShape.SPHERE, radius = 8.3, pos = { x = 1853.9, y = 232.3, z = -904.2 } },
	{ config_id = 142, shape = RegionShape.SPHERE, radius = 5.3, pos = { x = 1872.3, y = 231.4, z = -904.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_141", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_141", action = "action_EVENT_ENTER_REGION_141" },
	{ name = "ENTER_REGION_142", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_142", action = "action_EVENT_ENTER_REGION_142" }
}

-- 变量
variables = {
	{ name = "door1", value = 0, no_refresh = false }
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
		regions = { 141, 142 },
		triggers = { "ENTER_REGION_141", "ENTER_REGION_142" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_141(context, evt)
	if evt.param1 ~= 141 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"door1"为1
	if ScriptLib.GetGroupVariableValue(context, "door1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_141(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 318, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 319, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 320, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 321, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 322, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_142(context, evt)
	if evt.param1 ~= 142 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_142(context, evt)
	-- 将本组内变量名为 "door1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door1", 1) then
	  return -1
	end
	
	return 0
end

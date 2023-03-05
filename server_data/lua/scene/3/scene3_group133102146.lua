--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256, monster_id = 20010501, pos = { x = 1026.1, y = 207.6, z = 348.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 257, monster_id = 20011201, pos = { x = 1024.1, y = 207.6, z = 349.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 146003, monster_id = 20011001, pos = { x = 1028.2, y = 207.1, z = 345.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 146004, monster_id = 20011001, pos = { x = 1019.7, y = 207.9, z = 345.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 146005, monster_id = 20011201, pos = { x = 1019.7, y = 207.8, z = 343.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146001, gadget_id = 70211111, pos = { x = 1022.5, y = 208.0, z = 345.8 }, rot = { x = 0.0, y = 320.0, z = 0.0 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 146002, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1026.3, y = 208.1, z = 348.2 } },
	{ config_id = 146006, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1028.3, y = 207.8, z = 345.2 } },
	{ config_id = 146007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1023.9, y = 208.3, z = 349.6 } },
	{ config_id = 146009, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1019.4, y = 207.8, z = 345.3 } },
	{ config_id = 146010, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1019.7, y = 207.8, z = 343.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_146002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146002", action = "action_EVENT_ENTER_REGION_146002" },
	{ name = "ENTER_REGION_146006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146006", action = "action_EVENT_ENTER_REGION_146006" },
	{ name = "ENTER_REGION_146007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146007", action = "action_EVENT_ENTER_REGION_146007" },
	{ name = "VARIABLE_CHANGE_146008", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_146008", action = "action_EVENT_VARIABLE_CHANGE_146008" },
	{ name = "ENTER_REGION_146009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146009", action = "action_EVENT_ENTER_REGION_146009" },
	{ name = "ENTER_REGION_146010", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146010", action = "action_EVENT_ENTER_REGION_146010" },
	{ name = "ANY_MONSTER_DIE_146011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_146011", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false }
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
		regions = { 146002, 146006, 146007, 146009, 146010 },
		triggers = { "ENTER_REGION_146002", "ENTER_REGION_146006", "ENTER_REGION_146007", "VARIABLE_CHANGE_146008", "ENTER_REGION_146009", "ENTER_REGION_146010", "ANY_MONSTER_DIE_146011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_146002(context, evt)
	if evt.param1 ~= 146002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146006(context, evt)
	if evt.param1 ~= 146006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 146003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146007(context, evt)
	if evt.param1 ~= 146007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 257, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_146008(context, evt)
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146008(context, evt)
	-- 创建id为146001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146001 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146009(context, evt)
	if evt.param1 ~= 146009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 146004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146010(context, evt)
	if evt.param1 ~= 146010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 146005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

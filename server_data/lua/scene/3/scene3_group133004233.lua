-- Trigger变量
local defs = {
	gadget_id_1 = 1369
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605, monster_id = 20011301, pos = { x = 2500.0, y = 246.9, z = -389.5 }, rot = { x = 0.0, y = 128.1, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 606, monster_id = 20011201, pos = { x = 2497.2, y = 246.7, z = -389.5 }, rot = { x = 0.0, y = 100.4, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 607, monster_id = 20011201, pos = { x = 2499.1, y = 246.8, z = -387.1 }, rot = { x = 0.0, y = 126.8, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1369, gadget_id = 70211111, pos = { x = 2478.0, y = 244.1, z = -370.7 }, rot = { x = 0.0, y = 138.7, z = 356.8 }, level = 20, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 259, shape = RegionShape.SPHERE, radius = 4, pos = { x = 2499.6, y = 246.6, z = -389.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_259", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259", action = "action_EVENT_ENTER_REGION_259" },
	{ name = "VARIABLE_CHANGE_233001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_233001", action = "action_EVENT_VARIABLE_CHANGE_233001", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "num_1", value = 0, no_refresh = true },
	{ name = "num_2", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		regions = { 259 },
		triggers = { "ENTER_REGION_259", "VARIABLE_CHANGE_233001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1369 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_259(context, evt)
	if evt.param1 ~= 259 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 606, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 607, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_233001(context, evt)
	-- 判断变量"num_1"为1
	if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 1 then
			return false
	end
	
	-- 判断变量"num_2"为1
	if ScriptLib.GetGroupVariableValue(context, "num_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_233001(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004233, 2) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 337005, monster_id = 23020101, pos = { x = 496.5, y = 347.8, z = 1339.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "债务处理人" },
	{ config_id = 337006, monster_id = 23030101, pos = { x = 494.3, y = 347.7, z = 1335.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "召唤师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 337001, gadget_id = 70900051, pos = { x = 496.2, y = 350.2, z = 1313.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, isOneoff = true, persistent = true },
	{ config_id = 337002, gadget_id = 70900051, pos = { x = 526.9, y = 350.3, z = 1332.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, isOneoff = true, persistent = true },
	{ config_id = 337003, gadget_id = 70900051, pos = { x = 478.6, y = 345.0, z = 1355.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, isOneoff = true, persistent = true },
	{ config_id = 337004, gadget_id = 70211122, pos = { x = 497.9, y = 348.5, z = 1336.2 }, rot = { x = 11.9, y = 307.9, z = 4.8 }, level = 24, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 337011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 497.5, y = 348.3, z = 1336.5 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_337007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_337007", action = "action_EVENT_GADGET_STATE_CHANGE_337007" },
	{ name = "GADGET_STATE_CHANGE_337008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_337008", action = "action_EVENT_GADGET_STATE_CHANGE_337008" },
	{ name = "GADGET_STATE_CHANGE_337009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_337009", action = "action_EVENT_GADGET_STATE_CHANGE_337009" },
	{ name = "VARIABLE_CHANGE_337010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_337010", action = "action_EVENT_VARIABLE_CHANGE_337010" },
	{ name = "ENTER_REGION_337011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_337011", action = "action_EVENT_ENTER_REGION_337011" },
	{ name = "ANY_MONSTER_DIE_337012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337012", action = "action_EVENT_ANY_MONSTER_DIE_337012" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
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
		gadgets = { 337001, 337002, 337003 },
		regions = { 337011 },
		triggers = { "GADGET_STATE_CHANGE_337007", "GADGET_STATE_CHANGE_337008", "GADGET_STATE_CHANGE_337009", "VARIABLE_CHANGE_337010", "ENTER_REGION_337011", "ANY_MONSTER_DIE_337012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 337004 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 337005, 337006 },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_337007(context, evt)
	if 337001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_337007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_337008(context, evt)
	if 337002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_337008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_337009(context, evt)
	if 337003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_337009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_337010(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_337010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103337, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_337011(context, evt)
	if evt.param1 ~= 337011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_337011(context, evt)
	-- 将configid为 337004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103337, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_337012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_337012(context, evt)
	-- 将configid为 337004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 505009, monster_id = 20030101, pos = { x = 1523.7, y = 250.6, z = 432.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505010, monster_id = 20030101, pos = { x = 1525.4, y = 250.4, z = 431.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505011, monster_id = 20030101, pos = { x = 1525.5, y = 250.6, z = 433.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505012, monster_id = 20030101, pos = { x = 1529.0, y = 255.7, z = 392.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505013, monster_id = 20030101, pos = { x = 1528.5, y = 255.4, z = 393.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505014, monster_id = 20030101, pos = { x = 1526.8, y = 255.3, z = 392.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505015, monster_id = 20030101, pos = { x = 1550.3, y = 250.8, z = 425.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505016, monster_id = 20030101, pos = { x = 1548.8, y = 251.0, z = 427.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 505017, monster_id = 20030101, pos = { x = 1547.1, y = 251.0, z = 425.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 505001, gadget_id = 70211101, pos = { x = 1523.1, y = 255.1, z = 389.4 }, rot = { x = 355.7, y = 55.2, z = 6.2 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 505002, gadget_id = 70211101, pos = { x = 1552.6, y = 252.0, z = 420.0 }, rot = { x = 17.5, y = 297.0, z = 358.2 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 505003, gadget_id = 70310011, pos = { x = 1524.9, y = 250.4, z = 432.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 505004, gadget_id = 70310011, pos = { x = 1527.7, y = 255.7, z = 391.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 505005, gadget_id = 70211101, pos = { x = 1522.0, y = 249.2, z = 439.3 }, rot = { x = 345.8, y = 205.6, z = 355.2 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 505006, gadget_id = 70310011, pos = { x = 1547.9, y = 250.5, z = 426.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 505008, gadget_id = 70211021, pos = { x = 1532.1, y = 249.5, z = 423.8 }, rot = { x = 356.4, y = 13.9, z = 0.4 }, level = 18, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_505007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505007", action = "action_EVENT_GADGET_STATE_CHANGE_505007" },
	{ name = "GADGET_STATE_CHANGE_505018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505018", action = "action_EVENT_GADGET_STATE_CHANGE_505018" },
	{ name = "GADGET_STATE_CHANGE_505019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505019", action = "action_EVENT_GADGET_STATE_CHANGE_505019" },
	{ name = "VARIABLE_CHANGE_505020", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_505020", action = "action_EVENT_VARIABLE_CHANGE_505020" },
	{ name = "ANY_MONSTER_DIE_505021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_505021", trigger_count = 9 }
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
		gadgets = { 505001, 505002, 505003, 505004, 505005, 505006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_505007", "GADGET_STATE_CHANGE_505018", "GADGET_STATE_CHANGE_505019", "VARIABLE_CHANGE_505020", "ANY_MONSTER_DIE_505021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505007(context, evt)
	if 505003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505009, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505010, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505011, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505018(context, evt)
	if 505004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505012, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505013, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505014, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505019(context, evt)
	if 505006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505015, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505016, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505017, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_505020(context, evt)
	-- 判断变量"count"为9
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_505020(context, evt)
	-- 创建id为505008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 505008 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_505021(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

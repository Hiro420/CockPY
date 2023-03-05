-- Trigger变量
local defs = {
	gadget_id_1 = 49009,
	gadget_id_2 = 49010,
	gadget_id_3 = 49011,
	gadget_id_4 = 49012,
	gadget_id_5 = 49013,
	gadget_id_6 = 49014,
	monster_id_1 = 250,
	monster_id_2 = 251,
	monster_id_3 = 252,
	monster_id_4 = 253,
	gadget_id_7 = 49008,
	gadget_id_8 = 7096,
	gadget_id_9 = 258,
	gadget_id_10 = 260,
	gadget_id_11 = 261,
	gadget_id_12 = 259
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49001, monster_id = 20011301, pos = { x = -127.5, y = 0.8, z = -142.2 }, rot = { x = 0.0, y = 88.2, z = 0.0 }, level = 7, affix = { 1008, 1019, 1020 }, isElite = true },
	{ config_id = 49002, monster_id = 20011201, pos = { x = -126.8, y = 0.8, z = -138.6 }, rot = { x = 0.0, y = 95.2, z = 0.0 }, level = 7, affix = { 1008, 1019, 1020 }, isElite = true },
	{ config_id = 49003, monster_id = 20011201, pos = { x = -126.3, y = 0.8, z = -145.5 }, rot = { x = 0.0, y = 62.0, z = 0.0 }, level = 7, affix = { 1008, 1019, 1020 }, isElite = true },
	{ config_id = 49004, monster_id = 20011201, pos = { x = -124.7, y = 0.8, z = -142.1 }, rot = { x = 0.0, y = 83.3, z = 0.0 }, level = 7, affix = { 1008, 1019, 1020 }, isElite = true },
	{ config_id = 49005, monster_id = 21010501, pos = { x = -125.6, y = 0.8, z = -132.6 }, rot = { x = 0.0, y = 126.8, z = 0.0 }, level = 7, disableWander = true, affix = { 1010, 1019, 1020 }, isElite = true, pose_id = 32 },
	{ config_id = 49006, monster_id = 21010501, pos = { x = -125.3, y = 0.8, z = -152.7 }, rot = { x = 0.0, y = 40.3, z = 0.0 }, level = 7, disableWander = true, affix = { 1010, 1019, 1020 }, isElite = true, pose_id = 32 },
	{ config_id = 49007, monster_id = 21010501, pos = { x = -134.3, y = 0.8, z = -143.0 }, rot = { x = 0.0, y = 89.5, z = 0.0 }, level = 7, disableWander = true, affix = { 1010, 1019, 1020 }, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49008, gadget_id = 70360002, pos = { x = -99.8, y = 0.8, z = -141.2 }, rot = { x = 0.0, y = 88.1, z = 0.0 }, level = 1 },
	{ config_id = 49009, gadget_id = 70350006, pos = { x = -92.0, y = 1.3, z = -139.8 }, rot = { x = 0.0, y = 271.4, z = 0.0 }, level = 1 },
	{ config_id = 49010, gadget_id = 70350006, pos = { x = -92.0, y = 1.3, z = -133.9 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 49011, gadget_id = 70350006, pos = { x = -92.0, y = 1.3, z = -128.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 49012, gadget_id = 70350006, pos = { x = -151.3, y = 1.5, z = -139.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 49013, gadget_id = 70350006, pos = { x = -151.3, y = 0.8, z = -133.9 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 49014, gadget_id = 70350006, pos = { x = -151.3, y = 0.8, z = -128.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 49015, gadget_id = 70220021, pos = { x = -130.5, y = -0.9, z = -158.5 }, rot = { x = 0.0, y = 132.8, z = 0.0 }, level = 1 },
	{ config_id = 49016, gadget_id = 70220021, pos = { x = -140.1, y = -1.0, z = -152.1 }, rot = { x = 359.6, y = 49.7, z = 3.2 }, level = 1 },
	{ config_id = 49017, gadget_id = 70220021, pos = { x = -135.7, y = -2.3, z = -132.6 }, rot = { x = 3.1, y = 322.3, z = 0.5 }, level = 1 },
	{ config_id = 49018, gadget_id = 70220021, pos = { x = -126.1, y = -0.9, z = -121.6 }, rot = { x = 1.1, y = 325.2, z = 253.9 }, level = 1 },
	{ config_id = 49019, gadget_id = 70220021, pos = { x = -118.7, y = -1.3, z = -163.5 }, rot = { x = 1.1, y = 325.2, z = 253.9 }, level = 1 },
	{ config_id = 49020, gadget_id = 70220021, pos = { x = -115.7, y = -2.6, z = -125.0 }, rot = { x = 1.1, y = 325.2, z = 352.9 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_141", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_141", action = "action_EVENT_GADGET_CREATE_141" },
	{ name = "SELECT_OPTION_142", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_142", action = "action_EVENT_SELECT_OPTION_142", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_162", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162", action = "action_EVENT_ANY_MONSTER_DIE_162", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_163", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163", action = "action_EVENT_ANY_MONSTER_DIE_163", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_164", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164", action = "action_EVENT_ANY_MONSTER_DIE_164", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_165", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165", action = "action_EVENT_ANY_MONSTER_DIE_165" },
	{ name = "ANY_MONSTER_DIE_166", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_166", action = "action_EVENT_ANY_MONSTER_DIE_166", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_167", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167", action = "action_EVENT_ANY_MONSTER_DIE_167", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_168", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168", action = "action_EVENT_ANY_MONSTER_DIE_168", trigger_count = 0 }
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
		gadgets = { 49008, 49015, 49016, 49017, 49018, 49019, 49020 },
		regions = { },
		triggers = { "GADGET_CREATE_141", "SELECT_OPTION_142", "ANY_MONSTER_DIE_162", "ANY_MONSTER_DIE_163", "ANY_MONSTER_DIE_164", "ANY_MONSTER_DIE_165", "ANY_MONSTER_DIE_166", "ANY_MONSTER_DIE_167", "ANY_MONSTER_DIE_168" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function condition_EVENT_GADGET_CREATE_141(context, evt)
	if 49008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_141(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_142(context, evt)
	if 49008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_142(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49006, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49007, delay_time = 2 }) then
	  return -1
	end
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001, 60, 201011049, 275, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162(context, evt)
	if 49003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163(context, evt)
	if 49002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164(context, evt)
	if 49004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_165(context, evt)
	if 49001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011049, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_166(context, evt)
	if 49005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167(context, evt)
	if 49006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49006, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168(context, evt)
	if 49007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

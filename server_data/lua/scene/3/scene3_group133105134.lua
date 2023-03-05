--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232, monster_id = 22010101, pos = { x = 1029.8, y = 209.3, z = 24.2 }, rot = { x = 3.1, y = 341.0, z = 357.6 }, level = 19, drop_tag = "深渊法师", pose_id = 9013 },
	{ config_id = 234, monster_id = 20011201, pos = { x = 1026.3, y = 209.8, z = 25.2 }, rot = { x = 3.3, y = 344.9, z = 357.9 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 235, monster_id = 20011201, pos = { x = 1032.0, y = 209.0, z = 27.2 }, rot = { x = 3.3, y = 344.9, z = 357.9 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 236, monster_id = 20011201, pos = { x = 1033.1, y = 209.3, z = 22.6 }, rot = { x = 2.4, y = 70.6, z = 3.1 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 237, monster_id = 20011201, pos = { x = 1027.8, y = 210.0, z = 20.8 }, rot = { x = 357.4, y = 245.4, z = 357.1 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 330, gadget_id = 70300107, pos = { x = 1032.2, y = 207.7, z = 22.6 }, rot = { x = 3.7, y = 35.5, z = 1.2 }, level = 25 },
	{ config_id = 331, gadget_id = 70300107, pos = { x = 1028.5, y = 208.3, z = 21.3 }, rot = { x = 358.4, y = 264.7, z = 356.4 }, level = 25 },
	{ config_id = 332, gadget_id = 70300107, pos = { x = 1031.2, y = 207.4, z = 26.3 }, rot = { x = 1.3, y = 307.5, z = 356.3 }, level = 25 },
	{ config_id = 333, gadget_id = 70300085, pos = { x = 1029.8, y = 207.7, z = 23.9 }, rot = { x = 10.8, y = 69.1, z = 3.4 }, level = 25 },
	{ config_id = 334, gadget_id = 70300107, pos = { x = 1027.0, y = 208.1, z = 24.5 }, rot = { x = 356.9, y = 235.0, z = 357.7 }, level = 25 },
	{ config_id = 335, gadget_id = 70211111, pos = { x = 1029.8, y = 208.1, z = 24.0 }, rot = { x = 4.8, y = 344.7, z = 349.8 }, level = 25, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_170", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170", action = "action_EVENT_GADGET_STATE_CHANGE_170" },
	{ name = "GADGET_STATE_CHANGE_171", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171", action = "action_EVENT_GADGET_STATE_CHANGE_171" },
	{ name = "GADGET_STATE_CHANGE_172", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172", action = "action_EVENT_GADGET_STATE_CHANGE_172" },
	{ name = "GADGET_STATE_CHANGE_173", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_173", action = "action_EVENT_GADGET_STATE_CHANGE_173" },
	{ name = "ANY_MONSTER_DIE_174", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_174", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_175", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175", action = "action_EVENT_ANY_MONSTER_DIE_175" }
}

-- 变量
variables = {
	{ name = "num", value = 0, no_refresh = false }
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
		gadgets = { 330, 331, 332, 333, 334 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_170", "GADGET_STATE_CHANGE_171", "GADGET_STATE_CHANGE_172", "GADGET_STATE_CHANGE_173", "ANY_MONSTER_DIE_174", "ANY_MONSTER_DIE_175" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170(context, evt)
	if 330 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171(context, evt)
	if 331 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_172(context, evt)
	if 332 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_172(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 235, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_173(context, evt)
	if 334 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_173(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 234, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num", c_num) then
	  return -1
	end
	
	if c_num == 4 then
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 232, delay_time = 0 }) then
	  return -1
	end
	
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175(context, evt)
	if 232 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175(context, evt)
	-- 创建id为335的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 335 }) then
	  return -1
	end
	
	return 0
end

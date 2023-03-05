-- Trigger变量
local defs = {
	gadget_id = 53004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53010, monster_id = 20011301, pos = { x = -240.4, y = 387.6, z = 539.7 }, rot = { x = 0.0, y = 311.5, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 53011, monster_id = 20011301, pos = { x = -240.5, y = 386.4, z = 542.5 }, rot = { x = 0.0, y = 201.4, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 53012, monster_id = 20011301, pos = { x = -243.6, y = 386.1, z = 539.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70310011, pos = { x = -257.3, y = 373.6, z = 551.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 53002, gadget_id = 70310011, pos = { x = -242.0, y = 386.5, z = 540.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 53003, gadget_id = 70310011, pos = { x = -252.6, y = 382.3, z = 537.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 53004, gadget_id = 70211111, pos = { x = -232.7, y = 399.2, z = 526.9 }, rot = { x = 31.6, y = 319.5, z = 356.4 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 53008, gadget_id = 70310011, pos = { x = -238.2, y = 395.1, z = 530.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_53005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53005", action = "action_EVENT_GADGET_STATE_CHANGE_53005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_53006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_53006" },
	{ name = "GADGET_CREATE_53007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53007", action = "action_EVENT_GADGET_CREATE_53007" },
	{ name = "GADGET_STATE_CHANGE_53009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53009", action = "action_EVENT_GADGET_STATE_CHANGE_53009" }
}

-- 变量
variables = {
	{ name = "start", value = 0, no_refresh = true }
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
		gadgets = { 53001, 53002, 53003, 53008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53005", "GADGET_STATE_CHANGE_53006", "GADGET_CREATE_53007", "GADGET_STATE_CHANGE_53009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53009(context, evt)
	if 53002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53010, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53011, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53012, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

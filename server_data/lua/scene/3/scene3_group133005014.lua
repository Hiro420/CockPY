-- Trigger变量
local defs = {
	gadget_id_1 = 14004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14001, gadget_id = 70380002, pos = { x = 1816.6, y = 194.6, z = -1516.7 }, rot = { x = 0.0, y = 103.3, z = 0.0 }, level = 5, route_id = 3005005 },
	{ config_id = 14002, gadget_id = 70380002, pos = { x = 1832.4, y = 197.8, z = -1481.5 }, rot = { x = 0.0, y = 64.3, z = 0.0 }, level = 5, route_id = 3005006 },
	{ config_id = 14003, gadget_id = 70380002, pos = { x = 1847.6, y = 194.6, z = -1501.4 }, rot = { x = 0.0, y = 142.9, z = 0.0 }, level = 5, route_id = 3005007 },
	{ config_id = 14004, gadget_id = 70211111, pos = { x = 1835.3, y = 194.7, z = -1509.4 }, rot = { x = 0.0, y = 7.5, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_23", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_23", action = "action_EVENT_ANY_GADGET_DIE_23" },
	{ name = "ANY_GADGET_DIE_24", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_24", action = "action_EVENT_ANY_GADGET_DIE_24" },
	{ name = "ANY_GADGET_DIE_25", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25", action = "action_EVENT_ANY_GADGET_DIE_25" },
	{ name = "GADGET_CREATE_31", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31", action = "", tlog_tag = "小平原_移动靶_海边_结束" }
}

-- 变量
variables = {
	{ name = "target29", value = 0, no_refresh = false },
	{ name = "target30", value = 0, no_refresh = false },
	{ name = "target31", value = 0, no_refresh = false }
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
		gadgets = { 14001, 14002, 14003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_23", "ANY_GADGET_DIE_24", "ANY_GADGET_DIE_25", "GADGET_CREATE_31" },
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
function condition_EVENT_ANY_GADGET_DIE_23(context, evt)
	if 14001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_23(context, evt)
	-- 将本组内变量名为 "target29" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target29", 1) then
	  return -1
	end
	
	local c_target29 = ScriptLib.GetGroupVariableValue(context, "target29")
		local c_target30 = ScriptLib.GetGroupVariableValue(context, "target30")
		local c_target31 = ScriptLib.GetGroupVariableValue(context, "target31")
		local c_target = c_target29 + c_target30 + c_target31
		if c_target == 3 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		end
		
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_24(context, evt)
	if 14002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_24(context, evt)
	-- 将本组内变量名为 "target30" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target30", 1) then
	  return -1
	end
	
	                local c_target29 = ScriptLib.GetGroupVariableValue(context, "target29")
		local c_target30 = ScriptLib.GetGroupVariableValue(context, "target30")
		local c_target31 = ScriptLib.GetGroupVariableValue(context, "target31")
		local c_target = c_target29 + c_target30 + c_target31
		if c_target == 3 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25(context, evt)
	if 14003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25(context, evt)
	-- 将本组内变量名为 "target31" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target31", 1) then
	  return -1
	end
	
	                local c_target29 = ScriptLib.GetGroupVariableValue(context, "target29")
		local c_target30 = ScriptLib.GetGroupVariableValue(context, "target30")
		local c_target31 = ScriptLib.GetGroupVariableValue(context, "target31")
		local c_target = c_target29 + c_target30 + c_target31
		if c_target == 3 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		end
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_31(context, evt)
	if 14004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

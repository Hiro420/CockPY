-- Trigger变量
local defs = {
	gadget_id_1 = 37
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
	{ config_id = 34, gadget_id = 70380002, pos = { x = 2071.2, y = 212.1, z = -1252.5 }, rot = { x = 0.0, y = 103.3, z = 0.0 }, level = 5, route_id = 3005001 },
	{ config_id = 35, gadget_id = 70380002, pos = { x = 2076.5, y = 211.4, z = -1254.2 }, rot = { x = 0.0, y = 64.3, z = 0.0 }, level = 5, route_id = 3005002 },
	{ config_id = 36, gadget_id = 70380002, pos = { x = 2080.3, y = 212.2, z = -1261.4 }, rot = { x = 0.0, y = 142.9, z = 0.0 }, level = 5, route_id = 3005003 },
	{ config_id = 37, gadget_id = 70211111, pos = { x = 2075.8, y = 210.7, z = -1272.1 }, rot = { x = 0.0, y = 210.7, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_27", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_27", action = "action_EVENT_ANY_GADGET_DIE_27" },
	{ name = "ANY_GADGET_DIE_28", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_28", action = "action_EVENT_ANY_GADGET_DIE_28" },
	{ name = "ANY_GADGET_DIE_29", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_29", action = "action_EVENT_ANY_GADGET_DIE_29" },
	{ name = "GADGET_CREATE_32", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_32", action = "", tlog_tag = "小平原_移动靶_东_结束" }
}

-- 变量
variables = {
	{ name = "target34", value = 0, no_refresh = false },
	{ name = "target35", value = 0, no_refresh = false },
	{ name = "target36", value = 0, no_refresh = false }
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
		gadgets = { 34, 35, 36 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_27", "ANY_GADGET_DIE_28", "ANY_GADGET_DIE_29", "GADGET_CREATE_32" },
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
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_ANY_GADGET_DIE_27(context, evt)
	if 34 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_27(context, evt)
	-- 将本组内变量名为 "target34" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target34", 1) then
	  return -1
	end
	
	local c_target34 = ScriptLib.GetGroupVariableValue(context, "target34")
		local c_target35 = ScriptLib.GetGroupVariableValue(context, "target35")
		local c_target36 = ScriptLib.GetGroupVariableValue(context, "target36")
		local c_target = c_target34 + c_target35 + c_target36
		if c_target == 3 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		end
	
	return 0
		
	
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_28(context, evt)
	if 35 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_28(context, evt)
	-- 将本组内变量名为 "target35" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target35", 1) then
	  return -1
	end
	
	local c_target34= ScriptLib.GetGroupVariableValue(context, "target34")
		local c_target35 = ScriptLib.GetGroupVariableValue(context, "target35")
		local c_target36 = ScriptLib.GetGroupVariableValue(context, "target36")
		local c_target = c_target34 + c_target35 + c_target36
		if c_target == 3 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		end
		
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_29(context, evt)
	if 36 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_29(context, evt)
	-- 将本组内变量名为 "target36" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target36", 1) then
	  return -1
	end
	
	local c_target34= ScriptLib.GetGroupVariableValue(context, "target34")
		local c_target35 = ScriptLib.GetGroupVariableValue(context, "target35")
		local c_target36 = ScriptLib.GetGroupVariableValue(context, "target36")
		local c_target = c_target34 + c_target35 + c_target36
		if c_target == 3 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
			return -1
		end
		end
		
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_32(context, evt)
	if 37 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

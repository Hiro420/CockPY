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
	{ config_id = 5001, gadget_id = 70300116, pos = { x = -570.2, y = 201.4, z = 141.2 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5002, gadget_id = 70300116, pos = { x = -566.5, y = 201.4, z = 141.3 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5003, gadget_id = 70300116, pos = { x = -564.9, y = 201.4, z = 149.8 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5004, gadget_id = 70300116, pos = { x = -568.2, y = 201.4, z = 140.7 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5006, gadget_id = 70300116, pos = { x = -565.2, y = 201.4, z = 143.2 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5007, gadget_id = 70300116, pos = { x = -567.0, y = 201.4, z = 146.5 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5008, gadget_id = 70300116, pos = { x = -561.6, y = 203.2, z = 154.3 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5009, gadget_id = 70300116, pos = { x = -564.5, y = 201.4, z = 147.7 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5010, gadget_id = 70300116, pos = { x = -561.9, y = 203.1, z = 152.2 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5011, gadget_id = 70300116, pos = { x = -563.5, y = 201.4, z = 146.2 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5012, gadget_id = 70300116, pos = { x = -566.3, y = 201.4, z = 147.6 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5013, gadget_id = 70300116, pos = { x = -559.6, y = 203.3, z = 152.7 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 18 },
	{ config_id = 5014, gadget_id = 70300118, pos = { x = -561.9, y = 203.3, z = 152.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5016, gadget_id = 70300118, pos = { x = -559.6, y = 203.3, z = 152.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5017, gadget_id = 70300118, pos = { x = -564.8, y = 201.4, z = 149.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5018, gadget_id = 70300118, pos = { x = -564.6, y = 201.4, z = 147.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5019, gadget_id = 70300118, pos = { x = -563.5, y = 201.4, z = 146.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5020, gadget_id = 70300118, pos = { x = -565.2, y = 201.4, z = 143.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5021, gadget_id = 70300118, pos = { x = -566.5, y = 201.4, z = 141.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5022, gadget_id = 70300118, pos = { x = -568.2, y = 201.4, z = 140.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5023, gadget_id = 70300118, pos = { x = -570.1, y = 201.5, z = 141.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5024, gadget_id = 70300118, pos = { x = -567.0, y = 201.4, z = 146.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5025, gadget_id = 70300118, pos = { x = -566.3, y = 201.4, z = 147.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 5026, gadget_id = 70300118, pos = { x = -561.6, y = 203.3, z = 154.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_5005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5005", action = "action_EVENT_ANY_GADGET_DIE_5005", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5015", action = "action_EVENT_ANY_GADGET_DIE_5015", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5027", action = "action_EVENT_ANY_GADGET_DIE_5027", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5028", action = "action_EVENT_ANY_GADGET_DIE_5028", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5029", action = "action_EVENT_ANY_GADGET_DIE_5029", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5030", action = "action_EVENT_ANY_GADGET_DIE_5030", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5031", action = "action_EVENT_ANY_GADGET_DIE_5031", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5032", action = "action_EVENT_ANY_GADGET_DIE_5032", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5033", action = "action_EVENT_ANY_GADGET_DIE_5033", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5034", action = "action_EVENT_ANY_GADGET_DIE_5034", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5035", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5035", action = "action_EVENT_ANY_GADGET_DIE_5035", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5036", action = "action_EVENT_ANY_GADGET_DIE_5036", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_5037", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5037", action = "action_EVENT_ANY_GADGET_DIE_5037", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5001, 5002, 5006, 5007, 5020, 5021, 5023, 5024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_5005", "ANY_GADGET_DIE_5015", "ANY_GADGET_DIE_5027", "ANY_GADGET_DIE_5028", "ANY_GADGET_DIE_5029", "ANY_GADGET_DIE_5030", "ANY_GADGET_DIE_5031", "ANY_GADGET_DIE_5032", "ANY_GADGET_DIE_5033", "ANY_GADGET_DIE_5034", "ANY_GADGET_DIE_5035", "ANY_GADGET_DIE_5036", "ANY_GADGET_DIE_5037" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5003, 5004, 5008, 5009, 5017, 5018, 5022, 5026 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_5005", "ANY_GADGET_DIE_5015", "ANY_GADGET_DIE_5027", "ANY_GADGET_DIE_5028", "ANY_GADGET_DIE_5029", "ANY_GADGET_DIE_5030", "ANY_GADGET_DIE_5031", "ANY_GADGET_DIE_5032", "ANY_GADGET_DIE_5033", "ANY_GADGET_DIE_5034", "ANY_GADGET_DIE_5035", "ANY_GADGET_DIE_5036", "ANY_GADGET_DIE_5037" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 5010, 5011, 5012, 5013, 5014, 5016, 5019, 5025 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_5005", "ANY_GADGET_DIE_5015", "ANY_GADGET_DIE_5027", "ANY_GADGET_DIE_5028", "ANY_GADGET_DIE_5029", "ANY_GADGET_DIE_5030", "ANY_GADGET_DIE_5031", "ANY_GADGET_DIE_5032", "ANY_GADGET_DIE_5033", "ANY_GADGET_DIE_5034", "ANY_GADGET_DIE_5035", "ANY_GADGET_DIE_5036", "ANY_GADGET_DIE_5037" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5005(context, evt)
	if 5001 == evt.param1 then
		return true
	end
	
	if 5002 == evt.param1 then
		return true
	end
	
	if 5003 == evt.param1 then
		return true
	
	end
	
	if 5004 == evt.param1 then
		return true
	
	end
	
	if 5006 == evt.param1 then
		return true
	
	end
	
	if 5007 == evt.param1 then
		return true
	end
	
	if 5008 == evt.param1 then
		return true
	end
	
	if 5009 == evt.param1 then
		return true
	end
	
	if 5010 == evt.param1 then
		return true
	end
	
	if 5011 == evt.param1 then
		return true
	
	end
	
	if 5012 == evt.param1 then
		return true
	end
	
	if 5013 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107005") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5015(context, evt)
	if 5010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5014 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5027(context, evt)
	if 5013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5016 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5028(context, evt)
	if 5008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5026 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5029(context, evt)
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5017 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5030(context, evt)
	if 5009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5018 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5031(context, evt)
	if 5011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5019 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5032(context, evt)
	if 5012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5025 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5033(context, evt)
	if 5007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5033(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5024 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5034(context, evt)
	if 5006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5034(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5020 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5035(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5035(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5021 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5036(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5022 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5037(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5037(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5023 }) then
		    return -1
		end
		
	
	return 0
end

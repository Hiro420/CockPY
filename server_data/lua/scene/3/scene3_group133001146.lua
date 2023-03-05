-- Trigger变量
local defs = {
	gadget_id_1 = 2090
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
	{ config_id = 2087, gadget_id = 70900007, pos = { x = 1856.2, y = 199.5, z = -1241.0 }, rot = { x = 0.0, y = 42.7, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2088, gadget_id = 70900009, pos = { x = 1857.1, y = 196.2, z = -1260.6 }, rot = { x = 0.0, y = 317.6, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2089, gadget_id = 70900008, pos = { x = 1876.8, y = 201.9, z = -1244.7 }, rot = { x = 0.0, y = 39.1, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 2090, gadget_id = 70211121, pos = { x = 1860.7, y = 199.5, z = -1235.5 }, rot = { x = 0.0, y = 311.2, z = 0.0 }, level = 5, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 171, shape = RegionShape.SPHERE, radius = 6.1, pos = { x = 1856.1, y = 199.4, z = -1241.1 } },
	{ config_id = 196, shape = RegionShape.SPHERE, radius = 6.1, pos = { x = 1877.1, y = 202.1, z = -1245.4 } },
	{ config_id = 197, shape = RegionShape.SPHERE, radius = 6.1, pos = { x = 1857.1, y = 196.2, z = -1261.2 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_165", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165", action = "action_EVENT_GADGET_STATE_CHANGE_165", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_166", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166", action = "action_EVENT_GADGET_STATE_CHANGE_166", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_167", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167", action = "action_EVENT_GADGET_STATE_CHANGE_167", trigger_count = 0 },
	{ name = "ENTER_REGION_171", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_171", action = "action_EVENT_ENTER_REGION_171", tlog_tag = "小平原_三元素石碑_大树_开始" },
	{ name = "ENTER_REGION_196", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196", action = "action_EVENT_ENTER_REGION_196", tlog_tag = "小平原_三元素石碑_大树_开始" },
	{ name = "ENTER_REGION_197", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_197", action = "action_EVENT_ENTER_REGION_197", tlog_tag = "小平原_三元素石碑_大树_开始" },
	{ name = "GADGET_STATE_CHANGE_385", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_385", action = "", tlog_tag = "小平原_三元素石碑_大树_结束" }
}

-- 变量
variables = {
	{ name = "t2087", value = 0, no_refresh = false },
	{ name = "t2088", value = 0, no_refresh = false },
	{ name = "t2089", value = 0, no_refresh = false },
	{ name = "isoff", value = 0, no_refresh = false },
	{ name = "reminder_seq", value = 0, no_refresh = true }
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
		gadgets = { 2087, 2088, 2089 },
		regions = { 171, 196, 197 },
		triggers = { "GADGET_STATE_CHANGE_165", "GADGET_STATE_CHANGE_166", "GADGET_STATE_CHANGE_167", "ENTER_REGION_171", "ENTER_REGION_196", "ENTER_REGION_197", "GADGET_STATE_CHANGE_385" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165(context, evt)
	if 2087 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165(context, evt)
	-- 将本组内变量名为 "t2087" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t2087", 1) then
	  return -1
	end
	
	local t2087 = ScriptLib.GetGroupVariableValue(context, "t2087")
	local t2088 = ScriptLib.GetGroupVariableValue(context, "t2088")
	local t2089 = ScriptLib.GetGroupVariableValue(context, "t2089")
	local sum = t2087 + t2088 + t2089
	
	if  sum == 1 then
		
		if  0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1) then
			return -1
		end
		
		
		
	end
	
	if  sum == 2 then
		
		if  0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 2) then
			return -1
		end
	
	
	end
	
	if  sum == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
			if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
				return -1
			end
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
				return -1
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166(context, evt)
	if 2088 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166(context, evt)
	-- 将本组内变量名为 "t2088" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t2088", 1) then
	  return -1
	end
	
	local t2087 = ScriptLib.GetGroupVariableValue(context, "t2087")
	local t2088 = ScriptLib.GetGroupVariableValue(context, "t2088")
	local t2089 = ScriptLib.GetGroupVariableValue(context, "t2089")
	local sum = t2087 + t2088 + t2089
	
	if  sum == 1 then
		
		if  0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1) then
			return -1
		end
		
		
		
	end
	
	if  sum == 2 then
		
		if  0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 2) then
			return -1
		end
	
		
		
	end
	
	if  sum == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
			if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
				return -1
			end
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
				return -1
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167(context, evt)
	if 2089 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167(context, evt)
	-- 将本组内变量名为 "t2089" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t2089", 1) then
	  return -1
	end
	
	local t2087 = ScriptLib.GetGroupVariableValue(context, "t2087")
	local t2088 = ScriptLib.GetGroupVariableValue(context, "t2088")
	local t2089 = ScriptLib.GetGroupVariableValue(context, "t2089")
	local sum = t2087 + t2088 + t2089
	
	if  sum == 1 then
		
		if  0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1) then
			return -1
		end
		
		
		
	end
	
	if  sum == 2 then
		
		if  0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 2) then
			return -1
		end
	
			
		
	end
	
	if  sum == 3 then
		
		if ScriptLib.GetGroupVariableValue(context, "isoff") == 0 then
			if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
				return -1
			end
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
				return -1
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_171(context, evt)
	if evt.param1 ~= 171 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder_seq"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_seq") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_171(context, evt)
	-- 将本组内变量名为 "reminder_seq" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_196(context, evt)
	if evt.param1 ~= 196 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder_seq"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_seq") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_196(context, evt)
	-- 调用提示id为 20011001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20011001) then
		return -1
	end
	
	-- 将本组内变量名为 "reminder_seq" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_197(context, evt)
	if evt.param1 ~= 197 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder_seq"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_seq") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_197(context, evt)
	-- 调用提示id为 20011001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20011001) then
		return -1
	end
	
	-- 将本组内变量名为 "reminder_seq" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_385(context, evt)
	if 2090 ~= evt.param1 then
		return false
	end
	
	if 2090 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作

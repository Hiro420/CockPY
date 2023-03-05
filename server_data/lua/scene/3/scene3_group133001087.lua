-- Trigger变量
local defs = {
	gear1 = 1711,
	gear2 = 1712,
	gear3 = 1713,
	chest = 1714,
	timer = 0,
	c_gear = 0,
	flag = 0,
	region1 = 146
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
	{ config_id = 1711, gadget_id = 70900007, pos = { x = 1933.0, y = 206.8, z = -1559.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 1712, gadget_id = 70900007, pos = { x = 1937.4, y = 207.0, z = -1562.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 1713, gadget_id = 70900007, pos = { x = 1942.5, y = 207.1, z = -1559.8 }, rot = { x = 0.0, y = 93.0, z = 0.0 }, level = 5, persistent = true },
	{ config_id = 1714, gadget_id = 70211111, pos = { x = 1937.0, y = 207.1, z = -1559.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 146, shape = RegionShape.SPHERE, radius = 10.3, pos = { x = 1937.5, y = 206.2, z = -1559.7 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_64", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64", action = "action_EVENT_GADGET_STATE_CHANGE_64", trigger_count = 0 },
	{ name = "TIMER_EVENT_67", event = EventType.EVENT_TIMER_EVENT, source = "timer_1", condition = "", action = "action_EVENT_TIMER_EVENT_67", trigger_count = 0 },
	{ name = "TIMER_EVENT_71", event = EventType.EVENT_TIMER_EVENT, source = "timer_2", condition = "", action = "action_EVENT_TIMER_EVENT_71", trigger_count = 0 },
	{ name = "TIMER_EVENT_72", event = EventType.EVENT_TIMER_EVENT, source = "timer_3", condition = "", action = "action_EVENT_TIMER_EVENT_72", trigger_count = 0 },
	{ name = "ENTER_REGION_146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_146", action = "", tlog_tag = "小平原_三元素机关_海滩_开始" },
	{ name = "GADGET_STATE_CHANGE_383", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_383", action = "", tlog_tag = "小平原_三元素机关_海滩_结束" }
}

-- 变量
variables = {
	{ name = "switch_counter", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 1711, 1712, 1713 },
		regions = { 146 },
		triggers = { "GADGET_STATE_CHANGE_64", "TIMER_EVENT_67", "TIMER_EVENT_71", "TIMER_EVENT_72", "ENTER_REGION_146", "GADGET_STATE_CHANGE_383" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64(context, evt)
	if GadgetState.GearStart ~= evt.param1 then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64(context, evt)
	if evt.param2 == defs.gear1 then
		defs.flag = 1
		defs.timer = 1
	elseif evt.param2 == defs.gear2 then
		defs.flag = 2
		defs.timer =2
	elseif evt.param2 == defs.gear3 then
		defs.flag = 4
		defs.timer = 3
	end
	
	if defs.flag == 0 then
		return -1
	end
	
	-- 标志位校验预读取
	local temp_v = ScriptLib.GetGroupVariableValue(context, "switch_counter")
	-- 将本组内变量名为 "switch_counter" 的变量添加对应flag
	if temp_v%(2*defs.flag) < defs.flag then
		local key = temp_v%(2*defs.flag)
		ScriptLib.ChangeGroupVariableValue(context, "switch_counter", defs.flag)
	  	ScriptLib.CreateGroupTimerEvent(context, 133001087, "timer_"..defs.timer, 10)
	  	if ScriptLib.GetGroupVariableValue(context, "switch_counter") == 7 then
	 		ScriptLib.CancelGroupTimerEvent(context, 133001087, "timer_1")
	  		ScriptLib.CancelGroupTimerEvent(context, 133001087, "timer_2") 
	  		ScriptLib.CancelGroupTimerEvent(context, 133001087, "timer_3") 
	  		ScriptLib.CreateGadget(context, { config_id = defs.chest })
	  	end
	  	return 0
	else
		return -1 
	end
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_67(context, evt)
	if evt.source_name == "timer_1" then 
		defs.c_gear = defs.gear1 
		defs.flag = 1
	end 
	if evt.source_name == "timer_2" then 
		defs.c_gear = defs.gear2 
		defs.flag = 2
	end
	if evt.source_name == "timer_3" then 
		defs.c_gear = defs.gear3 
		defs.flag = 4
	end
		
	-- 将对应物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.c_gear, GadgetState.Default) then
		return -1
	end 
			
	-- 变量清理
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "switch_counter", -1*defs.flag) then
	  	return -1
	end
			
	
			
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_71(context, evt)
	if evt.source_name == "timer_1" then 
		defs.c_gear = defs.gear1 
		defs.flag = 1
	end 
	if evt.source_name == "timer_2" then 
		defs.c_gear = defs.gear2 
		defs.flag = 2
	end
	if evt.source_name == "timer_3" then 
		defs.c_gear = defs.gear3 
		defs.flag = 4
	end
		
	-- 将对应物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.c_gear, GadgetState.Default) then
		return -1
	end 
			
	-- 变量清理
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "switch_counter", -1*defs.flag) then
	  	return -1
	end
			
	
			
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_72(context, evt)
	if evt.source_name == "timer_1" then 
		defs.c_gear = defs.gear1 
		defs.flag = 1
	end 
	if evt.source_name == "timer_2" then 
		defs.c_gear = defs.gear2 
		defs.flag = 2
	end
	if evt.source_name == "timer_3" then 
		defs.c_gear = defs.gear3 
		defs.flag = 4
	end
		
	-- 将对应物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.c_gear, GadgetState.Default) then
		return -1
	end 
			
	-- 变量清理
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "switch_counter", -1*defs.flag) then
	  	return -1
	end
			
	
			
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146(context, evt)
		local def_region1 = 146
		if evt.param1 ~= def_region1 then return false end
		
		-- 判断角色数量不少于1
		if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
			return false
		end
		
		return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_383(context, evt)
		if def_chest ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
			return false
		end
		
		return true
end

-- 触发操作

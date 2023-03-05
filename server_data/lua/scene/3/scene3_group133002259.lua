--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 913, monster_id = 29020101, pos = { x = 1981.7, y = 250.1, z = -239.0 }, rot = { x = 0.0, y = 155.1, z = 0.0 }, level = 26, drop_id = 1000100 },
	{ config_id = 954, monster_id = 29020102, pos = { x = 1981.7, y = 250.1, z = -239.0 }, rot = { x = 0.0, y = 155.1, z = 0.0 }, level = 38, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2222, gadget_id = 42902003, pos = { x = 1984.2, y = 250.1, z = -244.4 }, rot = { x = 0.0, y = 155.0, z = 0.0 }, level = 15 },
	{ config_id = 2223, gadget_id = 42902004, pos = { x = 1976.4, y = 250.1, z = -217.4 }, rot = { x = 0.0, y = 160.0, z = 0.0 }, level = 15 },
	{ config_id = 2238, gadget_id = 42902005, pos = { x = 1994.0, y = 250.1, z = -260.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 2299, gadget_id = 70360004, pos = { x = 1999.6, y = 250.1, z = -280.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 259005, gadget_id = 70210106, pos = { x = 1984.9, y = 250.2, z = -246.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "北风狼蒙德", showcutscene = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, boss_chest = {monster_config_id=954, world_resin=3, life_time=600, take_num=1} }
}

-- 区域
regions = {
	{ config_id = 320, shape = RegionShape.SPHERE, radius = 48, pos = { x = 1994.0, y = 250.1, z = -260.5 } },
	{ config_id = 259002, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1992.9, y = 250.1, z = -262.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_320", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_320", action = "action_EVENT_ENTER_REGION_320" },
	{ name = "GADGET_CREATE_337", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_337", action = "action_EVENT_GADGET_CREATE_337", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_338", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_338", action = "action_EVENT_ANY_MONSTER_DIE_338" },
	{ name = "GADGET_CREATE_343", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_343", action = "action_EVENT_GADGET_CREATE_343" },
	{ name = "ANY_MONSTER_DIE_344", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344", action = "action_EVENT_ANY_MONSTER_DIE_344", trigger_count = 0 },
	{ name = "TIMER_EVENT_345", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_345" },
	{ name = "SELECT_OPTION_359", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_359", action = "action_EVENT_SELECT_OPTION_359", trigger_count = 0 },
	{ name = "QUEST_FINISH_401", event = EventType.EVENT_QUEST_FINISH, source = "45405", condition = "", action = "action_EVENT_QUEST_FINISH_401", trigger_count = 0 },
	{ name = "GROUP_REFRESH_402", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_402", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_259001", event = EventType.EVENT_CLIENT_EXECUTE, source = "LupiBoreas_Recycle", condition = "condition_EVENT_CLIENT_EXECUTE_259001", action = "action_EVENT_CLIENT_EXECUTE_259001", trigger_count = 0 },
	{ name = "ENTER_REGION_259002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259002", action = "action_EVENT_ENTER_REGION_259002", trigger_count = 0 },
	{ name = "GROUP_LOAD_259003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_259003", trigger_count = 0 },
	{ name = "GROUP_REFRESH_259004", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_259004", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "boss_exist", value = 1, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 4,
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
		-- description = LupiBoreas,
		monsters = { },
		gadgets = { },
		regions = { 320 },
		triggers = { "ENTER_REGION_320", "ANY_MONSTER_DIE_338", "TIMER_EVENT_345", "QUEST_FINISH_401", "GROUP_REFRESH_402" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = Empty,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Recycle,
		monsters = { },
		gadgets = { 2222, 2223, 2238 },
		regions = { },
		triggers = { "GADGET_CREATE_343", "ANY_MONSTER_DIE_344", "CLIENT_EXECUTE_259001" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
		regions = { 259002 },
		triggers = { "ENTER_REGION_259002", "GROUP_LOAD_259003", "GROUP_REFRESH_259004" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Operator,
		monsters = { },
		gadgets = { 2299 },
		regions = { },
		triggers = { "GADGET_CREATE_337", "SELECT_OPTION_359" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 954 },
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
function condition_EVENT_ENTER_REGION_320(context, evt)
	if evt.param1 ~= 320 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_320(context, evt)
	-- 调用提示id为 30020101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30020101) then
		return -1
	end
	
	-- 创建id为2238的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2238 }) then
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：133002259的对象,请求一次调用,并将string参数："Prepare" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002259, "Prepare", 20) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_337(context, evt)
	if 2299 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_337(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002259, 2299, {2902}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_338(context, evt)
	--判断死亡怪物的configid是否为 913
	if evt.param1 ~= 913 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_338(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2222 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2223 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2238 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_343(context, evt)
	if 2222 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_343(context, evt)
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 954, delay_time = 4 }) then
	  return -1
	end
	
	-- 调用提示id为 30020121 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30020121) then
		return -1
	end
	
	-- 将本组内变量名为 "boss_killself" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boss_killself", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_344(context, evt)
	--判断死亡怪物的configid是否为 954
	if evt.param1 ~= 954 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344(context, evt)
	if evt.param2 == 2 then
		ScriptLib.AddExtraGroupSuite(context, 133002259,5)
	else
		ScriptLib.SetGroupVariableValue(context, "boss_exist", 0)
		ScriptLib.CreateGadget(context, {config_id = 259005})
		ScriptLib.SetWeatherAreaState(context, 4, 0)
		ScriptLib.AddQuestProgress(context, "133002259")
	end
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_345(context, evt)
	-- 创建id为2222的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2222 }) then
	  return -1
	end
	
	-- 创建id为2223的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2223 }) then
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 913, delay_time = 4 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_359(context, evt)
	-- 判断是gadgetid 2299 option_id 2902
	if 2299 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_359(context, evt)
	-- 删除指定group： 133002259 ；指定config：2299；物件身上指定option：2902；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002259, 2299, 2902) then
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002259, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002259, 5)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_401(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002259, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002259, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_402(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002259, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
			return -1
		end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133002259, "Prepare") then
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：133002259的对象,请求一次调用,并将string参数："Prepare" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002259, "Prepare", 20) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_259001(context, evt)
	if evt.param1 ~= 1 then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_259001(context, evt)
	local x = ScriptLib.GetGroupVariableValue(context, "boss_exist")
	if x == 1 then
		ScriptLib.AddExtraGroupSuite(context, 133002259,5)
	end
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_259002(context, evt)
	if evt.param1 ~= 259002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"boss_exist"为1
	if ScriptLib.GetGroupVariableValue(context, "boss_exist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259002(context, evt)
	ScriptLib.SetWeatherAreaState(context, 4, 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_259003(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 5)
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		ScriptLib.AddExtraGroupSuite(context, 133002259, 5)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_259004(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 5)
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		ScriptLib.AddExtraGroupSuite(context, 133002259, 5)
	end
	return 0
end

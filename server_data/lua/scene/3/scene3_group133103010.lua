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
	{ config_id = 48, gadget_id = 70800001, pos = { x = 834.7, y = 480.6, z = 1426.3 }, rot = { x = 0.0, y = 224.5, z = 0.0 }, level = 24 },
	{ config_id = 121, gadget_id = 70360048, pos = { x = 1062.7, y = 431.8, z = 1595.8 }, rot = { x = 0.0, y = 145.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 122, gadget_id = 70360048, pos = { x = 720.5, y = 420.6, z = 1442.0 }, rot = { x = 0.0, y = 8.1, z = 0.0 }, level = 24, state = GadgetState.GearAction1, persistent = true },
	{ config_id = 124, gadget_id = 70360048, pos = { x = 772.2, y = 406.1, z = 1790.0 }, rot = { x = 0.0, y = 78.0, z = 0.0 }, level = 24, state = GadgetState.GearAction2, persistent = true },
	{ config_id = 282, gadget_id = 70211131, pos = { x = 833.9, y = 542.1, z = 1431.8 }, rot = { x = 0.0, y = 319.5, z = 0.0 }, level = 24, chest_drop_id = 2000000, drop_count = 1, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 296, gadget_id = 70360001, pos = { x = 834.7, y = 480.5, z = 1426.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.Action01 },
	{ config_id = 10001, gadget_id = 70690006, pos = { x = 836.6, y = 480.7, z = 1427.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 10002, gadget_id = 70400001, pos = { x = 1062.6, y = 433.9, z = 1595.5 }, rot = { x = 0.0, y = 230.0, z = 0.0 }, level = 24 },
	{ config_id = 10003, gadget_id = 70400001, pos = { x = 720.6, y = 422.6, z = 1442.1 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 24 },
	{ config_id = 10004, gadget_id = 70400001, pos = { x = 772.3, y = 408.2, z = 1789.9 }, rot = { x = 0.0, y = 170.2, z = 0.0 }, level = 24 },
	{ config_id = 10007, gadget_id = 70360001, pos = { x = 1062.7, y = 431.8, z = 1595.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 10008, gadget_id = 70800016, pos = { x = 834.5, y = 480.6, z = 1426.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStop },
	{ config_id = 10010, gadget_id = 70360001, pos = { x = 720.5, y = 420.6, z = 1442.0 }, rot = { x = 0.0, y = 146.1, z = 0.0 }, level = 24 },
	{ config_id = 10011, gadget_id = 70360001, pos = { x = 772.2, y = 406.1, z = 1790.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 10018, gadget_id = 70360049, pos = { x = 1062.7, y = 431.8, z = 1595.8 }, rot = { x = 0.0, y = 145.0, z = 0.0 }, level = 24 },
	{ config_id = 10019, gadget_id = 70360049, pos = { x = 720.5, y = 420.6, z = 1442.0 }, rot = { x = 0.0, y = 8.1, z = 0.0 }, level = 24 },
	{ config_id = 10020, gadget_id = 70360049, pos = { x = 772.2, y = 406.1, z = 1790.0 }, rot = { x = 0.0, y = 78.0, z = 0.0 }, level = 24 },
	{ config_id = 10024, gadget_id = 70360050, pos = { x = 834.6, y = 480.5, z = 1426.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 10029, gadget_id = 70211111, pos = { x = 832.7, y = 542.1, z = 1430.8 }, rot = { x = 0.0, y = 319.5, z = 0.0 }, level = 24, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 10033, gadget_id = 70211101, pos = { x = 835.1, y = 542.1, z = 1432.8 }, rot = { x = 0.0, y = 319.5, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 10034, gadget_id = 70310013, pos = { x = 834.0, y = 506.0, z = 1421.0 }, rot = { x = 0.0, y = 191.2, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 10035, gadget_id = 70310013, pos = { x = 844.0, y = 507.0, z = 1422.3 }, rot = { x = 0.0, y = 191.2, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 10036, gadget_id = 70310013, pos = { x = 853.5, y = 533.0, z = 1431.0 }, rot = { x = 0.0, y = 106.3, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 10037, gadget_id = 70310013, pos = { x = 851.0, y = 535.0, z = 1432.3 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 10038, gadget_id = 70310013, pos = { x = 846.2, y = 539.0, z = 1430.5 }, rot = { x = 0.0, y = 358.2, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 10039, gadget_id = 70690006, pos = { x = 850.4, y = 505.0, z = 1428.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 10040, gadget_id = 70310013, pos = { x = 848.3, y = 537.0, z = 1432.0 }, rot = { x = 0.0, y = 357.1, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 10042, gadget_id = 70360051, pos = { x = 1062.7, y = 431.8, z = 1595.8 }, rot = { x = 0.0, y = 183.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 10043, gadget_id = 70360052, pos = { x = 720.5, y = 420.6, z = 1442.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 10044, gadget_id = 70360053, pos = { x = 772.2, y = 406.1, z = 1790.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 10048, gadget_id = 70310013, pos = { x = 839.0, y = 506.0, z = 1430.4 }, rot = { x = 0.0, y = 191.2, z = 0.0 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 97, shape = RegionShape.SPHERE, radius = 5, pos = { x = 835.1, y = 542.0, z = 1429.8 } },
	{ config_id = 104, shape = RegionShape.SPHERE, radius = 5, pos = { x = 834.6, y = 483.8, z = 1426.9 } },
	{ config_id = 10022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 835.2, y = 480.6, z = 1427.6 } },
	{ config_id = 10023, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1062.1, y = 431.8, z = 1595.0 } },
	{ config_id = 10025, shape = RegionShape.SPHERE, radius = 10, pos = { x = 720.8, y = 420.4, z = 1442.2 } },
	{ config_id = 10026, shape = RegionShape.SPHERE, radius = 10, pos = { x = 772.7, y = 406.2, z = 1790.1 } },
	{ config_id = 10030, shape = RegionShape.SPHERE, radius = 8, pos = { x = 835.2, y = 476.6, z = 1427.6 } },
	{ config_id = 10031, shape = RegionShape.SPHERE, radius = 8, pos = { x = 835.2, y = 476.6, z = 1427.6 } },
	{ config_id = 10032, shape = RegionShape.SPHERE, radius = 8, pos = { x = 835.2, y = 476.6, z = 1427.6 } },
	{ config_id = 10041, shape = RegionShape.SPHERE, radius = 3, pos = { x = 835.5, y = 508.5, z = 1428.0 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_11", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11", action = "action_EVENT_GADGET_STATE_CHANGE_11" },
	{ name = "GADGET_STATE_CHANGE_12", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12", action = "action_EVENT_GADGET_STATE_CHANGE_12" },
	{ name = "GADGET_STATE_CHANGE_14", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14", action = "action_EVENT_GADGET_STATE_CHANGE_14" },
	{ name = "VARIABLE_CHANGE_15", event = EventType.EVENT_VARIABLE_CHANGE, source = "seals", condition = "condition_EVENT_VARIABLE_CHANGE_15", action = "action_EVENT_VARIABLE_CHANGE_15" },
	{ name = "ENTER_REGION_97", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_97", action = "action_EVENT_ENTER_REGION_97", trigger_count = 0 },
	{ name = "SELECT_OPTION_98", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_98", action = "action_EVENT_SELECT_OPTION_98" },
	{ name = "ENTER_REGION_104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104", action = "action_EVENT_ENTER_REGION_104" },
	{ name = "GADGET_CREATE_10005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "", trigger_count = 0 },
	{ name = "SELECT_OPTION_10006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10006", action = "action_EVENT_SELECT_OPTION_10006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_10009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10009", action = "action_EVENT_GADGET_STATE_CHANGE_10009", trigger_count = 0 },
	{ name = "GADGET_CREATE_10012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10012", action = "action_EVENT_GADGET_CREATE_10012", trigger_count = 0 },
	{ name = "SELECT_OPTION_10013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10013", action = "action_EVENT_SELECT_OPTION_10013", trigger_count = 0 },
	{ name = "GADGET_CREATE_10014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10014", action = "action_EVENT_GADGET_CREATE_10014", trigger_count = 0 },
	{ name = "SELECT_OPTION_10015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10015", action = "action_EVENT_SELECT_OPTION_10015", trigger_count = 0 },
	{ name = "GADGET_CREATE_10016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10016", action = "action_EVENT_GADGET_CREATE_10016", trigger_count = 0 },
	{ name = "SELECT_OPTION_10017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10017", action = "action_EVENT_SELECT_OPTION_10017", trigger_count = 0 },
	{ name = "TIMER_EVENT_10021", event = EventType.EVENT_TIMER_EVENT, source = "133103010_unlock", condition = "", action = "action_EVENT_TIMER_EVENT_10021", trigger_count = 0 },
	{ name = "ENTER_REGION_10022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10022", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_10023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10023", action = "action_EVENT_ENTER_REGION_10023", trigger_count = 0 },
	{ name = "ENTER_REGION_10025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10025", action = "action_EVENT_ENTER_REGION_10025", trigger_count = 0 },
	{ name = "ENTER_REGION_10026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10026", action = "action_EVENT_ENTER_REGION_10026", trigger_count = 0 },
	{ name = "GADGET_CREATE_10027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10027", action = "action_EVENT_GADGET_CREATE_10027", trigger_count = 0 },
	{ name = "GADGET_CREATE_10028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10028", action = "action_EVENT_GADGET_CREATE_10028", trigger_count = 0 },
	{ name = "ENTER_REGION_10030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10030", action = "action_EVENT_ENTER_REGION_10030", trigger_count = 0 },
	{ name = "ENTER_REGION_10031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10031", action = "action_EVENT_ENTER_REGION_10031", trigger_count = 0 },
	{ name = "ENTER_REGION_10032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10032", action = "action_EVENT_ENTER_REGION_10032", trigger_count = 0 },
	{ name = "ENTER_REGION_10041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10041", action = "action_EVENT_ENTER_REGION_10041", trigger_count = 0 },
	{ name = "SELECT_OPTION_10045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10045", action = "action_EVENT_SELECT_OPTION_10045", trigger_count = 0 },
	{ name = "SELECT_OPTION_10046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10046", action = "action_EVENT_SELECT_OPTION_10046", trigger_count = 0 },
	{ name = "SELECT_OPTION_10047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10047", action = "action_EVENT_SELECT_OPTION_10047", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "seals", value = 0, no_refresh = true },
	{ name = "flare", value = 1, no_refresh = true },
	{ name = "flareactive", value = 0, no_refresh = true },
	{ name = "crane1", value = 0, no_refresh = true },
	{ name = "crane2", value = 0, no_refresh = true },
	{ name = "crane3", value = 0, no_refresh = true },
	{ name = "cstart", value = 0, no_refresh = true },
	{ name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 48, 121, 122, 124, 296, 10007, 10008, 10010, 10011 },
		regions = { 97, 104, 10022, 10023, 10025, 10026, 10030, 10031, 10032, 10041 },
		triggers = { "GADGET_STATE_CHANGE_11", "GADGET_STATE_CHANGE_12", "GADGET_STATE_CHANGE_14", "VARIABLE_CHANGE_15", "ENTER_REGION_97", "SELECT_OPTION_98", "ENTER_REGION_104", "GADGET_CREATE_10005", "SELECT_OPTION_10006", "GADGET_STATE_CHANGE_10009", "GADGET_CREATE_10012", "SELECT_OPTION_10013", "GADGET_CREATE_10014", "SELECT_OPTION_10015", "GADGET_CREATE_10016", "SELECT_OPTION_10017", "TIMER_EVENT_10021", "ENTER_REGION_10022", "ENTER_REGION_10023", "ENTER_REGION_10025", "ENTER_REGION_10026", "GADGET_CREATE_10027", "GADGET_CREATE_10028", "ENTER_REGION_10030", "ENTER_REGION_10031", "ENTER_REGION_10032", "ENTER_REGION_10041", "SELECT_OPTION_10045", "SELECT_OPTION_10046", "SELECT_OPTION_10047" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 282, 10001, 10029, 10033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 121, 122, 124, 10042, 10043, 10044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 10002, 10003, 10004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 10018, 10019, 10020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 10024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 10034, 10035, 10036, 10037, 10038, 10039, 10040, 10048 },
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
function condition_EVENT_GADGET_STATE_CHANGE_11(context, evt)
	if 121 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11(context, evt)
	-- 通知场景上的所有玩家播放名字为310301001 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301001, 0) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "seals" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "seals", 1) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_progress1") then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 2, 2) then
	      return -1
	    end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 6)
	
	-- 删除指定group： 133103010 ；指定config：121；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 121, 31) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10002 }) then
		    return -1
		end
		
	
	-- 将本组内变量名为 "crane1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "crane1", 1) then
	  return -1
	end
	
	-- 创建id为10042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10042 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12(context, evt)
	if 122 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12(context, evt)
	-- 通知场景上的所有玩家播放名字为310301002 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301002, 0) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "seals" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "seals", 1) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_progress2") then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 2, 3) then
	      return -1
	    end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 6)
	
	-- 删除指定group： 133103010 ；指定config：122；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 122, 31) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
		    return -1
		end
		
	
	-- 将本组内变量名为 "crane2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "crane2", 1) then
	  return -1
	end
	
	-- 创建id为10043的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10043 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14(context, evt)
	if 124 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14(context, evt)
	-- 通知场景上的所有玩家播放名字为310301003 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301003, 0) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "seals" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "seals", 1) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_progress3") then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 2, 4) then
	      return -1
	    end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 6)
	
	-- 删除指定group： 133103010 ；指定config：124；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 124, 31) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10004 }) then
		    return -1
		end
		
	
	-- 将本组内变量名为 "crane3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "crane3", 1) then
	  return -1
	end
	
	-- 创建id为10044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10044 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 判断变量"seals"为3
	if ScriptLib.GetGroupVariableValue(context, "seals") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {24}) then
		return -1
	end
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：170；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 170) then
		return -1
	end
	
	-- 将configid为 48 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将本组内变量名为 "flareactive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flareactive", 0) then
	  return -1
	end
	
	-- 将本组内变量名为 "cstart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cstart", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_97(context, evt)
	if evt.param1 ~= 97 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_97(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_98(context, evt)
	-- 判断是gadgetid 296 option_id 24
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_98(context, evt)
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 24) then
		return -1
	end
	
	-- 将configid为 48 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 2)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 3)
	
	-- 解锁目标47
	if 0 ~= ScriptLib.UnlockForce(context, 47) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 3, 5) then
	      return -1
	    end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_finish") then
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_104(context, evt)
	if evt.param1 ~= 104 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"cstart"为0
	if ScriptLib.GetGroupVariableValue(context, "cstart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 1, 1) then
	      return -1
	    end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {170}) then
		return -1
	end
	
	-- 将本组内变量名为 "cstart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cstart", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件
function condition_EVENT_SELECT_OPTION_10006(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"flare"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "flare", 133103010) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 4)
	
	-- 针对当前group内变量名为 "flare" 的变量，进行修改，变化值为 0
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flare", 0) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "flareactive" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flareactive", 1) then
	  return -1
	end
	
	-- 调用提示id为 1109011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1109011) then
		return -1
	end
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：170；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 170) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	if 10008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10012(context, evt)
	if 121 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"crane1"为0
	if ScriptLib.GetGroupVariableValue(context, "crane1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 121, {31}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10013(context, evt)
	-- 判断是gadgetid 121 option_id 31
	if 121 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10013(context, evt)
	-- 将configid为 121 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121, GadgetState.Action01) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10014(context, evt)
	if 122 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"crane2"为0
	if ScriptLib.GetGroupVariableValue(context, "crane2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 122, {31}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10015(context, evt)
	-- 判断是gadgetid 122 option_id 31
	if 122 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10015(context, evt)
	-- 将configid为 122 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.Action01) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10016(context, evt)
	if 124 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"crane3"为0
	if ScriptLib.GetGroupVariableValue(context, "crane3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 124, {31}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10017(context, evt)
	-- 判断是gadgetid 124 option_id 31
	if 124 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10017(context, evt)
	-- 将configid为 124 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124, GadgetState.Action01) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_10021(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10022(context, evt)
	if evt.param1 ~= 10022 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_10023(context, evt)
	if evt.param1 ~= 10023 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10023(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10025(context, evt)
	if evt.param1 ~= 10025 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10025(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10026(context, evt)
	if evt.param1 ~= 10026 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10027(context, evt)
	if 296 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"seals"为3
	if ScriptLib.GetGroupVariableValue(context, "seals") ~= 3 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {24}) then
		return -1
	end
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：170；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 170) then
		return -1
	end
	
	-- 将configid为 48 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将本组内变量名为 "flareactive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flareactive", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10028(context, evt)
	if 296 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"cstart"为0
	if ScriptLib.GetGroupVariableValue(context, "cstart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {170}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10030(context, evt)
	if evt.param1 ~= 10030 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	-- 判断变量"crane1"为0
	if ScriptLib.GetGroupVariableValue(context, "crane1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10030(context, evt)
	-- 创建id为10002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10002 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10031(context, evt)
	if evt.param1 ~= 10031 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	-- 判断变量"crane2"为0
	if ScriptLib.GetGroupVariableValue(context, "crane2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10031(context, evt)
	-- 创建id为10003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10003 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10032(context, evt)
	if evt.param1 ~= 10032 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	-- 判断变量"crane3"为0
	if ScriptLib.GetGroupVariableValue(context, "crane3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10032(context, evt)
	-- 创建id为10004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10004 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10041(context, evt)
	if evt.param1 ~= 10041 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10041(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10045(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"crane1"为1
	if ScriptLib.GetGroupVariableValue(context, "crane1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10045(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10002 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10046(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"crane2"为1
	if ScriptLib.GetGroupVariableValue(context, "crane2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10046(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10047(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"crane3"为1
	if ScriptLib.GetGroupVariableValue(context, "crane3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10047(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10004 }) then
		    return -1
		end
		
	
	return 0
end

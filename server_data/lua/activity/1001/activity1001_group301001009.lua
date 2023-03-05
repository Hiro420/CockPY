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
	{ config_id = 9001, gadget_id = 70800018, pos = { x = -492.4, y = 203.8, z = 285.7 }, rot = { x = 0.0, y = 314.2, z = 0.0 }, level = 1 },
	{ config_id = 9002, gadget_id = 70800019, pos = { x = -492.4, y = 203.8, z = 285.7 }, rot = { x = 0.0, y = 314.2, z = 0.0 }, level = 1 },
	{ config_id = 9003, gadget_id = 70800020, pos = { x = -492.4, y = 203.8, z = 285.7 }, rot = { x = 0.0, y = 314.2, z = 0.0 }, level = 1 },
	{ config_id = 9009, gadget_id = 70800026, pos = { x = -492.4, y = 203.8, z = 285.7 }, rot = { x = 0.0, y = 134.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_9004", event = EventType.EVENT_QUEST_FINISH, source = "4000108", condition = "", action = "action_EVENT_QUEST_FINISH_9004" },
	{ name = "QUEST_FINISH_9005", event = EventType.EVENT_QUEST_FINISH, source = "4000506", condition = "", action = "action_EVENT_QUEST_FINISH_9005" },
	{ name = "QUEST_FINISH_9006", event = EventType.EVENT_QUEST_FINISH, source = "4000108", condition = "", action = "action_EVENT_QUEST_FINISH_9006" },
	{ name = "SEALAMP_PHASE_CHANGE_9007", event = EventType.EVENT_SEALAMP_PHASE_CHANGE, source = "", condition = "condition_EVENT_SEALAMP_PHASE_CHANGE_9007", action = "action_EVENT_SEALAMP_PHASE_CHANGE_9007" },
	{ name = "SEALAMP_PHASE_CHANGE_9008", event = EventType.EVENT_SEALAMP_PHASE_CHANGE, source = "", condition = "condition_EVENT_SEALAMP_PHASE_CHANGE_9008", action = "action_EVENT_SEALAMP_PHASE_CHANGE_9008" },
	{ name = "SEALAMP_PHASE_CHANGE_9010", event = EventType.EVENT_SEALAMP_PHASE_CHANGE, source = "", condition = "", action = "action_EVENT_SEALAMP_PHASE_CHANGE_9010" }
}

-- 变量
variables = {
	{ name = "Quest 1 State", value = 0, no_refresh = true },
	{ name = "Quest 2 State", value = 0, no_refresh = true },
	{ name = "Lamp State", value = 1, no_refresh = true }
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
		gadgets = { 9001 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "QUEST_FINISH_9006", "SEALAMP_PHASE_CHANGE_9007", "SEALAMP_PHASE_CHANGE_9008", "SEALAMP_PHASE_CHANGE_9010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9002 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "SEALAMP_PHASE_CHANGE_9007", "SEALAMP_PHASE_CHANGE_9008", "SEALAMP_PHASE_CHANGE_9010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9003 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "SEALAMP_PHASE_CHANGE_9007", "SEALAMP_PHASE_CHANGE_9008", "SEALAMP_PHASE_CHANGE_9010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 9009 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "SEALAMP_PHASE_CHANGE_9007", "SEALAMP_PHASE_CHANGE_9008", "SEALAMP_PHASE_CHANGE_9010" },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_9004(context, evt)
	-- 将本组内变量名为 "Quest 1 State" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest 1 State", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_9005(context, evt)
	-- 将本组内变量名为 "Quest 2 State" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest 2 State", 1) then
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 4 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_9006(context, evt)
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "Lamp State", 301001009) == 2 then
	ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 2 })
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "Lamp State", 301001009) == 3 then
	ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 3 })
	end
	return 0
	
	
end

-- 触发条件
function condition_EVENT_SEALAMP_PHASE_CHANGE_9007(context, evt)
	-- 海灯节阶段变化
	  if 0 ~= 0 then
	    if 0 ~= evt.param1 and evt.param1 ~= nil then
	      return false
	    end
	  end
	
	  if 2 ~= 0 then
	    if 2 ~= evt.param2 and evt.param2 ~= nil then
	      return false
	    end
	  end
	
	  if 0 ~= 0 then
	    if 0 ~= evt.param3 and evt.param3 ~= nil then
	      return false
	    end
	  end
	
	-- 判断变量"Quest 1 State"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 1 State", 301001009) ~= 1 then
			return false
	end
	
	-- 判断变量"Quest 2 State"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 2 State", 301001009) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEALAMP_PHASE_CHANGE_9007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SEALAMP_PHASE_CHANGE_9008(context, evt)
	-- 海灯节阶段变化
	  if 0 ~= 0 then
	    if 0 ~= evt.param1 and evt.param1 ~= nil then
	      return false
	    end
	  end
	
	  if 3 ~= 0 then
	    if 3 ~= evt.param2 and evt.param2 ~= nil then
	      return false
	    end
	  end
	
	  if 0 ~= 0 then
	    if 0 ~= evt.param3 and evt.param3 ~= nil then
	      return false
	    end
	  end
	
	-- 判断变量"Quest 1 State"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 1 State", 301001009) ~= 1 then
			return false
	end
	
	-- 判断变量"Quest 2 State"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 2 State", 301001009) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEALAMP_PHASE_CHANGE_9008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 3 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_SEALAMP_PHASE_CHANGE_9010(context, evt)
	if evt.param2 == 2 then
	ScriptLib.SetGroupVariableValueByGroup(context, "Lamp State", 2 , 301001009)
	end
	
	if evt.param2 == 3 then
	ScriptLib.SetGroupVariableValueByGroup(context, "Lamp State", 3 , 301001009)
	end
	
	return 0
	
end

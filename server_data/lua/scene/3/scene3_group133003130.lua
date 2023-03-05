-- Trigger变量
local defs = {
	gadget_id_1 = 2609
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
	{ config_id = 2601, gadget_id = 70500000, pos = { x = 2517.5, y = 271.1, z = -1472.9 }, rot = { x = 3.9, y = 359.9, z = 359.5 }, level = 10, point_type = 3011, isOneoff = true },
	{ config_id = 2602, gadget_id = 70900019, pos = { x = 2517.6, y = 265.6, z = -1473.1 }, rot = { x = 0.0, y = 88.1, z = 0.0 }, level = 10 },
	{ config_id = 2609, gadget_id = 70211101, pos = { x = 2518.5, y = 268.2, z = -1458.7 }, rot = { x = 0.0, y = 181.9, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_103", event = EventType.EVENT_GATHER, source = "2601", condition = "condition_EVENT_GATHER_103", action = "action_EVENT_GATHER_103" },
	{ name = "GATHER_119", event = EventType.EVENT_GATHER, source = "2603", condition = "condition_EVENT_GATHER_119", action = "action_EVENT_GATHER_119", tag = "9" },
	{ name = "CHALLENGE_SUCCESS_120", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_120", action = "action_EVENT_CHALLENGE_SUCCESS_120", tag = "9" },
	{ name = "CHALLENGE_FAIL_121", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "condition_EVENT_CHALLENGE_FAIL_121", action = "action_EVENT_CHALLENGE_FAIL_121", tag = "9" },
	{ name = "GATHER_141", event = EventType.EVENT_GATHER, source = "2601", condition = "", action = "action_EVENT_GATHER_141" }
}

-- 变量
variables = {
	{ name = "get1", value = 1, no_refresh = false }
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
		gadgets = { 2601, 2602 },
		regions = { },
		triggers = { "GATHER_141" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2602 },
		regions = { },
		triggers = { "GATHER_119", "CHALLENGE_SUCCESS_120", "CHALLENGE_FAIL_121" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 2602 },
		regions = { },
		triggers = { "GATHER_103" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_103(context, evt)
	-- 判断变量"get1"为1
	if ScriptLib.GetGroupVariableValue(context, "get1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_103(context, evt)
	-- 创建编号为2601（该挑战的识别id),挑战内容为128的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	ScriptLib.PrintLog("Enter Trigger 103")
	if 0 ~= ScriptLib.ActiveChallenge(context, 2601, 128, 50, 20, 9, 5) then
	ScriptLib.PrintLog("Create fail")
		return -1
	end
	ScriptLib.PrintLog("Create Success")
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003130, suite = 2 }) then
	ScriptLib.PrintLog("refresh 133003130  fail")
			return -1
		end
	ScriptLib.PrintLog("refresh 133003130 Success")
	
	-- 变量"get1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "get1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_119(context, evt)
	-- 判断变量"get1"为0
	ScriptLib.PrintLog("Enter 119")
	if ScriptLib.GetGroupVariableValue(context, "get1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_119(context, evt)
	-- 变量"get1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "get1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_120(context, evt)
	-- 判断变量"get1"为0
	if ScriptLib.GetGroupVariableValue(context, "get1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_120(context, evt)
		-- 重新生成指定group，指定suite
	ScriptLib.PrintLog("challenge success")
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003130, suite = 3 }) then
			return -1
		end
	ScriptLib.PrintLog("refresh 133003130  to 3 suc")
	
	-- 创建id为2609的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_121(context, evt)
	-- 判断变量"get1"为0
	if ScriptLib.GetGroupVariableValue(context, "get1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_121(context, evt)
		-- 重新生成指定group，指定suite
	ScriptLib.PrintLog("Challenge fail")
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003130, suite = 3 }) then
			return -1
		end
	ScriptLib.PrintLog("challenge fail cause refresh to 3")
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_141(context, evt)
	-- 创建id为2609的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2609 }) then
	  return -1
	end
	
	return 0
end

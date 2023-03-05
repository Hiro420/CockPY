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
	{ config_id = 538, gadget_id = 70900007, pos = { x = 97.3, y = 0.5, z = 388.7 }, rot = { x = 0.0, y = 180.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_150", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150", action = "action_EVENT_GADGET_STATE_CHANGE_150", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_151", event = EventType.EVENT_CHALLENGE_FAIL, source = "7788", condition = "", action = "action_EVENT_CHALLENGE_FAIL_151", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_152", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "7788", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_152", trigger_count = 0 }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 538 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_150", "CHALLENGE_FAIL_151", "CHALLENGE_SUCCESS_152" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150(context, evt)
	if 538 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000075, suite = 2 }) then
			return -1
		end
	
	-- 创建编号为7788（该挑战的识别id),挑战内容为171的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 7788, 171, 60, 0, 0, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_151(context, evt)
	-- 将configid为 538 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 538, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000075, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_152(context, evt)
	-- 调用提示id为 20020205 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20020205) then
		return -1
	end
	
	return 0
end

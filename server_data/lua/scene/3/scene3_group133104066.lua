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
	{ config_id = 683, gadget_id = 70900007, pos = { x = 86.4, y = 236.3, z = 816.4 }, rot = { x = 0.5, y = 359.9, z = 0.6 }, level = 19, persistent = true },
	{ config_id = 684, gadget_id = 70211111, pos = { x = 84.5, y = 236.2, z = 818.1 }, rot = { x = 0.8, y = 312.6, z = 0.2 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 685, gadget_id = 70220005, pos = { x = 100.5, y = 235.5, z = 824.4 }, rot = { x = 350.2, y = 358.3, z = 19.1 }, level = 19 },
	{ config_id = 686, gadget_id = 70220005, pos = { x = 85.1, y = 235.9, z = 812.9 }, rot = { x = 0.7, y = 360.0, z = 2.7 }, level = 19 },
	{ config_id = 689, gadget_id = 70220005, pos = { x = 74.2, y = 235.1, z = 835.8 }, rot = { x = 352.5, y = 84.6, z = 28.9 }, level = 19 },
	{ config_id = 691, gadget_id = 70900201, pos = { x = 100.3, y = 236.3, z = 824.3 }, rot = { x = 350.3, y = 357.8, z = 19.2 }, level = 19 },
	{ config_id = 692, gadget_id = 70900201, pos = { x = 85.1, y = 236.8, z = 812.9 }, rot = { x = 0.7, y = 360.0, z = 2.7 }, level = 19 },
	{ config_id = 695, gadget_id = 70900201, pos = { x = 74.2, y = 235.9, z = 835.8 }, rot = { x = 25.0, y = 76.7, z = 317.6 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_326", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_326", action = "action_EVENT_GADGET_STATE_CHANGE_326", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_327", event = EventType.EVENT_CHALLENGE_FAIL, source = "310401", condition = "", action = "action_EVENT_CHALLENGE_FAIL_327" },
	{ name = "CHALLENGE_SUCCESS_328", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "310401", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_328" },
	{ name = "ANY_GADGET_DIE_329", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_329", action = "action_EVENT_ANY_GADGET_DIE_329", trigger_count = 0, tag = "324" },
	{ name = "ANY_GADGET_DIE_330", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_330", action = "action_EVENT_ANY_GADGET_DIE_330", trigger_count = 0, tag = "324" },
	{ name = "ANY_GADGET_DIE_333", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_333", action = "action_EVENT_ANY_GADGET_DIE_333", trigger_count = 0, tag = "324" },
	{ name = "GADGET_CREATE_66001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66001", action = "action_EVENT_GADGET_CREATE_66001", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 683 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_326", "CHALLENGE_FAIL_327", "CHALLENGE_SUCCESS_328", "GADGET_CREATE_66001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 685, 686, 689 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_329", "ANY_GADGET_DIE_330", "ANY_GADGET_DIE_333" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 691 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 692 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 695 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
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
function condition_EVENT_GADGET_STATE_CHANGE_326(context, evt)
	if 683 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_326(context, evt)
	-- 创建编号为310401（该挑战的识别id),挑战内容为126的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 310401, 126, 15, 2, 324, 3) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104066, 8)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_327(context, evt)
	-- 将configid为 683 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 683, GadgetState.Default) then
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104066, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104066, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_328(context, evt)
	-- 创建id为684的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 684 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_329(context, evt)
	if 685 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_329(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104066, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_330(context, evt)
	if 686 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_330(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104066, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_333(context, evt)
	if 689 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_333(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104066, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66001(context, evt)
	if 683 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66001(context, evt)
	-- 将configid为 683 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 683, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- Trigger变量
local defs = {
	box_1 = 1037,
	box_2 = 1038,
	box_3 = 1039,
	box_4 = 1041,
	box_5 = 1042,
	box_6 = 1043,
	box_7 = 0
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
	{ config_id = 1036, gadget_id = 70900007, pos = { x = 1690.8, y = 212.8, z = 155.3 }, rot = { x = 351.6, y = 321.4, z = 355.3 }, level = 16, persistent = true },
	{ config_id = 1037, gadget_id = 70220005, pos = { x = 1701.2, y = 218.0, z = 176.3 }, rot = { x = 7.6, y = 55.9, z = 8.5 }, level = 16 },
	{ config_id = 1039, gadget_id = 70220005, pos = { x = 1705.3, y = 219.5, z = 164.0 }, rot = { x = 7.6, y = 225.0, z = 5.3 }, level = 16 },
	{ config_id = 1040, gadget_id = 70211111, pos = { x = 1689.9, y = 213.0, z = 158.7 }, rot = { x = 357.3, y = 180.8, z = 9.8 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 1042, gadget_id = 70220005, pos = { x = 1696.3, y = 211.9, z = 165.8 }, rot = { x = 6.3, y = 213.9, z = 1.9 }, level = 16 },
	{ config_id = 1044, gadget_id = 70900201, pos = { x = 1701.1, y = 218.7, z = 176.6 }, rot = { x = 11.3, y = 1.6, z = 358.9 }, level = 16 },
	{ config_id = 1046, gadget_id = 70900201, pos = { x = 1705.3, y = 220.3, z = 164.1 }, rot = { x = 350.9, y = 359.9, z = 1.7 }, level = 16 },
	{ config_id = 1048, gadget_id = 70900201, pos = { x = 1696.0, y = 212.7, z = 165.9 }, rot = { x = 6.3, y = 213.9, z = 1.9 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_511", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_511", action = "action_EVENT_GADGET_STATE_CHANGE_511", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_512", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_512", action = "", trigger_count = 0, tag = "324" },
	{ name = "CHALLENGE_SUCCESS_513", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_513" },
	{ name = "CHALLENGE_FAIL_514", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_514", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_515", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_515", action = "action_EVENT_ANY_GADGET_DIE_515", trigger_count = 0, tag = "324" },
	{ name = "ANY_GADGET_DIE_516", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_516", action = "action_EVENT_ANY_GADGET_DIE_516", trigger_count = 0, tag = "324" },
	{ name = "ANY_GADGET_DIE_517", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_517", action = "action_EVENT_ANY_GADGET_DIE_517", trigger_count = 0, tag = "324" },
	{ name = "GADGET_CREATE_269001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_269001", action = "action_EVENT_GADGET_CREATE_269001", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "destroycount", value = 0, no_refresh = false },
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
		gadgets = { 1036 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_511", "CHALLENGE_SUCCESS_513", "CHALLENGE_FAIL_514", "GADGET_CREATE_269001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1037, 1039, 1042 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_512", "ANY_GADGET_DIE_515", "ANY_GADGET_DIE_516", "ANY_GADGET_DIE_517" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 1044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 1046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 1048 },
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
function condition_EVENT_GADGET_STATE_CHANGE_511(context, evt)
	if 1036 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_511(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为126的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 126, 40, 2, 324, 3) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102269, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102269, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102269, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102269, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_512(context, evt)
	if 
	box_1 ~= evt.param1 
	and box_2 ~= evt.param1 
	and box_3 ~= evt.param1 
	and box_4 ~= evt.param1
	and box_5 ~= evt.param1
	and box_6 ~= evt.param1
	and box_7 ~= evt.param1
	then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_513(context, evt)
	-- 创建id为1040的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1040 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_514(context, evt)
	-- 改变指定group组133102269中， configid为1036的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133102269, 1036, GadgetState.Default) then
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102269, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102269, suite = 1 }) then
			return -1
		end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_515(context, evt)
	if 1037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_515(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102269, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_516(context, evt)
	if 1039 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_516(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102269, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_517(context, evt)
	if 1042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_517(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102269, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_269001(context, evt)
	if 1036 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_269001(context, evt)
	-- 将configid为 1036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1036, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

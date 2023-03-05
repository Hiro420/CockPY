-- Trigger变量
local defs = {
	box_1 = 375002,
	box_2 = 375003,
	box_3 = 375005,
	box_4 = 375016,
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
	{ config_id = 363001, gadget_id = 70900007, pos = { x = 1288.5, y = 200.4, z = -221.9 }, rot = { x = 0.0, y = 320.1, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 363002, gadget_id = 70220005, pos = { x = 1279.0, y = 200.3, z = -224.1 }, rot = { x = 0.0, y = 54.4, z = 0.0 }, level = 16 },
	{ config_id = 363003, gadget_id = 70220005, pos = { x = 1257.5, y = 202.1, z = -223.8 }, rot = { x = 0.0, y = 223.8, z = 0.0 }, level = 16 },
	{ config_id = 363004, gadget_id = 70211111, pos = { x = 1271.9, y = 200.0, z = -223.8 }, rot = { x = 359.5, y = 238.4, z = 359.2 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 363005, gadget_id = 70220005, pos = { x = 1258.9, y = 200.1, z = -211.3 }, rot = { x = 0.0, y = 213.0, z = 0.0 }, level = 16 },
	{ config_id = 363006, gadget_id = 70900201, pos = { x = 1278.9, y = 201.0, z = -223.8 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 16 },
	{ config_id = 363007, gadget_id = 70900201, pos = { x = 1257.5, y = 203.0, z = -223.6 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 16 },
	{ config_id = 363008, gadget_id = 70900201, pos = { x = 1258.7, y = 200.9, z = -211.3 }, rot = { x = 0.0, y = 213.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_363009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_363009", action = "action_EVENT_GADGET_STATE_CHANGE_363009", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_363010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363010", action = "", trigger_count = 0, tag = "324" },
	{ name = "CHALLENGE_SUCCESS_363011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363011" },
	{ name = "CHALLENGE_FAIL_363012", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_363012", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_363013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363013", action = "action_EVENT_ANY_GADGET_DIE_363013", trigger_count = 0, tag = "324" },
	{ name = "ANY_GADGET_DIE_363014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363014", action = "action_EVENT_ANY_GADGET_DIE_363014", trigger_count = 0, tag = "324" },
	{ name = "ANY_GADGET_DIE_363015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363015", action = "action_EVENT_ANY_GADGET_DIE_363015", trigger_count = 0, tag = "324" },
	{ name = "GADGET_CREATE_363016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_363016", action = "action_EVENT_GADGET_CREATE_363016", trigger_count = 0 }
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
		gadgets = { 363001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_363009", "CHALLENGE_SUCCESS_363011", "CHALLENGE_FAIL_363012", "GADGET_CREATE_363016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 363002, 363003, 363005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363010", "ANY_GADGET_DIE_363013", "ANY_GADGET_DIE_363014", "ANY_GADGET_DIE_363015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 363006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 363007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 363008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_363009(context, evt)
	if 363001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_363009(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为126的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 126, 15, 2, 324, 3) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102363, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102363, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102363, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102363, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363010(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_363011(context, evt)
	-- 创建id为363004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363004 }) then
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
function action_EVENT_CHALLENGE_FAIL_363012(context, evt)
	-- 改变指定group组133102363中， configid为363001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133102363, 363001, GadgetState.Default) then
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102363, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102363, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363013(context, evt)
	if 363002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363013(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102363, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363014(context, evt)
	if 363003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102363, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363015(context, evt)
	if 363005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363015(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102363, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_363016(context, evt)
	if 363001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_363016(context, evt)
	-- 将configid为 363001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31002, monster_id = 21010201, pos = { x = 1386.3, y = 205.9, z = 527.1 }, rot = { x = 0.0, y = 142.8, z = 0.0 }, level = 1 },
	{ config_id = 31003, monster_id = 21010301, pos = { x = 1388.1, y = 207.0, z = 522.5 }, rot = { x = 0.0, y = 131.0, z = 0.0 }, level = 1 },
	{ config_id = 31004, monster_id = 21010301, pos = { x = 1389.4, y = 206.9, z = 524.3 }, rot = { x = 0.0, y = 131.0, z = 0.0 }, level = 1 },
	{ config_id = 31009, monster_id = 21020301, pos = { x = 1385.1, y = 207.8, z = 494.1 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 1 },
	{ config_id = 31010, monster_id = 21011201, pos = { x = 1388.3, y = 208.2, z = 494.5 }, rot = { x = 0.0, y = 9.8, z = 0.0 }, level = 1 },
	{ config_id = 31011, monster_id = 21011201, pos = { x = 1387.7, y = 208.4, z = 497.7 }, rot = { x = 0.0, y = 63.9, z = 0.0 }, level = 1 },
	{ config_id = 31012, monster_id = 21011201, pos = { x = 1389.5, y = 208.4, z = 496.3 }, rot = { x = 0.0, y = 39.7, z = 0.0 }, level = 1 },
	{ config_id = 31013, monster_id = 21010501, pos = { x = 1386.1, y = 213.2, z = 509.2 }, rot = { x = 0.0, y = 84.6, z = 0.0 }, level = 1 },
	{ config_id = 31014, monster_id = 20030201, pos = { x = 1393.4, y = 211.3, z = 500.4 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 1 },
	{ config_id = 31015, monster_id = 21010501, pos = { x = 1400.1, y = 213.1, z = 492.5 }, rot = { x = 0.0, y = 19.3, z = 0.0 }, level = 1 },
	{ config_id = 31016, monster_id = 21020101, pos = { x = 1387.8, y = 206.5, z = 524.8 }, rot = { x = 0.0, y = 137.8, z = 0.0 }, level = 1 },
	{ config_id = 31017, monster_id = 21020201, pos = { x = 1388.9, y = 208.5, z = 497.7 }, rot = { x = 0.0, y = 47.4, z = 0.0 }, level = 1 },
	{ config_id = 31018, monster_id = 20030201, pos = { x = 1396.2, y = 211.3, z = 498.8 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 1 },
	{ config_id = 31019, monster_id = 20030201, pos = { x = 1391.3, y = 211.3, z = 501.8 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31001, gadget_id = 70350023, pos = { x = 1401.4, y = 209.6, z = 510.0 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1 },
	{ config_id = 31005, gadget_id = 70220004, pos = { x = 1393.4, y = 208.9, z = 497.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 31006, gadget_id = 70220004, pos = { x = 1384.5, y = 208.2, z = 497.8 }, rot = { x = 352.0, y = 359.8, z = 3.6 }, level = 1 },
	{ config_id = 31007, gadget_id = 70220005, pos = { x = 1390.9, y = 208.0, z = 518.1 }, rot = { x = 6.2, y = 359.6, z = 352.0 }, level = 1 },
	{ config_id = 31008, gadget_id = 70220005, pos = { x = 1388.7, y = 206.9, z = 523.4 }, rot = { x = 10.7, y = 0.9, z = 11.3 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SELECT_OPTION_31020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_31020", action = "action_EVENT_SELECT_OPTION_31020" },
	{ name = "CHALLENGE_SUCCESS_31021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_31021", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_31022", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_31022", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_31023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_31023", action = "action_EVENT_ANY_MONSTER_LIVE_31023" },
	{ name = "ANY_MONSTER_DIE_31024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31024", action = "action_EVENT_ANY_MONSTER_DIE_31024" },
	{ name = "ANY_MONSTER_DIE_31025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31025", action = "action_EVENT_ANY_MONSTER_DIE_31025" },
	{ name = "ANY_MONSTER_DIE_31026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31026", action = "action_EVENT_ANY_MONSTER_DIE_31026" },
	{ name = "GADGET_CREATE_31027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31027", action = "action_EVENT_GADGET_CREATE_31027" }
}

-- 变量
variables = {
	{ name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 31001 },
		regions = { },
		triggers = { "SELECT_OPTION_31020", "CHALLENGE_SUCCESS_31021", "CHALLENGE_FAIL_31022", "ANY_MONSTER_LIVE_31023", "ANY_MONSTER_DIE_31024", "ANY_MONSTER_DIE_31025", "ANY_MONSTER_DIE_31026", "GADGET_CREATE_31027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 31005, 31006, 31007, 31008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 31002, 31003, 31004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 31013, 31014, 31015, 31018, 31019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 31009, 31010, 31011, 31012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 31016, 31017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
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
function condition_EVENT_SELECT_OPTION_31020(context, evt)
	if 31001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_31020(context, evt)
	-- 删除指定group： 250015031 ；指定config：31001；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250015031, 31001, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 3)
	
	-- 将configid为 31001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_31021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015031, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 31001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_31022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015031, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 31001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015031, 31001, {2902}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_31023(context, evt)
	if 31002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_31023(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为10的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 10, 250015031, 14, 31001, 0) then
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015031) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015031) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31025(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015031) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_31027(context, evt)
	if 31001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_31027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015031, 31001, {2902}) then
		return -1
	end
	
	return 0
end

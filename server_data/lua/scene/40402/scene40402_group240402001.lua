--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010701, pos = { x = 9.4, y = 0.0, z = 8.8 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20010601, pos = { x = 0.1, y = 0.1, z = 0.6 }, rot = { x = 0.0, y = 317.2, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 23030101, pos = { x = -2.3, y = 0.2, z = -3.4 }, rot = { x = 0.0, y = 91.1, z = 0.0 }, level = 1, affix = { 9002 }, isElite = true },
	{ config_id = 1004, monster_id = 21010901, pos = { x = 12.3, y = 0.0, z = -8.2 }, rot = { x = 0.0, y = 341.9, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 1005, monster_id = 21010901, pos = { x = -10.5, y = 0.0, z = -10.1 }, rot = { x = 0.0, y = 32.7, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 1009, monster_id = 20010501, pos = { x = -11.6, y = 0.3, z = -5.4 }, rot = { x = 0.0, y = 50.4, z = 0.0 }, level = 1 },
	{ config_id = 1010, monster_id = 20010501, pos = { x = -6.0, y = 0.3, z = 8.3 }, rot = { x = 0.0, y = 112.8, z = 0.0 }, level = 1 },
	{ config_id = 1011, monster_id = 20010601, pos = { x = 9.8, y = 0.3, z = -6.7 }, rot = { x = 0.0, y = 317.2, z = 0.0 }, level = 1 },
	{ config_id = 1012, monster_id = 20010701, pos = { x = 9.1, y = 0.3, z = 7.1 }, rot = { x = 0.0, y = 230.0, z = 0.0 }, level = 1 },
	{ config_id = 1013, monster_id = 20010501, pos = { x = 0.3, y = 0.3, z = -10.3 }, rot = { x = 0.0, y = 2.3, z = 0.0 }, level = 1 },
	{ config_id = 1014, monster_id = 20010501, pos = { x = 7.5, y = 0.3, z = 10.5 }, rot = { x = 0.0, y = 229.8, z = 0.0 }, level = 1 },
	{ config_id = 1015, monster_id = 20010501, pos = { x = -11.5, y = 0.3, z = -7.1 }, rot = { x = 0.0, y = 52.8, z = 0.0 }, level = 1 },
	{ config_id = 1016, monster_id = 20010501, pos = { x = 10.7, y = 0.3, z = -5.7 }, rot = { x = 0.0, y = 297.0, z = 0.0 }, level = 1 },
	{ config_id = 1017, monster_id = 20010701, pos = { x = -7.3, y = 0.3, z = 8.0 }, rot = { x = 0.0, y = 136.8, z = 0.0 }, level = 1 },
	{ config_id = 1018, monster_id = 20010501, pos = { x = -0.3, y = 0.3, z = -9.6 }, rot = { x = 0.0, y = 357.4, z = 0.0 }, level = 1 },
	{ config_id = 1019, monster_id = 20010501, pos = { x = -7.5, y = 0.3, z = 9.0 }, rot = { x = 0.0, y = 156.5, z = 0.0 }, level = 1 },
	{ config_id = 1020, monster_id = 20010501, pos = { x = 11.3, y = 0.3, z = -5.8 }, rot = { x = 0.0, y = 295.1, z = 0.0 }, level = 1 },
	{ config_id = 1021, monster_id = 20010501, pos = { x = -8.4, y = 0.0, z = -8.2 }, rot = { x = 0.0, y = 20.2, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70900205, pos = { x = 9.6, y = -1.4, z = -4.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ name = "ANY_MONSTER_DIE_5", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5", action = "action_EVENT_ANY_MONSTER_DIE_5" },
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" },
	{ name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7" },
	{ name = "ANY_MONSTER_DIE_8", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8", action = "action_EVENT_ANY_MONSTER_DIE_8" },
	{ name = "CHALLENGE_SUCCESS_10", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10" },
	{ name = "CHALLENGE_FAIL_11", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11" },
	{ name = "ANY_MONSTER_DIE_1007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1007", action = "action_EVENT_ANY_MONSTER_DIE_1007" },
	{ name = "ANY_MONSTER_DIE_1008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1008", action = "action_EVENT_ANY_MONSTER_DIE_1008" }
}

-- 变量
variables = {
	{ name = "Total", value = 0, no_refresh = false },
	{ name = "Key", value = 0, no_refresh = false },
	{ name = "C1", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 1009, 1010, 1011, 1012, 1013 },
		gadgets = { 1006 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "ANY_MONSTER_DIE_4", "ANY_MONSTER_DIE_5", "ANY_MONSTER_DIE_6", "ANY_MONSTER_DIE_7", "ANY_MONSTER_DIE_8", "CHALLENGE_SUCCESS_10", "CHALLENGE_FAIL_11", "ANY_MONSTER_DIE_1007", "ANY_MONSTER_DIE_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1006 },
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
function condition_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	if 1013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为160的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 160, 240402001, 18, 100, 20) then
		return -1
	end
	
	-- 删除指定group： 240402002 ；指定config：5；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240402002, 5, 7) then
		return -1
	end
	
	-- 改变指定group组240402002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402002, 5, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	--判断死亡怪物的configid是否为 1009
	if evt.param1 ~= 1009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1014, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5(context, evt)
	--判断死亡怪物的configid是否为 1010
	if evt.param1 ~= 1010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1015, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	--判断死亡怪物的configid是否为 1011
	if evt.param1 ~= 1011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1016, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7(context, evt)
	--判断死亡怪物的configid是否为 1012
	if evt.param1 ~= 1012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8(context, evt)
	--判断死亡怪物的configid是否为 1013
	if evt.param1 ~= 1013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1018, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10(context, evt)
	-- 改变指定group组240402007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402007, 14, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240402001, suite = 2 }) then
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240402002, 5, {7}) then
		return -1
	end
	
	-- 改变指定group组240402002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402002, 5, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240402008, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240402001) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	-- 判断变量"C1"为5
	if ScriptLib.GetGroupVariableValue(context, "C1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1019, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1020, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1021, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1002, delay_time = 0 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240402001) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

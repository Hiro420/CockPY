--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = -5.1, y = 0.0, z = 11.1 }, rot = { x = 0.0, y = 114.5, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20010801, pos = { x = 8.1, y = 0.0, z = -5.4 }, rot = { x = 0.0, y = 298.9, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20010801, pos = { x = 5.5, y = 0.0, z = 9.4 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 1 },
	{ config_id = 1004, monster_id = 20010901, pos = { x = -2.4, y = 0.0, z = -10.8 }, rot = { x = 0.0, y = 0.5, z = 0.0 }, level = 1 },
	{ config_id = 1005, monster_id = 22010201, pos = { x = -0.2, y = -0.1, z = -7.2 }, rot = { x = 0.0, y = 355.3, z = 0.0 }, level = 3, affix = { 1007, 1012 }, isElite = true },
	{ config_id = 1006, monster_id = 21011001, pos = { x = -11.8, y = -0.1, z = -4.9 }, rot = { x = 0.0, y = 54.5, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 1007, monster_id = 21011001, pos = { x = 8.7, y = -0.1, z = -4.5 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 1008, monster_id = 21011001, pos = { x = 8.7, y = 0.0, z = 13.0 }, rot = { x = 0.0, y = 206.5, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 1009, monster_id = 21011001, pos = { x = -9.3, y = 0.0, z = 11.3 }, rot = { x = 0.0, y = 149.4, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 1013, monster_id = 20010801, pos = { x = -11.0, y = 0.0, z = -5.0 }, rot = { x = 0.0, y = 52.0, z = 0.0 }, level = 1 },
	{ config_id = 1014, monster_id = 20010801, pos = { x = -6.8, y = 0.0, z = 10.5 }, rot = { x = 0.0, y = 114.5, z = 0.0 }, level = 1 },
	{ config_id = 1015, monster_id = 20010801, pos = { x = 9.7, y = 0.0, z = -3.7 }, rot = { x = 0.0, y = 298.9, z = 0.0 }, level = 1 },
	{ config_id = 1016, monster_id = 20010801, pos = { x = 7.2, y = 0.0, z = 9.5 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 1 },
	{ config_id = 1017, monster_id = 20010901, pos = { x = -0.3, y = 0.0, z = -11.7 }, rot = { x = 0.0, y = 0.5, z = 0.0 }, level = 1 },
	{ config_id = 1018, monster_id = 20010801, pos = { x = 6.2, y = 0.0, z = -1.9 }, rot = { x = 0.0, y = 301.6, z = 0.0 }, level = 1 },
	{ config_id = 1019, monster_id = 20010801, pos = { x = 5.8, y = 0.0, z = 12.3 }, rot = { x = 0.0, y = 223.7, z = 0.0 }, level = 1 },
	{ config_id = 1020, monster_id = 20030101, pos = { x = 6.7, y = 0.0, z = 5.0 }, rot = { x = 0.0, y = 265.3, z = 0.0 }, level = 1 },
	{ config_id = 1021, monster_id = 20030101, pos = { x = -0.3, y = 0.0, z = 12.4 }, rot = { x = 0.0, y = 129.3, z = 0.0 }, level = 1 },
	{ config_id = 1022, monster_id = 20010901, pos = { x = 2.0, y = 0.0, z = -2.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1023, monster_id = 20030101, pos = { x = -11.3, y = 0.0, z = -2.4 }, rot = { x = 0.0, y = 52.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1010, gadget_id = 70900205, pos = { x = 9.9, y = -1.6, z = 2.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3", action = "action_EVENT_ANY_MONSTER_DIE_3" },
	{ name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ name = "ANY_MONSTER_DIE_5", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5", action = "action_EVENT_ANY_MONSTER_DIE_5" },
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" },
	{ name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7" },
	{ name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12" },
	{ name = "CHALLENGE_FAIL_14", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14" },
	{ name = "ANY_MONSTER_DIE_1011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1011", action = "action_EVENT_ANY_MONSTER_DIE_1011" },
	{ name = "ANY_MONSTER_DIE_1012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1012", action = "action_EVENT_ANY_MONSTER_DIE_1012" }
}

-- 变量
variables = {
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
		monsters = { 1013, 1014, 1015, 1016, 1017 },
		gadgets = { 1010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3", "ANY_MONSTER_DIE_4", "ANY_MONSTER_DIE_5", "ANY_MONSTER_DIE_6", "ANY_MONSTER_DIE_7", "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_14", "ANY_MONSTER_DIE_1011", "ANY_MONSTER_DIE_1012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1010 },
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
function condition_EVENT_ANY_MONSTER_DIE_3(context, evt)
	--判断死亡怪物的configid是否为 1013
	if evt.param1 ~= 1013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	--判断死亡怪物的configid是否为 1014
	if evt.param1 ~= 1014 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1019, delay_time = 1 }) then
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
	--判断死亡怪物的configid是否为 1015
	if evt.param1 ~= 1015 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1020, delay_time = 1 }) then
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
	--判断死亡怪物的configid是否为 1016
	if evt.param1 ~= 1016 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1021, delay_time = 1 }) then
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
	--判断死亡怪物的configid是否为 1017
	if evt.param1 ~= 1017 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1022, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	if 1017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为162的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 162, 240202001, 20, 120, 20) then
		return -1
	end
	
	-- 删除指定group： 240202002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240202002, 1, 7) then
		return -1
	end
	
	-- 改变指定group组240202002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240202002, 1, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14(context, evt)
	-- 改变指定group组240202002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240202002, 1, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240202002, 1, {7}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240202001, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240202007, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240202001) ~= 0 then
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
function action_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1023, delay_time = 0 }) then
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
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240202001) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1012(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1006, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1007, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1008, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1009, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = -7.4, y = 0.0, z = -6.5 }, rot = { x = 0.0, y = 37.8, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20010801, pos = { x = 11.7, y = 0.0, z = -1.4 }, rot = { x = 0.0, y = 294.5, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20010801, pos = { x = -3.0, y = 0.0, z = 8.1 }, rot = { x = 0.0, y = 145.2, z = 0.0 }, level = 1 },
	{ config_id = 1004, monster_id = 20010901, pos = { x = 5.4, y = 0.0, z = 9.7 }, rot = { x = 0.0, y = 213.9, z = 0.0 }, level = 1 },
	{ config_id = 1005, monster_id = 22010201, pos = { x = -0.2, y = -0.1, z = -7.2 }, rot = { x = 0.0, y = 355.3, z = 0.0 }, level = 3, affix = { 1006, 1012 }, isElite = true },
	{ config_id = 1007, monster_id = 20010801, pos = { x = -4.6, y = -0.1, z = -6.8 }, rot = { x = 0.0, y = 16.5, z = 0.0 }, level = 1 },
	{ config_id = 1008, monster_id = 20010801, pos = { x = 4.2, y = -0.1, z = -6.9 }, rot = { x = 0.0, y = 341.7, z = 0.0 }, level = 1 },
	{ config_id = 1011, monster_id = 20010801, pos = { x = -9.5, y = 0.0, z = -5.5 }, rot = { x = 0.0, y = 52.0, z = 0.0 }, level = 1 },
	{ config_id = 1012, monster_id = 20010801, pos = { x = -8.6, y = 0.0, z = 3.0 }, rot = { x = 0.0, y = 106.2, z = 0.0 }, level = 1 },
	{ config_id = 1013, monster_id = 20010801, pos = { x = 9.3, y = 0.0, z = -4.9 }, rot = { x = 0.0, y = 311.1, z = 0.0 }, level = 1 },
	{ config_id = 1014, monster_id = 20010801, pos = { x = 10.7, y = 0.0, z = -0.1 }, rot = { x = 0.0, y = 278.2, z = 0.0 }, level = 1 },
	{ config_id = 1015, monster_id = 20010901, pos = { x = -0.2, y = 0.0, z = -12.0 }, rot = { x = 0.0, y = 358.6, z = 0.0 }, level = 1 },
	{ config_id = 1016, monster_id = 20010801, pos = { x = 9.6, y = 0.0, z = 9.4 }, rot = { x = 0.0, y = 216.6, z = 0.0 }, level = 1 },
	{ config_id = 1017, monster_id = 20010801, pos = { x = -1.6, y = 0.0, z = 10.3 }, rot = { x = 0.0, y = 148.1, z = 0.0 }, level = 1 },
	{ config_id = 1018, monster_id = 20010801, pos = { x = 8.0, y = 0.0, z = -8.0 }, rot = { x = 0.0, y = 330.4, z = 0.0 }, level = 1 },
	{ config_id = 1019, monster_id = 20010801, pos = { x = -10.7, y = 0.0, z = -2.3 }, rot = { x = 0.0, y = 59.4, z = 0.0 }, level = 1 },
	{ config_id = 1020, monster_id = 20010801, pos = { x = -6.3, y = 0.0, z = -8.9 }, rot = { x = 0.0, y = 34.0, z = 0.0 }, level = 1 },
	{ config_id = 1021, monster_id = 20010801, pos = { x = 1.4, y = 0.0, z = -8.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1009, gadget_id = 70900205, pos = { x = 8.5, y = -1.6, z = 4.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
	{ name = "CHALLENGE_SUCCESS_13", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13" },
	{ name = "CHALLENGE_FAIL_14", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14" },
	{ name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	{ name = "ANY_MONSTER_DIE_1010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1010", action = "action_EVENT_ANY_MONSTER_DIE_1010" }
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
		monsters = { 1011, 1012, 1013, 1014, 1015 },
		gadgets = { 1009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3", "ANY_MONSTER_DIE_4", "ANY_MONSTER_DIE_5", "ANY_MONSTER_DIE_6", "ANY_MONSTER_DIE_7", "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_14", "ANY_MONSTER_DIE_1006", "ANY_MONSTER_DIE_1010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1009 },
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
	--判断死亡怪物的configid是否为 1011
	if evt.param1 ~= 1011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1016, delay_time = 0 }) then
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
	--判断死亡怪物的configid是否为 1012
	if evt.param1 ~= 1012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 0 }) then
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
	--判断死亡怪物的configid是否为 1013
	if evt.param1 ~= 1013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1018, delay_time = 0 }) then
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
	--判断死亡怪物的configid是否为 1014
	if evt.param1 ~= 1014 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1019, delay_time = 0 }) then
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
	--判断死亡怪物的configid是否为 1015
	if evt.param1 ~= 1015 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1020, delay_time = 0 }) then
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
	if 1015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为162的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 162, 240200001, 18, 80, 20) then
		return -1
	end
	
	-- 删除指定group： 240200002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240200002, 1, 7) then
		return -1
	end
	
	-- 改变指定group组240200002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200002, 1, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13(context, evt)
	-- 改变指定group组240200002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200002, 1, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240200002, 1, {12}) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（0，3，0），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=0, y=3, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14(context, evt)
	-- 改变指定group组240200002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200002, 1, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240200002, 1, {7}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240200001, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240200007, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240200001) ~= 0 then
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
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240200001) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

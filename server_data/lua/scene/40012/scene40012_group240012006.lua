--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 20011001, pos = { x = 538.1, y = -2.0, z = 238.8 }, rot = { x = 0.0, y = 224.5, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6004, monster_id = 20011001, pos = { x = 528.6, y = -2.0, z = 239.8 }, rot = { x = 0.0, y = 154.0, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6005, monster_id = 20011001, pos = { x = 535.6, y = -2.0, z = 242.4 }, rot = { x = 0.0, y = 187.0, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6006, monster_id = 20011001, pos = { x = 531.1, y = -2.1, z = 242.7 }, rot = { x = 0.0, y = 170.7, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6007, monster_id = 20011001, pos = { x = 533.5, y = -2.1, z = 245.6 }, rot = { x = 0.0, y = 188.9, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6008, monster_id = 20011001, pos = { x = 538.6, y = -2.0, z = 243.6 }, rot = { x = 0.0, y = 211.5, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6009, monster_id = 20011001, pos = { x = 528.2, y = -2.0, z = 244.3 }, rot = { x = 0.0, y = 154.9, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 6010, monster_id = 20011101, pos = { x = 533.5, y = -2.0, z = 249.4 }, rot = { x = 0.0, y = 179.8, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6011, gadget_id = 70900205, pos = { x = 529.3, y = -4.6, z = 236.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ name = "ANY_MONSTER_DIE_14", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14", action = "action_EVENT_ANY_MONSTER_DIE_14" },
	{ name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ name = "ANY_MONSTER_DIE_25", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25", action = "action_EVENT_ANY_MONSTER_DIE_25" },
	{ name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28" },
	{ name = "VARIABLE_CHANGE_33", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33", action = "action_EVENT_VARIABLE_CHANGE_33" },
	{ name = "ANY_MONSTER_LIVE_34", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_34", action = "action_EVENT_ANY_MONSTER_LIVE_34" },
	{ name = "CHALLENGE_SUCCESS_35", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_35" },
	{ name = "CHALLENGE_FAIL_36", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_36" },
	{ name = "CHALLENGE_SUCCESS_6001", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6001" },
	{ name = "CHALLENGE_SUCCESS_6002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6002" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		monsters = { 6003, 6004, 6005, 6006, 6007 },
		gadgets = { 6011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1", "ANY_MONSTER_DIE_14", "ANY_MONSTER_DIE_20", "ANY_MONSTER_DIE_25", "ANY_MONSTER_DIE_28", "VARIABLE_CHANGE_33", "ANY_MONSTER_LIVE_34", "CHALLENGE_SUCCESS_35", "CHALLENGE_FAIL_36", "CHALLENGE_SUCCESS_6001", "CHALLENGE_SUCCESS_6002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 6011 },
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
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	--判断死亡怪物的configid是否为 6007
	if evt.param1 ~= 6007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14(context, evt)
	--判断死亡怪物的configid是否为 6006
	if evt.param1 ~= 6006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	--判断死亡怪物的configid是否为 6005
	if evt.param1 ~= 6005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25(context, evt)
	--判断死亡怪物的configid是否为 6004
	if evt.param1 ~= 6004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	--判断死亡怪物的configid是否为 6003
	if evt.param1 ~= 6003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33(context, evt)
	-- 判断变量"Key"为5
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6009, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6010, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_34(context, evt)
	if 6003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_34(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为185的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 185, 80, 240012006, 8, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_35(context, evt)
	-- 改变指定group组240012007中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012007, 5, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_36(context, evt)
	-- 改变指定group组240012005中， configid为3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012005, 3, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240012006, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6001(context, evt)
	-- 改变指定group组240012007中， configid为6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012007, 6, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6002(context, evt)
	-- 改变指定group组240012007中， configid为7的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012007, 7, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

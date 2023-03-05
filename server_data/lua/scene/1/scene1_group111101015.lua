--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 21010201, pos = { x = 2462.2, y = 221.3, z = -1337.8 }, rot = { x = 8.2, y = 142.9, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 15002, monster_id = 21010201, pos = { x = 2459.1, y = 220.7, z = -1340.2 }, rot = { x = 8.2, y = 142.9, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 15003, monster_id = 21010201, pos = { x = 2458.1, y = 220.5, z = -1340.9 }, rot = { x = 8.2, y = 142.9, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 15004, monster_id = 21010201, pos = { x = 2457.6, y = 219.9, z = -1346.1 }, rot = { x = 8.2, y = 142.9, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 15005, monster_id = 21010201, pos = { x = 2457.6, y = 219.9, z = -1346.1 }, rot = { x = 8.2, y = 142.9, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 15006, monster_id = 21010201, pos = { x = 2457.6, y = 219.9, z = -1346.1 }, rot = { x = 8.2, y = 142.9, z = 0.5 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15007, gadget_id = 70300118, pos = { x = 2468.0, y = 220.1, z = -1354.0 }, rot = { x = 2.1, y = 100.3, z = 358.6 }, level = 1 },
	{ config_id = 15008, gadget_id = 70350023, pos = { x = 2468.0, y = 218.9, z = -1354.0 }, rot = { x = 2.1, y = 100.3, z = 358.6 }, level = 1 },
	{ config_id = 15019, gadget_id = 70350035, pos = { x = 2468.0, y = 218.9, z = -1354.0 }, rot = { x = 2.1, y = 100.3, z = 358.6 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_15009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15009", action = "action_EVENT_ANY_MONSTER_DIE_15009", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_15010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15010", action = "action_EVENT_ANY_MONSTER_DIE_15010", trigger_count = 0 },
	{ name = "GADGET_CREATE_15011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15011", action = "action_EVENT_GADGET_CREATE_15011", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_15012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_15012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_15013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15013", action = "action_EVENT_ANY_MONSTER_DIE_15013", trigger_count = 0 },
	{ name = "SELECT_OPTION_15014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15014", action = "action_EVENT_SELECT_OPTION_15014", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_15015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_15015", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_15016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_15016", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_15017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_15017", action = "action_EVENT_ANY_MONSTER_LIVE_15017", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_15018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15018", action = "action_EVENT_VARIABLE_CHANGE_15018", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "deadMonster", value = 0, no_refresh = false }
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
		gadgets = { 15007, 15008 },
		regions = { },
		triggers = { "GADGET_CREATE_15011", "ANY_MONSTER_DIE_15012", "SELECT_OPTION_15014", "CHALLENGE_SUCCESS_15015", "CHALLENGE_FAIL_15016", "VARIABLE_CHANGE_15018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 15001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15009", "ANY_MONSTER_LIVE_15017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 15002, 15003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 15004, 15005, 15006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2475, y=218, z=-1354}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101015, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2475, y=218, z=-1354}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101015, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15011(context, evt)
	if 15008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101015, 15008, {2902}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15014(context, evt)
	-- 判断是gadgetid 15008 option_id 2902
	if 15008 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15014(context, evt)
	-- 将configid为 15008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15007 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101015, 2)
	
	-- 删除指定group： 111101015 ；指定config：15008；物件身上指定option：2902；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101015, 15008, 2902) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_15015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 4)
	
	-- 将configid为 15008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15008, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15019 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_15016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15019 }) then
		    return -1
		end
		
	
	-- 将configid为 15008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15008, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 创建id为15007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 4)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101015, 15008, {2902}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_15017(context, evt)
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_15017(context, evt)
	-- 创建id为15019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15019 }) then
	  return -1
	end
	
	-- 创建编号为666（该挑战的识别id),挑战内容为12的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 12, 30, 111101015, 15019, 90) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15018(context, evt)
	-- 判断变量"deadMonster"为6
	if ScriptLib.GetGroupVariableValue(context, "deadMonster") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15018(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

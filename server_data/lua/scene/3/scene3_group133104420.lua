--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 420001, monster_id = 21010201, pos = { x = 559.7, y = 196.8, z = 245.9 }, rot = { x = 0.0, y = 121.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420002, monster_id = 21010201, pos = { x = 620.5, y = 199.2, z = 220.2 }, rot = { x = 0.0, y = 306.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420003, monster_id = 21010201, pos = { x = 619.2, y = 199.0, z = 222.0 }, rot = { x = 0.0, y = 295.7, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420005, monster_id = 21010401, pos = { x = 591.2, y = 197.9, z = 245.4 }, rot = { x = 1.4, y = 188.1, z = 1.2 }, level = 1, drop_id = 1000100 },
	{ config_id = 420006, monster_id = 21010401, pos = { x = 587.0, y = 202.1, z = 225.7 }, rot = { x = 0.0, y = 349.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420019, monster_id = 21010201, pos = { x = 560.9, y = 196.8, z = 244.6 }, rot = { x = 354.8, y = 121.6, z = 0.6 }, level = 1, drop_id = 1000100 },
	{ config_id = 420020, monster_id = 21010201, pos = { x = 562.1, y = 196.9, z = 245.5 }, rot = { x = 358.4, y = 121.6, z = 357.9 }, level = 1, drop_id = 1000100 },
	{ config_id = 420021, monster_id = 21010201, pos = { x = 618.6, y = 199.1, z = 220.8 }, rot = { x = 0.0, y = 311.3, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420022, monster_id = 21010701, pos = { x = 559.5, y = 196.7, z = 245.4 }, rot = { x = 0.0, y = 116.8, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420023, monster_id = 21010701, pos = { x = 561.4, y = 196.8, z = 246.5 }, rot = { x = 0.0, y = 116.8, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 420025, monster_id = 21020101, pos = { x = 560.0, y = 196.8, z = 245.8 }, rot = { x = 3.6, y = 131.9, z = 358.2 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 420007, gadget_id = 70350036, pos = { x = 589.7, y = 197.9, z = 232.6 }, rot = { x = 0.0, y = 130.0, z = 0.0 }, level = 1 },
	{ config_id = 420008, gadget_id = 70300118, pos = { x = 589.6, y = 199.6, z = 232.6 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1 },
	{ config_id = 420009, gadget_id = 70350023, pos = { x = 589.6, y = 197.9, z = 232.6 }, rot = { x = 0.0, y = 130.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 420026, gadget_id = 70220005, pos = { x = 598.4, y = 198.4, z = 230.9 }, rot = { x = 346.5, y = 128.0, z = 16.7 }, level = 1 },
	{ config_id = 420027, gadget_id = 70220005, pos = { x = 587.7, y = 197.9, z = 225.7 }, rot = { x = 356.4, y = 129.1, z = 355.9 }, level = 1 },
	{ config_id = 420028, gadget_id = 70220005, pos = { x = 580.6, y = 197.9, z = 236.9 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_420010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420010", action = "action_EVENT_ANY_MONSTER_DIE_420010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_420011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420011", action = "action_EVENT_ANY_MONSTER_DIE_420011", trigger_count = 0 },
	{ name = "GADGET_CREATE_420012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_420012", action = "action_EVENT_GADGET_CREATE_420012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_420013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_420013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_420014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420014", action = "action_EVENT_ANY_MONSTER_DIE_420014", trigger_count = 0 },
	{ name = "SELECT_OPTION_420015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_420015", action = "action_EVENT_SELECT_OPTION_420015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_420016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_420017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_420017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_420018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_420018", action = "action_EVENT_ANY_MONSTER_LIVE_420018", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "deadMonster", value = 0, no_refresh = false },
	{ name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 420008, 420009 },
		regions = { },
		triggers = { "GADGET_CREATE_420012", "ANY_MONSTER_DIE_420013", "SELECT_OPTION_420015", "CHALLENGE_SUCCESS_420016", "CHALLENGE_FAIL_420017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 420001, 420019, 420020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420010", "ANY_MONSTER_LIVE_420018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 420002, 420003, 420021, 420022, 420023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 420005, 420006, 420025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 420007, 420026, 420027, 420028 },
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
function condition_EVENT_ANY_MONSTER_DIE_420010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=569, y=200, z=231}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_420011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=569, y=200, z=231}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_420012(context, evt)
	if 420009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_420012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104420, 420009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_420014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_420015(context, evt)
	-- 判断是gadgetid 420009 option_id 7
	if 420009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_420015(context, evt)
	-- 将configid为 420009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 420008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 2)
	
	-- 删除指定group： 133104420 ；指定config：420009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104420, 420009, 7) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 5)
	
	-- 将configid为 420009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 420008 }) then
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_420017(context, evt)
	-- 将configid为 420009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为420008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 420008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104420, 420009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_420018(context, evt)
	if 420001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_420018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133104420, 11, 420007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
end

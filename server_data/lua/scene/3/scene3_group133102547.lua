--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 547001, monster_id = 21010201, pos = { x = 1374.0, y = 204.1, z = 539.8 }, rot = { x = 355.9, y = 142.9, z = 357.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 547002, monster_id = 21010301, pos = { x = 1376.4, y = 205.9, z = 483.9 }, rot = { x = 1.3, y = 50.8, z = 355.6 }, level = 1, drop_id = 1000100 },
	{ config_id = 547003, monster_id = 21010401, pos = { x = 1385.1, y = 211.3, z = 505.8 }, rot = { x = 356.8, y = 91.0, z = 359.6 }, level = 1, drop_id = 1000100 },
	{ config_id = 547004, monster_id = 21020201, pos = { x = 1433.3, y = 214.0, z = 509.1 }, rot = { x = 359.2, y = 263.9, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 547005, monster_id = 21010701, pos = { x = 1373.5, y = 204.1, z = 539.3 }, rot = { x = 352.5, y = 132.3, z = 359.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 547006, monster_id = 21010301, pos = { x = 1376.4, y = 205.9, z = 483.8 }, rot = { x = 352.5, y = 49.2, z = 359.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 547019, monster_id = 21010201, pos = { x = 1372.7, y = 204.1, z = 539.1 }, rot = { x = 355.9, y = 128.8, z = 357.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 547020, monster_id = 21010701, pos = { x = 1372.4, y = 204.0, z = 540.2 }, rot = { x = 1.8, y = 133.4, z = 355.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 547021, monster_id = 21010701, pos = { x = 1373.6, y = 204.2, z = 538.8 }, rot = { x = 1.5, y = 125.9, z = 354.8 }, level = 1, drop_id = 1000100 },
	{ config_id = 547022, monster_id = 21010301, pos = { x = 1375.7, y = 205.9, z = 484.9 }, rot = { x = 356.8, y = 45.0, z = 359.6 }, level = 1, drop_id = 1000100 },
	{ config_id = 547023, monster_id = 21010301, pos = { x = 1377.0, y = 205.9, z = 483.1 }, rot = { x = 356.8, y = 45.0, z = 359.6 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 547007, gadget_id = 70350036, pos = { x = 1401.2, y = 209.6, z = 510.2 }, rot = { x = 348.8, y = 100.2, z = 1.4 }, level = 1 },
	{ config_id = 547008, gadget_id = 70300118, pos = { x = 1400.9, y = 210.3, z = 510.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 547009, gadget_id = 70350023, pos = { x = 1401.2, y = 209.5, z = 510.2 }, rot = { x = 348.8, y = 100.2, z = 1.4 }, level = 1, persistent = true },
	{ config_id = 547024, gadget_id = 70220005, pos = { x = 1385.6, y = 205.8, z = 529.5 }, rot = { x = 2.1, y = 102.3, z = 358.6 }, level = 1 },
	{ config_id = 547025, gadget_id = 70220005, pos = { x = 1388.5, y = 207.7, z = 519.6 }, rot = { x = 354.8, y = 101.3, z = 16.7 }, level = 1 },
	{ config_id = 547026, gadget_id = 70220005, pos = { x = 1420.5, y = 213.8, z = 506.3 }, rot = { x = 359.8, y = 102.1, z = 1.3 }, level = 1 },
	{ config_id = 547027, gadget_id = 70220005, pos = { x = 1386.4, y = 207.9, z = 492.1 }, rot = { x = 353.9, y = 100.4, z = 3.4 }, level = 1 },
	{ config_id = 547028, gadget_id = 70220005, pos = { x = 1390.1, y = 208.6, z = 501.3 }, rot = { x = 12.0, y = 103.7, z = 17.2 }, level = 1 },
	{ config_id = 547029, gadget_id = 70220010, pos = { x = 1403.8, y = 210.4, z = 507.3 }, rot = { x = 347.1, y = 324.7, z = 32.7 }, level = 1 },
	{ config_id = 547030, gadget_id = 70220010, pos = { x = 1388.9, y = 209.1, z = 509.9 }, rot = { x = 0.5, y = 74.8, z = 5.4 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_547010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547010", action = "action_EVENT_ANY_MONSTER_DIE_547010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_547011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547011", action = "action_EVENT_ANY_MONSTER_DIE_547011", trigger_count = 0 },
	{ name = "GADGET_CREATE_547012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_547012", action = "action_EVENT_GADGET_CREATE_547012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_547013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_547013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_547014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547014", action = "action_EVENT_ANY_MONSTER_DIE_547014", trigger_count = 0 },
	{ name = "SELECT_OPTION_547015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_547015", action = "action_EVENT_SELECT_OPTION_547015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_547016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_547016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_547017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_547017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_547018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_547018", action = "action_EVENT_ANY_MONSTER_LIVE_547018", trigger_count = 0 }
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
		gadgets = { 547008, 547009 },
		regions = { },
		triggers = { "GADGET_CREATE_547012", "ANY_MONSTER_DIE_547013", "SELECT_OPTION_547015", "CHALLENGE_SUCCESS_547016", "CHALLENGE_FAIL_547017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 547001, 547019, 547020, 547021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_547010", "ANY_MONSTER_LIVE_547018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 547002, 547003, 547022, 547023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_547011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 547004, 547005, 547006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_547014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 547007, 547024, 547025, 547026, 547027, 547028, 547029, 547030 },
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
function condition_EVENT_ANY_MONSTER_DIE_547010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1399, y=209, z=510}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_547011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1399, y=209, z=510}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_547012(context, evt)
	if 547009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_547012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102547, 547009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_547014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_547015(context, evt)
	-- 判断是gadgetid 547009 option_id 7
	if 547009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_547015(context, evt)
	-- 将configid为 547009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 547008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 2)
	
	-- 删除指定group： 133102547 ；指定config：547009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102547, 547009, 7) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_547016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 5)
	
	-- 将configid为 547009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 547008 }) then
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
function action_EVENT_CHALLENGE_FAIL_547017(context, evt)
	-- 将configid为 547009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为547008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 547008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102547, 547009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_547018(context, evt)
	if 547001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_547018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133102547, 11, 547007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 564001, monster_id = 21011001, pos = { x = 997.8, y = 209.0, z = 31.9 }, rot = { x = 357.6, y = 121.3, z = 0.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 564002, monster_id = 21020201, pos = { x = 999.2, y = 206.4, z = 54.9 }, rot = { x = 8.1, y = 158.4, z = 4.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 564003, monster_id = 21011001, pos = { x = 1020.8, y = 211.3, z = 44.9 }, rot = { x = 0.0, y = 192.9, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 564020, monster_id = 21010301, pos = { x = 999.3, y = 206.4, z = 54.9 }, rot = { x = 0.7, y = 158.9, z = 13.9 }, level = 1, drop_id = 1000100 },
	{ config_id = 564021, monster_id = 21010301, pos = { x = 998.5, y = 206.5, z = 56.5 }, rot = { x = 1.4, y = 151.3, z = 17.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 564022, monster_id = 21010201, pos = { x = 998.1, y = 206.7, z = 55.0 }, rot = { x = 1.0, y = 162.0, z = 14.4 }, level = 1, drop_id = 1000100 },
	{ config_id = 564023, monster_id = 21010201, pos = { x = 999.6, y = 206.2, z = 56.4 }, rot = { x = 356.3, y = 160.6, z = 16.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 564024, monster_id = 21011201, pos = { x = 987.2, y = 210.2, z = 36.3 }, rot = { x = 0.0, y = 120.3, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 564025, monster_id = 21011201, pos = { x = 1029.5, y = 205.7, z = 48.4 }, rot = { x = 0.0, y = 183.9, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 564026, monster_id = 22010201, pos = { x = 1007.6, y = 206.8, z = 40.6 }, rot = { x = 0.0, y = 159.5, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 564007, gadget_id = 70350036, pos = { x = 1013.2, y = 207.9, z = 25.3 }, rot = { x = 354.0, y = 161.7, z = 2.1 }, level = 25 },
	{ config_id = 564008, gadget_id = 70300118, pos = { x = 1013.2, y = 209.6, z = 25.5 }, rot = { x = 0.5, y = 100.3, z = 3.9 }, level = 1 },
	{ config_id = 564009, gadget_id = 70350023, pos = { x = 1013.2, y = 207.9, z = 25.3 }, rot = { x = 359.1, y = 100.2, z = 6.3 }, level = 1, persistent = true },
	{ config_id = 564019, gadget_id = 70220005, pos = { x = 1001.5, y = 206.7, z = 45.8 }, rot = { x = 358.0, y = 296.7, z = 354.0 }, level = 25 },
	{ config_id = 564028, gadget_id = 70220010, pos = { x = 1012.3, y = 209.4, z = 15.5 }, rot = { x = 2.6, y = 15.8, z = 12.8 }, level = 25 },
	{ config_id = 564029, gadget_id = 70220010, pos = { x = 1020.2, y = 209.0, z = 15.5 }, rot = { x = 1.6, y = 8.9, z = 2.9 }, level = 25 },
	{ config_id = 564030, gadget_id = 70220005, pos = { x = 1001.6, y = 208.4, z = 30.4 }, rot = { x = 350.7, y = 297.9, z = 351.2 }, level = 25 },
	{ config_id = 564031, gadget_id = 70220005, pos = { x = 1023.7, y = 207.7, z = 33.2 }, rot = { x = 5.5, y = 295.7, z = 354.7 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_564010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564010", action = "action_EVENT_ANY_MONSTER_DIE_564010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_564011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564011", action = "action_EVENT_ANY_MONSTER_DIE_564011", trigger_count = 0 },
	{ name = "GADGET_CREATE_564012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_564012", action = "action_EVENT_GADGET_CREATE_564012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_564013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_564013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_564014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564014", action = "action_EVENT_ANY_MONSTER_DIE_564014", trigger_count = 0 },
	{ name = "SELECT_OPTION_564015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_564015", action = "action_EVENT_SELECT_OPTION_564015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_564016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_564016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_564017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_564017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_564018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_564018", action = "action_EVENT_ANY_MONSTER_LIVE_564018", trigger_count = 0 }
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
		gadgets = { 564008, 564009 },
		regions = { },
		triggers = { "GADGET_CREATE_564012", "ANY_MONSTER_DIE_564013", "SELECT_OPTION_564015", "CHALLENGE_SUCCESS_564016", "CHALLENGE_FAIL_564017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 564020, 564021, 564022, 564023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564010", "ANY_MONSTER_LIVE_564018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 564002, 564024, 564025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 564001, 564003, 564026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 564007, 564019, 564028, 564029, 564030, 564031 },
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
function condition_EVENT_ANY_MONSTER_DIE_564010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1012, y=208, z=22}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1012, y=208, z=22}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_564012(context, evt)
	if 564009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_564012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102564, 564009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_564015(context, evt)
	-- 判断是gadgetid 564009 option_id 7
	if 564009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_564015(context, evt)
	-- 将configid为 564009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 564008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 2)
	
	-- 删除指定group： 133102564 ；指定config：564009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102564, 564009, 7) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_564016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 5)
	
	-- 将configid为 564009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 564008 }) then
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
function action_EVENT_CHALLENGE_FAIL_564017(context, evt)
	-- 将configid为 564009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为564008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 564008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102564, 564009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_564018(context, evt)
	if 564020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_564018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133102564, 10, 564007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
end

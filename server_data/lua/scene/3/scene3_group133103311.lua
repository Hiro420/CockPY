--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 311001, monster_id = 21010301, pos = { x = 896.7, y = 268.7, z = 1579.0 }, rot = { x = 0.0, y = 0.3, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311002, monster_id = 21010201, pos = { x = 895.4, y = 269.4, z = 1577.6 }, rot = { x = 0.0, y = 5.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311004, monster_id = 21030401, pos = { x = 882.4, y = 261.4, z = 1606.8 }, rot = { x = 0.0, y = 124.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311005, monster_id = 21011201, pos = { x = 883.7, y = 261.9, z = 1603.0 }, rot = { x = 0.0, y = 106.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311006, monster_id = 21011201, pos = { x = 887.4, y = 261.8, z = 1610.2 }, rot = { x = 0.0, y = 168.4, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311019, monster_id = 21010601, pos = { x = 895.2, y = 269.5, z = 1577.5 }, rot = { x = 0.0, y = 0.3, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311020, monster_id = 21010601, pos = { x = 896.6, y = 269.3, z = 1577.5 }, rot = { x = 0.0, y = 0.3, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311021, monster_id = 21010301, pos = { x = 894.7, y = 268.7, z = 1579.7 }, rot = { x = 0.0, y = 0.3, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311023, monster_id = 21010201, pos = { x = 896.3, y = 268.5, z = 1579.6 }, rot = { x = 0.0, y = 5.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311024, monster_id = 21010201, pos = { x = 897.0, y = 269.4, z = 1577.4 }, rot = { x = 0.0, y = 5.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311025, monster_id = 21010701, pos = { x = 894.9, y = 268.5, z = 1580.0 }, rot = { x = 0.0, y = 5.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 311026, monster_id = 21020301, pos = { x = 884.6, y = 261.7, z = 1606.5 }, rot = { x = 0.0, y = 130.7, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 311007, gadget_id = 70350036, pos = { x = 896.2, y = 262.9, z = 1598.1 }, rot = { x = 0.0, y = 312.3, z = 0.0 }, level = 1 },
	{ config_id = 311008, gadget_id = 70300118, pos = { x = 896.1, y = 264.8, z = 1598.2 }, rot = { x = 7.5, y = 296.0, z = 356.8 }, level = 1 },
	{ config_id = 311009, gadget_id = 70350023, pos = { x = 896.3, y = 262.9, z = 1598.0 }, rot = { x = 9.3, y = 312.1, z = 357.7 }, level = 1, persistent = true },
	{ config_id = 311027, gadget_id = 70220005, pos = { x = 889.3, y = 264.6, z = 1592.6 }, rot = { x = 21.8, y = 357.7, z = 351.7 }, level = 1 },
	{ config_id = 311028, gadget_id = 70220010, pos = { x = 903.1, y = 263.3, z = 1595.6 }, rot = { x = 1.7, y = 359.1, z = 355.5 }, level = 1 },
	{ config_id = 311029, gadget_id = 70220005, pos = { x = 897.1, y = 262.2, z = 1603.5 }, rot = { x = 9.6, y = 1.0, z = 9.8 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_311010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311010", action = "action_EVENT_ANY_MONSTER_DIE_311010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_311011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311011", action = "action_EVENT_ANY_MONSTER_DIE_311011", trigger_count = 0 },
	{ name = "GADGET_CREATE_311012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_311012", action = "action_EVENT_GADGET_CREATE_311012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_311013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_311013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_311014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311014", action = "action_EVENT_ANY_MONSTER_DIE_311014", trigger_count = 0 },
	{ name = "SELECT_OPTION_311015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_311015", action = "action_EVENT_SELECT_OPTION_311015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_311016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_311016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_311017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_311017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_311018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_311018", action = "action_EVENT_ANY_MONSTER_LIVE_311018", trigger_count = 0 }
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
		gadgets = { 311008, 311009 },
		regions = { },
		triggers = { "GADGET_CREATE_311012", "ANY_MONSTER_DIE_311013", "SELECT_OPTION_311015", "CHALLENGE_SUCCESS_311016", "CHALLENGE_FAIL_311017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 311002, 311023, 311024, 311025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311010", "ANY_MONSTER_LIVE_311018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 311001, 311019, 311020, 311021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 311004, 311005, 311006, 311026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 311007 },
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
function condition_EVENT_ANY_MONSTER_DIE_311010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=896, y=262, z=1598}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=896, y=262, z=1598}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_311012(context, evt)
	if 311009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_311012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103311, 311009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_311015(context, evt)
	-- 判断是gadgetid 311009 option_id 7
	if 311009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_311015(context, evt)
	-- 将configid为 311009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 2)
	
	-- 删除指定group： 133103311 ；指定config：311009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103311, 311009, 7) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_311016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133103311, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 5)
	
	-- 将configid为 311009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311008 }) then
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311027 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311028 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311029 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_311017(context, evt)
	-- 将configid为 311009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为311008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133103311, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103311, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103311, 311009, {7}) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311027 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311028 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311029 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_311018(context, evt)
	if 311002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_311018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103311, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133103311, 12, 311007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	-- 创建id为311027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311027 }) then
	  return -1
	end
	
	-- 创建id为311028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311028 }) then
	  return -1
	end
	
	-- 创建id为311029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311029 }) then
	  return -1
	end
	
	return 0
end

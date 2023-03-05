--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 21010601, pos = { x = 1571.0, y = 224.9, z = 1246.7 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95002, monster_id = 21010201, pos = { x = 1573.8, y = 225.0, z = 1244.1 }, rot = { x = 0.0, y = 83.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95003, monster_id = 21010201, pos = { x = 1572.4, y = 224.9, z = 1245.9 }, rot = { x = 0.0, y = 83.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95005, monster_id = 22010101, pos = { x = 1623.3, y = 224.3, z = 1266.5 }, rot = { x = 0.0, y = 240.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95006, monster_id = 21010201, pos = { x = 1625.5, y = 224.3, z = 1263.8 }, rot = { x = 0.0, y = 240.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95019, monster_id = 21010301, pos = { x = 1574.4, y = 225.0, z = 1247.5 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95020, monster_id = 21010301, pos = { x = 1575.6, y = 225.0, z = 1245.1 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95021, monster_id = 21010701, pos = { x = 1574.2, y = 225.1, z = 1250.2 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95023, monster_id = 21010201, pos = { x = 1573.4, y = 225.0, z = 1248.8 }, rot = { x = 0.0, y = 83.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95024, monster_id = 21010101, pos = { x = 1574.9, y = 225.0, z = 1248.2 }, rot = { x = 0.0, y = 83.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95025, monster_id = 21010101, pos = { x = 1575.2, y = 225.0, z = 1245.4 }, rot = { x = 0.0, y = 83.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 95026, monster_id = 21010201, pos = { x = 1624.0, y = 224.3, z = 1265.1 }, rot = { x = 0.0, y = 243.8, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95004, gadget_id = 70220010, pos = { x = 1605.1, y = 225.4, z = 1257.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95007, gadget_id = 70350036, pos = { x = 1600.8, y = 225.6, z = 1251.3 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1 },
	{ config_id = 95008, gadget_id = 70300118, pos = { x = 1600.8, y = 227.2, z = 1251.3 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1 },
	{ config_id = 95009, gadget_id = 70350023, pos = { x = 1600.8, y = 225.3, z = 1251.3 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 95028, gadget_id = 70220010, pos = { x = 1596.3, y = 225.4, z = 1246.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95029, gadget_id = 70220005, pos = { x = 1586.8, y = 225.3, z = 1245.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_95010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95010", action = "action_EVENT_ANY_MONSTER_DIE_95010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_95011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95011", action = "action_EVENT_ANY_MONSTER_DIE_95011", trigger_count = 0 },
	{ name = "GADGET_CREATE_95012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95012", action = "action_EVENT_GADGET_CREATE_95012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_95013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_95013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_95014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95014", action = "action_EVENT_ANY_MONSTER_DIE_95014", trigger_count = 0 },
	{ name = "SELECT_OPTION_95015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95015", action = "action_EVENT_SELECT_OPTION_95015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_95016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_95017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_95018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_95018", action = "action_EVENT_ANY_MONSTER_LIVE_95018", trigger_count = 0 }
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
		gadgets = { 95008, 95009 },
		regions = { },
		triggers = { "GADGET_CREATE_95012", "ANY_MONSTER_DIE_95013", "SELECT_OPTION_95015", "CHALLENGE_SUCCESS_95016", "CHALLENGE_FAIL_95017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 95002, 95003, 95023, 95024, 95025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95010", "ANY_MONSTER_LIVE_95018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 95001, 95019, 95020, 95021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 95005, 95006, 95026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 95007 },
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
function condition_EVENT_ANY_MONSTER_DIE_95010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1600, y=225, z=1251}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1600, y=225, z=1251}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_95012(context, evt)
	if 95009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101095, 95009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95015(context, evt)
	-- 判断是gadgetid 95009 option_id 7
	if 95009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95015(context, evt)
	-- 删除指定group： 133101095 ；指定config：95009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101095, 95009, 7) then
		return -1
	end
	
	-- 将configid为 95009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 5)
	
	-- 将configid为 95009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95008 }) then
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95004 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95028 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95029 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95017(context, evt)
	-- 将configid为 95009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为95008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101095, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101095, 95009, {7}) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95004 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95028 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95029 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_95018(context, evt)
	if 95002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_95018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101095, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133101095, 12, 95007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	-- 创建id为95004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95004 }) then
	  return -1
	end
	
	-- 创建id为95028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95028 }) then
	  return -1
	end
	
	-- 创建id为95029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95029 }) then
	  return -1
	end
	
	return 0
end

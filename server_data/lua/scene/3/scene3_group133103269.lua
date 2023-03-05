--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 21010201, pos = { x = 746.4, y = 318.3, z = 1519.0 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269002, monster_id = 21010701, pos = { x = 743.2, y = 317.8, z = 1519.1 }, rot = { x = 0.0, y = 77.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269003, monster_id = 21030101, pos = { x = 749.6, y = 318.7, z = 1519.5 }, rot = { x = 0.0, y = 76.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269004, monster_id = 21011201, pos = { x = 785.6, y = 321.9, z = 1509.7 }, rot = { x = 0.0, y = 307.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269005, monster_id = 21011201, pos = { x = 787.9, y = 321.5, z = 1513.9 }, rot = { x = 0.0, y = 268.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269006, monster_id = 22010101, pos = { x = 781.5, y = 320.0, z = 1517.6 }, rot = { x = 0.0, y = 322.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269019, monster_id = 21010201, pos = { x = 746.1, y = 318.5, z = 1520.2 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269020, monster_id = 21010201, pos = { x = 746.7, y = 318.2, z = 1517.6 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269021, monster_id = 21010201, pos = { x = 744.5, y = 318.1, z = 1519.9 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269022, monster_id = 21010201, pos = { x = 745.4, y = 318.0, z = 1517.3 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269023, monster_id = 21010301, pos = { x = 746.0, y = 318.1, z = 1516.5 }, rot = { x = 0.0, y = 59.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269024, monster_id = 21010701, pos = { x = 746.1, y = 318.2, z = 1518.6 }, rot = { x = 0.0, y = 77.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269025, monster_id = 21010301, pos = { x = 745.2, y = 318.6, z = 1521.2 }, rot = { x = 0.0, y = 77.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 269026, monster_id = 21011201, pos = { x = 788.2, y = 322.2, z = 1510.3 }, rot = { x = 0.0, y = 307.0, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269007, gadget_id = 70350036, pos = { x = 769.4, y = 319.4, z = 1524.2 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1 },
	{ config_id = 269008, gadget_id = 70300118, pos = { x = 769.4, y = 321.1, z = 1524.2 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1 },
	{ config_id = 269009, gadget_id = 70350023, pos = { x = 769.4, y = 319.4, z = 1524.2 }, rot = { x = 0.0, y = 100.3, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 269027, gadget_id = 70220010, pos = { x = 780.6, y = 319.6, z = 1520.8 }, rot = { x = 7.3, y = 301.3, z = 358.2 }, level = 1 },
	{ config_id = 269028, gadget_id = 70220005, pos = { x = 757.0, y = 319.2, z = 1525.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_269010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_269010", action = "action_EVENT_ANY_MONSTER_DIE_269010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_269011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_269011", action = "action_EVENT_ANY_MONSTER_DIE_269011", trigger_count = 0 },
	{ name = "GADGET_CREATE_269012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_269012", action = "action_EVENT_GADGET_CREATE_269012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_269013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_269013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_269014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_269014", action = "action_EVENT_ANY_MONSTER_DIE_269014", trigger_count = 0 },
	{ name = "SELECT_OPTION_269015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_269015", action = "action_EVENT_SELECT_OPTION_269015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_269016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_269016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_269017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_269017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_269018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_269018", action = "action_EVENT_ANY_MONSTER_LIVE_269018", trigger_count = 0 }
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
		gadgets = { 269008, 269009 },
		regions = { },
		triggers = { "GADGET_CREATE_269012", "ANY_MONSTER_DIE_269013", "SELECT_OPTION_269015", "CHALLENGE_SUCCESS_269016", "CHALLENGE_FAIL_269017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 269001, 269019, 269020, 269021, 269022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_269010", "ANY_MONSTER_LIVE_269018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 269002, 269003, 269023, 269024, 269025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_269011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 269004, 269005, 269006, 269026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_269014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 269007 },
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
function condition_EVENT_ANY_MONSTER_DIE_269010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=769, y=319, z=1524}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103269, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_269011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=769, y=319, z=1524}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103269, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_269012(context, evt)
	if 269009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_269012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103269, 269009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_269014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_269015(context, evt)
	-- 判断是gadgetid 269009 option_id 7
	if 269009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_269015(context, evt)
	-- 将configid为 269009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103269, 2)
	
	-- 删除指定group： 133103269 ；指定config：269009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103269, 269009, 7) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_269016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 5)
	
	-- 将configid为 269009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269008 }) then
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269027 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269028 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_269017(context, evt)
	-- 将configid为 269009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为269008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103269, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103269, 269009, {7}) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269027 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269028 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_269018(context, evt)
	if 269001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_269018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103269, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133103269, 14, 269007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	-- 创建id为269027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269027 }) then
	  return -1
	end
	
	-- 创建id为269028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269028 }) then
	  return -1
	end
	
	return 0
end

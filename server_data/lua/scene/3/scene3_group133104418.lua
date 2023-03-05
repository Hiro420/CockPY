--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 418001, monster_id = 21011201, pos = { x = 270.4, y = 214.0, z = 289.8 }, rot = { x = 0.0, y = 1.8, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 418002, monster_id = 21010701, pos = { x = 245.3, y = 208.4, z = 361.9 }, rot = { x = 352.2, y = 143.3, z = 352.6 }, level = 1, drop_id = 1000100 },
	{ config_id = 418003, monster_id = 21010701, pos = { x = 243.9, y = 208.1, z = 361.1 }, rot = { x = 354.5, y = 123.4, z = 358.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 418004, monster_id = 21010501, pos = { x = 262.9, y = 215.9, z = 333.6 }, rot = { x = 0.0, y = 152.5, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 418005, monster_id = 21010501, pos = { x = 266.9, y = 215.9, z = 327.4 }, rot = { x = 348.5, y = 313.7, z = 8.7 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 418006, monster_id = 21020201, pos = { x = 271.0, y = 214.0, z = 289.6 }, rot = { x = 0.0, y = 348.9, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 418019, monster_id = 21011201, pos = { x = 267.8, y = 214.8, z = 283.8 }, rot = { x = 359.0, y = 330.7, z = 356.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 418020, monster_id = 21011201, pos = { x = 266.4, y = 215.0, z = 287.9 }, rot = { x = 0.0, y = 343.1, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 418021, monster_id = 21010201, pos = { x = 288.7, y = 211.5, z = 340.4 }, rot = { x = 4.4, y = 225.2, z = 5.7 }, level = 1, drop_id = 1000100 },
	{ config_id = 418022, monster_id = 21010201, pos = { x = 287.9, y = 211.7, z = 341.9 }, rot = { x = 5.6, y = 211.8, z = 4.5 }, level = 1, drop_id = 1000100 },
	{ config_id = 418028, monster_id = 21011201, pos = { x = 272.2, y = 214.1, z = 288.6 }, rot = { x = 0.0, y = 328.6, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 418007, gadget_id = 70350036, pos = { x = 262.6, y = 210.3, z = 330.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 418008, gadget_id = 70300118, pos = { x = 262.7, y = 212.1, z = 330.1 }, rot = { x = 353.7, y = 100.3, z = 359.8 }, level = 1 },
	{ config_id = 418009, gadget_id = 70350023, pos = { x = 262.7, y = 210.3, z = 330.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 418023, gadget_id = 70220005, pos = { x = 266.2, y = 211.1, z = 310.5 }, rot = { x = 353.0, y = 180.6, z = 351.1 }, level = 1 },
	{ config_id = 418024, gadget_id = 70220005, pos = { x = 262.8, y = 212.7, z = 297.3 }, rot = { x = 348.7, y = 179.0, z = 8.0 }, level = 1 },
	{ config_id = 418025, gadget_id = 70220010, pos = { x = 268.7, y = 210.3, z = 332.9 }, rot = { x = 0.0, y = 223.9, z = 0.0 }, level = 1 },
	{ config_id = 418026, gadget_id = 70220005, pos = { x = 260.0, y = 210.2, z = 352.1 }, rot = { x = 359.1, y = 178.3, z = 359.1 }, level = 1 },
	{ config_id = 418027, gadget_id = 70220005, pos = { x = 275.7, y = 210.2, z = 337.8 }, rot = { x = 16.7, y = 176.4, z = 348.8 }, level = 1 },
	{ config_id = 418029, gadget_id = 70220010, pos = { x = 254.0, y = 210.2, z = 335.3 }, rot = { x = 0.0, y = 152.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_418010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418010", action = "action_EVENT_ANY_MONSTER_DIE_418010", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_418011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418011", action = "action_EVENT_ANY_MONSTER_DIE_418011", trigger_count = 0 },
	{ name = "GADGET_CREATE_418012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_418012", action = "action_EVENT_GADGET_CREATE_418012", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_418013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_418013", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_418014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418014", action = "action_EVENT_ANY_MONSTER_DIE_418014", trigger_count = 0 },
	{ name = "SELECT_OPTION_418015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_418015", action = "action_EVENT_SELECT_OPTION_418015", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_418016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_418016", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_418017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_418017", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_418018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_418018", action = "action_EVENT_ANY_MONSTER_LIVE_418018", trigger_count = 0 }
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
		gadgets = { 418008, 418009 },
		regions = { },
		triggers = { "GADGET_CREATE_418012", "ANY_MONSTER_DIE_418013", "SELECT_OPTION_418015", "CHALLENGE_SUCCESS_418016", "CHALLENGE_FAIL_418017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 418001, 418019, 418020, 418028 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_418010", "ANY_MONSTER_LIVE_418018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 418002, 418003, 418021, 418022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_418011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 418004, 418005, 418006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_418014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 418007, 418023, 418024, 418025, 418026, 418027, 418029 },
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
function condition_EVENT_ANY_MONSTER_DIE_418010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=262, y=210, z=329}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_418011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=262, y=210, z=329}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_418012(context, evt)
	if 418009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_418012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104418, 418009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_418014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_418015(context, evt)
	-- 判断是gadgetid 418009 option_id 7
	if 418009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_418015(context, evt)
	-- 将configid为 418009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418009, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 418008 }) then
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 2)
	
	-- 删除指定group： 133104418 ；指定config：418009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104418, 418009, 7) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_418016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 5)
	
	-- 将configid为 418009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418009, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 418008 }) then
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
function action_EVENT_CHALLENGE_FAIL_418017(context, evt)
	-- 将configid为 418009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418009, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 创建id为418008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 418008 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104418, 418009, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_418018(context, evt)
	if 418019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_418018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133104418, 11, 418007, 0) then
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
end

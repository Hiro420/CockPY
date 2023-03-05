--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424, monster_id = 28020301, pos = { x = 1775.4, y = 216.8, z = -362.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 425, monster_id = 28020301, pos = { x = 1769.7, y = 216.4, z = -349.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 426, monster_id = 28020301, pos = { x = 1810.1, y = 216.4, z = -360.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 427, monster_id = 28020301, pos = { x = 1798.2, y = 212.2, z = -337.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 428, monster_id = 28020301, pos = { x = 1801.8, y = 218.2, z = -372.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 429, monster_id = 28020301, pos = { x = 1769.6, y = 210.9, z = -331.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 430, monster_id = 28020301, pos = { x = 1759.2, y = 216.2, z = -358.5 }, rot = { x = 0.0, y = 274.3, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 431, monster_id = 28020301, pos = { x = 1770.7, y = 213.0, z = -340.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 432, monster_id = 28020301, pos = { x = 1800.5, y = 216.2, z = -358.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, ban_excel_drop = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225001, gadget_id = 70300080, pos = { x = 1810.9, y = 212.8, z = -372.6 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 },
	{ config_id = 225002, gadget_id = 70300080, pos = { x = 1753.0, y = 212.0, z = -358.8 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 },
	{ config_id = 225003, gadget_id = 70300080, pos = { x = 1805.6, y = 213.4, z = -361.1 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 },
	{ config_id = 225004, gadget_id = 70300080, pos = { x = 1774.9, y = 201.5, z = -331.0 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 },
	{ config_id = 225005, gadget_id = 70300080, pos = { x = 1752.2, y = 206.0, z = -346.1 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 },
	{ config_id = 225006, gadget_id = 70300080, pos = { x = 1758.7, y = 213.0, z = -368.1 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_151", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "142", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_151", trigger_count = 0, tlog_tag = "酒庄_225_驱赶野猪_成功" },
	{ name = "CHALLENGE_FAIL_152", event = EventType.EVENT_CHALLENGE_FAIL, source = "142", condition = "", action = "action_EVENT_CHALLENGE_FAIL_152", trigger_count = 0, tlog_tag = "酒庄_225_驱赶野猪_失败" },
	{ name = "ANY_MONSTER_LIVE_249", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_249", action = "action_EVENT_ANY_MONSTER_LIVE_249", tlog_tag = "酒庄_225_驱赶野猪_触发" }
}

-- 变量
variables = {
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
		monsters = { 424, 425, 426, 427, 428, 429, 430, 431, 432 },
		gadgets = { 225001, 225002, 225003, 225004, 225005, 225006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_151", "CHALLENGE_FAIL_152", "ANY_MONSTER_LIVE_249" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_151(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002143, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002225, suite = 2 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002225") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_152(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002225, suite = 2 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002226") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_249(context, evt)
	if 424 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_249(context, evt)
	-- 触发镜头注目，注目位置为坐标（1784，217，-358），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1784, y=217, z=-358}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建编号为142（该挑战的识别id),挑战内容为124的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 142, 124, 120, 133002225, 6, 0) then
		return -1
	end
	
	return 0
end

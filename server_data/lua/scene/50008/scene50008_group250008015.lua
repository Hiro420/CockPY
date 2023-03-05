-- Trigger变量
local defs = {
	challenge_1_duration = 120,
	challenge_2_duration = 100,
	challenge_3_duration = 90,
	group_id = 250008015,
	father_quest = 20004,
	chest_1 = 79,
	chest_2 = 80,
	chest_3 = 81,
	region = 45,
	nonRecordChallengeID = 184,
	recordChallengeID = 168
}
-- DEFS_MISCS
defs.quest_1_id = defs.father_quest.."02"

defs.quest_2_id = defs.father_quest.."04"

defs.quest_3_id = defs.father_quest.."06"

defs.quest_4_id = defs.father_quest.."08"

defs.quest_1_success = defs.group_id.."0101"

defs.quest_1_fail = defs.group_id.."0102"

defs.quest_2_success = defs.group_id.."0201"

defs.quest_2_fail = defs.group_id.."0202"

defs.quest_3_success = defs.group_id.."0301"

defs.quest_3_fail = defs.group_id.."0302"

defs.quest_4_success = defs.group_id.."0401"

defs.quest_4_fail = defs.group_id.."0402"

-- DEFS_MISCS

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 1, npc_id = 2000303, pos = { x = -56.6, y = 3.5, z = -428.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 76, gadget_id = 70220011, pos = { x = -56.6, y = 3.5, z = -412.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 77, gadget_id = 70220011, pos = { x = -56.6, y = 3.5, z = -407.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 78, gadget_id = 70220011, pos = { x = -56.6, y = 3.5, z = -402.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 79, gadget_id = 70211101, pos = { x = -53.0, y = 3.5, z = -430.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 80, gadget_id = 70211011, pos = { x = -56.6, y = 3.5, z = -430.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 81, gadget_id = 70211121, pos = { x = -60.2, y = 3.5, z = -430.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜高级蒙德", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 411, gadget_id = 70900201, pos = { x = -56.6, y = 3.5, z = -388.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 5, pos = { x = -56.6, y = 3.5, z = -388.9 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_40", event = EventType.EVENT_QUEST_START, source = "2000402", condition = "", action = "action_EVENT_QUEST_START_40", trigger_count = 0 },
	{ name = "QUEST_START_41", event = EventType.EVENT_QUEST_START, source = "2000404", condition = "", action = "action_EVENT_QUEST_START_41", trigger_count = 0 },
	{ name = "QUEST_START_42", event = EventType.EVENT_QUEST_START, source = "2000406", condition = "", action = "action_EVENT_QUEST_START_42", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_43", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_43", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_44", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_44", trigger_count = 0 },
	{ name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_45", action = "", trigger_count = 0, tag = "555", forbid_guest = false },
	{ name = "QUEST_START_46", event = EventType.EVENT_QUEST_START, source = "2000408", condition = "", action = "action_EVENT_QUEST_START_46", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "Challenge_Flag", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_40", "QUEST_START_41", "QUEST_START_42", "QUEST_START_46" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 76, 411 },
		regions = { 45 },
		triggers = { "CHALLENGE_SUCCESS_43", "CHALLENGE_FAIL_44", "ENTER_REGION_45" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 76, 77, 411 },
		regions = { 45 },
		triggers = { "CHALLENGE_SUCCESS_43", "CHALLENGE_FAIL_44", "ENTER_REGION_45" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 76, 77, 78, 411 },
		regions = { 45 },
		triggers = { "CHALLENGE_SUCCESS_43", "CHALLENGE_FAIL_44", "ENTER_REGION_45" },
		npcs = { 1 },
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
function action_EVENT_QUEST_START_40(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, nonRecordChallengeID, defs.challenge_1_duration, 4, 555, 1)
	-- 设定挑战标志符为1
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_41(context, evt)
	-- 添加3号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, nonRecordChallengeID, defs.challenge_2_duration, 4, 555, 1)
	-- 设定挑战标志符为2
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_42(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, nonRecordChallengeID, defs.challenge_3_duration, 4, 555, 1)
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_43(context, evt)
	-- 根据触发的挑战类型决定奖励物品
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	ScriptLib.CreateGadget(context, {config_id = defs.chest_1} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context,defs.quest_1_success)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	ScriptLib.CreateGadget(context, {config_id = defs.chest_2} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_success)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	ScriptLib.CreateGadget(context, {config_id = defs.chest_3} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_success)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_success)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_44(context, evt)
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_fail)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_fail)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_fail)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_46(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, recordChallengeID, defs.challenge_3_duration, 4, 555, 1)
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
	return 0
end

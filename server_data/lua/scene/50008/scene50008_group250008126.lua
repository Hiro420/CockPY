-- Trigger变量
local defs = {
	challenge_1_duration = 50,
	challenge_2_duration = 40,
	challenge_3_duration = 30,
	group_id = 250008126,
	father_quest = 21016,
	region = 62013,
	gadget_chest_1 = 126004,
	gadget_chest_2 = 126005,
	gadget_chest_3 = 126006,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	source_2 = "2101602",
	source_4 = "2101604",
	source_6 = "2101606",
	source_8 = "2101608"
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
	{ config_id = 126030, npc_id = 20036, pos = { x = -55.7, y = 3.5, z = -425.8 }, rot = { x = 0.0, y = 184.8, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 126001, gadget_id = 70690001, pos = { x = -54.4, y = 3.5, z = -410.7 }, rot = { x = 0.0, y = 183.1, z = 0.0 }, level = 1 },
	{ config_id = 126004, gadget_id = 70211101, pos = { x = -57.3, y = 3.4, z = -423.6 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 126005, gadget_id = 70211111, pos = { x = -55.5, y = 3.4, z = -423.4 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 126006, gadget_id = 70211121, pos = { x = -53.4, y = 3.3, z = -423.1 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 126015, gadget_id = 70690006, pos = { x = -54.0, y = 3.5, z = -406.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 126018, gadget_id = 70220011, pos = { x = -55.1, y = 3.5, z = -404.0 }, rot = { x = 0.0, y = 139.6, z = 0.0 }, level = 1 },
	{ config_id = 126028, gadget_id = 70360025, pos = { x = -54.6, y = 3.5, z = -385.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 126029, gadget_id = 70900201, pos = { x = -54.6, y = 3.5, z = -385.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 126036, shape = RegionShape.SPHERE, radius = 5, pos = { x = -54.6, y = 3.5, z = -385.1 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_126031", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_126031", trigger_count = 0 },
	{ name = "QUEST_START_126032", event = EventType.EVENT_QUEST_START, source = defs.source_4, condition = "", action = "action_EVENT_QUEST_START_126032", trigger_count = 0 },
	{ name = "QUEST_START_126033", event = EventType.EVENT_QUEST_START, source = defs.source_6, condition = "", action = "action_EVENT_QUEST_START_126033", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_126034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_126034", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_126035", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_126035", trigger_count = 0 },
	{ name = "ENTER_REGION_126036", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_126036", action = "", trigger_count = 0, tag = "555", forbid_guest = false },
	{ name = "QUEST_START_126037", event = EventType.EVENT_QUEST_START, source = defs.source_8, condition = "", action = "action_EVENT_QUEST_START_126037", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_126031", "QUEST_START_126032", "QUEST_START_126033", "QUEST_START_126037" },
		npcs = { 126030 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 126001, 126028, 126029 },
		regions = { 126036 },
		triggers = { "CHALLENGE_SUCCESS_126034", "CHALLENGE_FAIL_126035", "ENTER_REGION_126036" },
		npcs = { 126030 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 126015, 126028, 126029 },
		regions = { 126036 },
		triggers = { "CHALLENGE_SUCCESS_126034", "CHALLENGE_FAIL_126035", "ENTER_REGION_126036" },
		npcs = { 126030 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 126018, 126028, 126029 },
		regions = { 126036 },
		triggers = { "CHALLENGE_SUCCESS_126034", "CHALLENGE_FAIL_126035", "ENTER_REGION_126036" },
		npcs = { 126030 },
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
function action_EVENT_QUEST_START_126031(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_no_record, defs.challenge_1_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 1, 1)
	ScriptLib.MarkPlayerAction(context, 3000, 2, 2)
	-- 设定挑战标志符为1
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_126032(context, evt)
	-- 添加3号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_no_record, defs.challenge_2_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 3)
	-- 设定挑战标志符为2
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_126033(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_3_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 4)
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_126034(context, evt)
	-- 根据触发的挑战类型决定奖励物品
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_1} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context,defs.quest_1_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 2)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_2} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 3)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_3} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 4)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 5)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_126035(context, evt)
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 2)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 3)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 4)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 5)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_126036(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_126037(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_3_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 5)
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
	return 0
end

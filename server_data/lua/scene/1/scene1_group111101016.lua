-- Trigger变量
local defs = {
	challenge_1_duration = 50,
	challenge_2_duration = 40,
	challenge_3_duration = 30,
	group_id = 111101016,
	father_quest = 20003,
	region = 62013,
	gadget_chest_1 = 16002,
	gadget_chest_2 = 16003,
	gadget_chest_3 = 16004,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	source_2 = "2000302",
	source_4 = "2000304",
	source_6 = "2000306",
	source_8 = "2000308"
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
	{ config_id = 16009, npc_id = 2000302, pos = { x = 2518.6, y = 204.4, z = -1190.8 }, rot = { x = 357.3, y = 308.5, z = 0.8 } }
}

-- 装置
gadgets = {
	{ config_id = 16001, gadget_id = 70690001, pos = { x = 2517.5, y = 204.3, z = -1186.4 }, rot = { x = 359.7, y = 343.6, z = 359.1 }, level = 1 },
	{ config_id = 16002, gadget_id = 70211101, pos = { x = 2523.0, y = 204.5, z = -1189.8 }, rot = { x = 3.2, y = 312.2, z = 0.5 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 16003, gadget_id = 70211111, pos = { x = 2521.4, y = 204.5, z = -1191.4 }, rot = { x = 3.1, y = 312.2, z = 358.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 16004, gadget_id = 70211121, pos = { x = 2519.9, y = 204.6, z = -1193.2 }, rot = { x = 5.0, y = 312.2, z = 358.5 }, level = 1, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 16005, gadget_id = 70690006, pos = { x = 2516.1, y = 204.1, z = -1177.8 }, rot = { x = 2.2, y = 319.8, z = 357.0 }, level = 1 },
	{ config_id = 16006, gadget_id = 70220011, pos = { x = 2515.3, y = 203.9, z = -1165.3 }, rot = { x = 9.6, y = 99.8, z = 1.7 }, level = 1 },
	{ config_id = 16007, gadget_id = 70360025, pos = { x = 2511.9, y = 204.0, z = -1152.9 }, rot = { x = 354.2, y = 320.3, z = 354.4 }, level = 1 },
	{ config_id = 16008, gadget_id = 70900201, pos = { x = 2511.9, y = 204.0, z = -1152.9 }, rot = { x = 354.2, y = 320.3, z = 354.4 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2511.9, y = 204.0, z = -1152.9 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_16010", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_16010", trigger_count = 0 },
	{ name = "QUEST_START_16011", event = EventType.EVENT_QUEST_START, source = defs.source_4, condition = "", action = "action_EVENT_QUEST_START_16011", trigger_count = 0 },
	{ name = "QUEST_START_16012", event = EventType.EVENT_QUEST_START, source = defs.source_6, condition = "", action = "action_EVENT_QUEST_START_16012", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_16013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_16013", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_16014", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_16014", trigger_count = 0 },
	{ name = "ENTER_REGION_16015", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_16015", action = "", trigger_count = 0, tag = "555", forbid_guest = false },
	{ name = "QUEST_START_16016", event = EventType.EVENT_QUEST_START, source = defs.source_8, condition = "", action = "action_EVENT_QUEST_START_16016", trigger_count = 0 }
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
		triggers = { "QUEST_START_16010", "QUEST_START_16011", "QUEST_START_16012", "QUEST_START_16016" },
		npcs = { 16009 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 16001, 16007, 16008 },
		regions = { 16015 },
		triggers = { "CHALLENGE_SUCCESS_16013", "CHALLENGE_FAIL_16014", "ENTER_REGION_16015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 16001, 16005, 16007, 16008 },
		regions = { 16015 },
		triggers = { "CHALLENGE_SUCCESS_16013", "CHALLENGE_FAIL_16014", "ENTER_REGION_16015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 16001, 16005, 16006, 16007, 16008 },
		regions = { 16015 },
		triggers = { "CHALLENGE_SUCCESS_16013", "CHALLENGE_FAIL_16014", "ENTER_REGION_16015" },
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
function action_EVENT_QUEST_START_16010(context, evt)
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
function action_EVENT_QUEST_START_16011(context, evt)
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
function action_EVENT_QUEST_START_16012(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_16013(context, evt)
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
function action_EVENT_CHALLENGE_FAIL_16014(context, evt)
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
function condition_EVENT_ENTER_REGION_16015(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_16016(context, evt)
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

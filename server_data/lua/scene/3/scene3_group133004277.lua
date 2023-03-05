-- Trigger变量
local defs = {
	challenge_1_duration = 50,
	challenge_2_duration = 40,
	challenge_3_duration = 30,
	group_id = 133004277,
	father_quest = 20003,
	region = 277019,
	gadget_chest_1 = 277002,
	gadget_chest_2 = 277003,
	gadget_chest_3 = 277004,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	region_packet = 5
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
}

-- 装置
gadgets = {
	{ config_id = 277001, gadget_id = 70690001, pos = { x = 2919.0, y = 240.8, z = -719.9 }, rot = { x = 0.0, y = 183.1, z = 0.0 }, level = 32 },
	{ config_id = 277002, gadget_id = 70211101, pos = { x = 2916.1, y = 240.7, z = -732.8 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 32, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 277003, gadget_id = 70211111, pos = { x = 2917.9, y = 240.7, z = -732.6 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 32, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 277004, gadget_id = 70211121, pos = { x = 2920.0, y = 240.6, z = -732.3 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 32, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 277005, gadget_id = 70690006, pos = { x = 2919.4, y = 240.8, z = -715.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277006, gadget_id = 70220011, pos = { x = 2918.3, y = 240.8, z = -713.2 }, rot = { x = 0.0, y = 139.6, z = 0.0 }, level = 32 },
	{ config_id = 277007, gadget_id = 70900201, pos = { x = 2918.8, y = 245.4, z = -694.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277008, gadget_id = 70900201, pos = { x = 2880.3, y = 245.3, z = -732.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277020, gadget_id = 70900201, pos = { x = 2896.3, y = 247.7, z = -696.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277021, gadget_id = 70900201, pos = { x = 2879.4, y = 244.7, z = -710.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277022, gadget_id = 70360025, pos = { x = 2880.3, y = 245.3, z = -732.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277023, gadget_id = 70360024, pos = { x = 2918.8, y = 245.4, z = -694.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277024, gadget_id = 70360024, pos = { x = 2896.3, y = 247.7, z = -696.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 277025, gadget_id = 70360024, pos = { x = 2879.4, y = 244.7, z = -710.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
	{ config_id = 277015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2918.8, y = 244.4, z = -694.3 } },
	{ config_id = 277017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2896.3, y = 246.7, z = -696.2 } },
	{ config_id = 277018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2879.4, y = 243.7, z = -710.0 } },
	{ config_id = 277019, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2880.3, y = 244.3, z = -732.6 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_277010", event = EventType.EVENT_QUEST_START, source = defs.quest_1_id, condition = "", action = "action_EVENT_QUEST_START_277010", trigger_count = 0 },
	{ name = "QUEST_START_277011", event = EventType.EVENT_QUEST_START, source = defs.quest_2_id, condition = "", action = "action_EVENT_QUEST_START_277011", trigger_count = 0 },
	{ name = "QUEST_START_277012", event = EventType.EVENT_QUEST_START, source = defs.quest_3_id, condition = "", action = "action_EVENT_QUEST_START_277012", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_277013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_277013", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_277014", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_277014", trigger_count = 0 },
	{ name = "ENTER_REGION_277015", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_277015", action = "action_EVENT_ENTER_REGION_277015", trigger_count = 0 },
	{ name = "QUEST_START_277016", event = EventType.EVENT_QUEST_START, source = defs.quest_4_id, condition = "", action = "action_EVENT_QUEST_START_277016", trigger_count = 0 },
	{ name = "ENTER_REGION_277019", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_277019", action = "", trigger_count = 0, tag = "555" }
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
	suite = 9,
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
		triggers = { "QUEST_START_277010", "QUEST_START_277011", "QUEST_START_277012", "QUEST_START_277016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 277001 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_277013", "CHALLENGE_FAIL_277014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 277005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_277013", "CHALLENGE_FAIL_277014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 277006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_277013", "CHALLENGE_FAIL_277014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 依次到达的region,
		monsters = { },
		gadgets = { 277007, 277023 },
		regions = { 277015, 277017, 277018 },
		triggers = { "ENTER_REGION_277015" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 依次到达的target,
		monsters = { },
		gadgets = { 277007, 277020, 277021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 277023, 277024, 277025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { 277008, 277022 },
		regions = { 277019 },
		triggers = { "ENTER_REGION_277019" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
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
function action_EVENT_QUEST_START_277010(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_no_record, defs.challenge_1_duration, 4, 555, 1)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.region_packet)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 1, 1)
	ScriptLib.MarkPlayerAction(context, 3000, 2, 2)
	-- 设定挑战标志符为1
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_277011(context, evt)
	-- 添加3号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_no_record, defs.challenge_2_duration, 4, 555, 1)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.region_packet)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 3)
	-- 设定挑战标志符为2
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_277012(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_3_duration, 4, 555, 1)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.region_packet)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 4)
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_277013(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet + 1)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet + 2)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet + 3)
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
function action_EVENT_CHALLENGE_FAIL_277014(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet + 1)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet + 2)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.region_packet + 3)
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
function condition_EVENT_ENTER_REGION_277015(context, evt)
	local tc = ScriptLib.GetCurTriggerCount(context)
	if tc >= #suites[defs.region_packet].regions then
		return false
	end 
	tc = tc + 1
	if evt.param1 ~= suites[defs.region_packet].regions[tc] then 
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277015(context, evt)
	local tc = ScriptLib.GetCurTriggerCount(context)
	local suite_r = defs.region_packet + 1
	local cur_target = suites[suite_r].gadgets[tc+1]
	local next_target = suites[suite_r].gadgets[tc+2]
	local cur_target_c = suites[suite_r + 1].gadgets[tc+1]
	local next_target_c = suites[suite_r + 1].gadgets[tc+2]
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = cur_target})
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = cur_target_c})
	if next_target ~= nil then
		ScriptLib.CreateGadget(context, { config_id = next_target })
		ScriptLib.CreateGadget(context, { config_id = next_target_c })
	else
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, suite_r + 2)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_277016(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_3_duration, 4, 555, 1)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.region_packet)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 5)
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277019(context, evt)
	if evt.param1 ~= defs.region then 
		return false
	end
	return true
end

-- 触发操作

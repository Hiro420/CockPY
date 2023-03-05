-- Trigger变量
local defs = {
	challenge_1_duration = 31,
	challenge_2_duration = 26,
	challenge_3_duration = 23,
	group_id = 133105220,
	father_quest = 21017,
	region = 220015,
	gadget_chest_1 = 220002,
	gadget_chest_2 = 220003,
	gadget_chest_3 = 220004,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	source_2 = "2101702",
	source_4 = "2101704",
	source_6 = "2101706",
	source_8 = "2101708"
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
	{ config_id = 220009, npc_id = 20037, pos = { x = 603.2, y = 316.4, z = -232.9 }, rot = { x = 0.0, y = 156.2, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 220002, gadget_id = 70211101, pos = { x = 606.0, y = 316.6, z = -232.1 }, rot = { x = 358.6, y = 241.9, z = 355.3 }, level = 1, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 220003, gadget_id = 70211111, pos = { x = 606.9, y = 316.7, z = -233.5 }, rot = { x = 359.4, y = 237.5, z = 0.4 }, level = 1, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 220004, gadget_id = 70211121, pos = { x = 607.9, y = 316.7, z = -234.8 }, rot = { x = 359.4, y = 235.7, z = 0.5 }, level = 1, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 220007, gadget_id = 70360025, pos = { x = 483.4, y = 207.8, z = -377.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 220008, gadget_id = 70900201, pos = { x = 483.4, y = 207.7, z = -377.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 220017, gadget_id = 70690001, pos = { x = 597.9, y = 314.8, z = -242.2 }, rot = { x = 28.4, y = 241.6, z = 44.1 }, level = 25 },
	{ config_id = 220018, gadget_id = 70690001, pos = { x = 591.0, y = 313.7, z = -246.4 }, rot = { x = 18.1, y = 248.1, z = 37.7 }, level = 25 },
	{ config_id = 220019, gadget_id = 70690001, pos = { x = 583.4, y = 312.1, z = -250.6 }, rot = { x = 19.6, y = 240.3, z = 28.4 }, level = 19 },
	{ config_id = 220020, gadget_id = 70690001, pos = { x = 532.6, y = 290.1, z = -302.2 }, rot = { x = 0.0, y = 210.7, z = 0.0 }, level = 19 },
	{ config_id = 220021, gadget_id = 70690001, pos = { x = 527.4, y = 289.3, z = -309.9 }, rot = { x = 0.0, y = 210.7, z = 0.0 }, level = 19 },
	{ config_id = 220022, gadget_id = 70690001, pos = { x = 521.4, y = 289.6, z = -319.5 }, rot = { x = 50.9, y = 212.6, z = 17.6 }, level = 19 },
	{ config_id = 220023, gadget_id = 70690001, pos = { x = 511.2, y = 255.5, z = -335.7 }, rot = { x = 18.9, y = 214.7, z = 14.4 }, level = 19 },
	{ config_id = 220024, gadget_id = 70690001, pos = { x = 503.5, y = 249.0, z = -345.9 }, rot = { x = 18.9, y = 214.7, z = 14.4 }, level = 19 },
	{ config_id = 220025, gadget_id = 70690001, pos = { x = 483.8, y = 240.3, z = -377.6 }, rot = { x = 89.8, y = 109.6, z = 353.1 }, level = 19 },
	{ config_id = 220026, gadget_id = 70690001, pos = { x = 483.8, y = 249.2, z = -377.5 }, rot = { x = 89.8, y = 109.6, z = 353.1 }, level = 19 },
	{ config_id = 220027, gadget_id = 70690001, pos = { x = 484.0, y = 256.9, z = -377.1 }, rot = { x = 89.8, y = 109.6, z = 353.1 }, level = 19 }
}

-- 区域
regions = {
	{ config_id = 220015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 483.4, y = 207.7, z = -377.2 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_220010", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_220010", trigger_count = 0 },
	{ name = "QUEST_START_220011", event = EventType.EVENT_QUEST_START, source = defs.source_4, condition = "", action = "action_EVENT_QUEST_START_220011", trigger_count = 0 },
	{ name = "QUEST_START_220012", event = EventType.EVENT_QUEST_START, source = defs.source_6, condition = "", action = "action_EVENT_QUEST_START_220012", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_220013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_220013", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_220014", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_220014", trigger_count = 0 },
	{ name = "ENTER_REGION_220015", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_220015", action = "action_EVENT_ENTER_REGION_220015", trigger_count = 0, tag = "555" },
	{ name = "QUEST_START_220016", event = EventType.EVENT_QUEST_START, source = defs.source_8, condition = "", action = "action_EVENT_QUEST_START_220016", trigger_count = 0 }
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
		triggers = { "QUEST_START_220010", "QUEST_START_220011", "QUEST_START_220012", "QUEST_START_220016" },
		npcs = { 220009 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 220007, 220008, 220017, 220018, 220019, 220020, 220021, 220022, 220023, 220024, 220025, 220026, 220027 },
		regions = { 220015 },
		triggers = { "CHALLENGE_SUCCESS_220013", "CHALLENGE_FAIL_220014", "ENTER_REGION_220015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 220007, 220008, 220017, 220018, 220019, 220020, 220021, 220022, 220023, 220024, 220025, 220026, 220027 },
		regions = { 220015 },
		triggers = { "CHALLENGE_SUCCESS_220013", "CHALLENGE_FAIL_220014", "ENTER_REGION_220015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 220007, 220008, 220017, 220018, 220019, 220020, 220021, 220022, 220023, 220024, 220025, 220026, 220027 },
		regions = { 220015 },
		triggers = { "CHALLENGE_SUCCESS_220013", "CHALLENGE_FAIL_220014", "ENTER_REGION_220015" },
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
function action_EVENT_QUEST_START_220010(context, evt)
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
function action_EVENT_QUEST_START_220011(context, evt)
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
function action_EVENT_QUEST_START_220012(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_220013(context, evt)
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
function action_EVENT_CHALLENGE_FAIL_220014(context, evt)
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
function condition_EVENT_ENTER_REGION_220015(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 220007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_220016(context, evt)
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

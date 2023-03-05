-- Trigger变量
local defs = {
	challenge_1_duration = 50,
	challenge_2_duration = 40,
	challenge_3_duration = 30,
	group_id = 111101038,
	father_quest = 21016,
	region = 62013,
	gadget_chest_1 = 38002,
	gadget_chest_2 = 38003,
	gadget_chest_3 = 38004,
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
	{ config_id = 38009, npc_id = 20036, pos = { x = 2382.7, y = 256.4, z = -1347.0 }, rot = { x = 0.0, y = 184.8, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 38001, gadget_id = 70690001, pos = { x = 2383.9, y = 255.2, z = -1331.8 }, rot = { x = 0.0, y = 183.1, z = 0.0 }, level = 1 },
	{ config_id = 38002, gadget_id = 70211101, pos = { x = 2381.1, y = 256.2, z = -1344.8 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 38003, gadget_id = 70211111, pos = { x = 2382.9, y = 256.6, z = -1344.6 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 38004, gadget_id = 70211121, pos = { x = 2385.0, y = 256.6, z = -1344.3 }, rot = { x = 0.0, y = 352.3, z = 0.0 }, level = 1, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 38005, gadget_id = 70690006, pos = { x = 2384.4, y = 246.4, z = -1327.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 38006, gadget_id = 70220011, pos = { x = 2383.3, y = 246.6, z = -1325.1 }, rot = { x = 0.0, y = 139.6, z = 0.0 }, level = 1 },
	{ config_id = 38007, gadget_id = 70360025, pos = { x = 2383.7, y = 248.0, z = -1306.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 38008, gadget_id = 70900201, pos = { x = 2383.7, y = 248.0, z = -1306.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 38015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2383.7, y = 248.0, z = -1306.3 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_38010", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_38010", trigger_count = 0 },
	{ name = "QUEST_START_38011", event = EventType.EVENT_QUEST_START, source = defs.source_4, condition = "", action = "action_EVENT_QUEST_START_38011", trigger_count = 0 },
	{ name = "QUEST_START_38012", event = EventType.EVENT_QUEST_START, source = defs.source_6, condition = "", action = "action_EVENT_QUEST_START_38012", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_38013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_38013", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_38014", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_38014", trigger_count = 0 },
	{ name = "ENTER_REGION_38015", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_38015", action = "", trigger_count = 0, tag = "555" },
	{ name = "QUEST_START_38016", event = EventType.EVENT_QUEST_START, source = defs.source_8, condition = "", action = "action_EVENT_QUEST_START_38016", trigger_count = 0 }
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
		triggers = { "QUEST_START_38010", "QUEST_START_38011", "QUEST_START_38012", "QUEST_START_38016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 38001, 38007, 38008 },
		regions = { 38015 },
		triggers = { "CHALLENGE_SUCCESS_38013", "CHALLENGE_FAIL_38014", "ENTER_REGION_38015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 38005, 38007, 38008 },
		regions = { 38015 },
		triggers = { "CHALLENGE_SUCCESS_38013", "CHALLENGE_FAIL_38014", "ENTER_REGION_38015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 38006, 38007, 38008 },
		regions = { 38015 },
		triggers = { "CHALLENGE_SUCCESS_38013", "CHALLENGE_FAIL_38014", "ENTER_REGION_38015" },
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
function action_EVENT_QUEST_START_38010(context, evt)
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
function action_EVENT_QUEST_START_38011(context, evt)
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
function action_EVENT_QUEST_START_38012(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_38013(context, evt)
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
function action_EVENT_CHALLENGE_FAIL_38014(context, evt)
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
function condition_EVENT_ENTER_REGION_38015(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_38016(context, evt)
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

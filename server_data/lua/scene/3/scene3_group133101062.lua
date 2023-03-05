-- Trigger变量
local defs = {
	challenge_1_duration = 40,
	challenge_2_duration = 55,
	challenge_3_duration = 45,
	group_id = 133101062,
	father_quest = 21016,
	region = 62013,
	gadget_chest_1 = 62004,
	gadget_chest_2 = 62005,
	gadget_chest_3 = 62006,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168
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
	{ config_id = 62007, npc_id = 20036, pos = { x = 1443.3, y = 243.8, z = 1286.4 }, rot = { x = 0.0, y = 268.3, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 62001, gadget_id = 70690001, pos = { x = 1396.7, y = 229.3, z = 1195.7 }, rot = { x = 0.0, y = 174.9, z = 0.0 }, level = 1 },
	{ config_id = 62002, gadget_id = 70690001, pos = { x = 1398.4, y = 225.8, z = 1171.9 }, rot = { x = 0.0, y = 199.9, z = 0.0 }, level = 1 },
	{ config_id = 62003, gadget_id = 70690001, pos = { x = 1388.2, y = 224.7, z = 1147.1 }, rot = { x = 0.0, y = 156.8, z = 0.0 }, level = 1 },
	{ config_id = 62004, gadget_id = 70211101, pos = { x = 1445.2, y = 243.8, z = 1287.9 }, rot = { x = 2.7, y = 64.9, z = 346.7 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 62005, gadget_id = 70211111, pos = { x = 1445.8, y = 243.4, z = 1286.2 }, rot = { x = 7.8, y = 88.6, z = 348.9 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 62006, gadget_id = 70211121, pos = { x = 1445.3, y = 243.1, z = 1284.2 }, rot = { x = 346.9, y = 308.8, z = 3.4 }, level = 21, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 62015, gadget_id = 70690001, pos = { x = 1393.9, y = 222.0, z = 1125.1 }, rot = { x = 0.0, y = 204.2, z = 0.0 }, level = 1 },
	{ config_id = 62016, gadget_id = 70690006, pos = { x = 1385.5, y = 195.8, z = 1069.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62017, gadget_id = 70690001, pos = { x = 1382.9, y = 220.3, z = 1100.6 }, rot = { x = 8.6, y = 171.9, z = 354.7 }, level = 1 },
	{ config_id = 62018, gadget_id = 70690001, pos = { x = 1385.6, y = 218.7, z = 1055.9 }, rot = { x = 9.1, y = 183.4, z = 355.8 }, level = 1 },
	{ config_id = 62019, gadget_id = 70690001, pos = { x = 1384.4, y = 215.0, z = 1032.7 }, rot = { x = 9.1, y = 182.9, z = 355.8 }, level = 1 },
	{ config_id = 62020, gadget_id = 70690001, pos = { x = 1383.9, y = 212.6, z = 1011.3 }, rot = { x = 9.1, y = 178.8, z = 355.8 }, level = 1 },
	{ config_id = 62021, gadget_id = 70690001, pos = { x = 1383.7, y = 210.5, z = 989.2 }, rot = { x = 9.6, y = 186.9, z = 357.1 }, level = 1 },
	{ config_id = 62022, gadget_id = 70690001, pos = { x = 1479.4, y = 226.7, z = 1210.7 }, rot = { x = 0.0, y = 148.5, z = 0.0 }, level = 1 },
	{ config_id = 62023, gadget_id = 70690006, pos = { x = 1521.5, y = 185.7, z = 1143.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 62024, gadget_id = 70690001, pos = { x = 1530.0, y = 208.3, z = 1129.5 }, rot = { x = 0.0, y = 157.9, z = 0.0 }, level = 1 },
	{ config_id = 62025, gadget_id = 70690001, pos = { x = 1535.3, y = 207.8, z = 1111.5 }, rot = { x = 0.0, y = 175.3, z = 0.0 }, level = 19 },
	{ config_id = 62027, gadget_id = 70690001, pos = { x = 1459.6, y = 229.2, z = 1241.5 }, rot = { x = 0.0, y = 147.8, z = 0.0 }, level = 1 },
	{ config_id = 62028, gadget_id = 70690001, pos = { x = 1476.8, y = 222.0, z = 1196.7 }, rot = { x = 0.0, y = 168.3, z = 0.0 }, level = 1 },
	{ config_id = 62029, gadget_id = 70690001, pos = { x = 1478.7, y = 220.8, z = 1184.6 }, rot = { x = 0.0, y = 179.4, z = 0.0 }, level = 1 },
	{ config_id = 62030, gadget_id = 70690001, pos = { x = 1468.2, y = 209.1, z = 1137.6 }, rot = { x = 0.0, y = 204.5, z = 0.0 }, level = 1 },
	{ config_id = 62031, gadget_id = 70690001, pos = { x = 1464.5, y = 209.1, z = 1129.1 }, rot = { x = 0.0, y = 201.7, z = 0.0 }, level = 1 },
	{ config_id = 62032, gadget_id = 70690001, pos = { x = 1461.2, y = 209.1, z = 1120.0 }, rot = { x = 0.0, y = 198.8, z = 0.0 }, level = 1 },
	{ config_id = 62033, gadget_id = 70690001, pos = { x = 1456.6, y = 206.4, z = 1080.0 }, rot = { x = 0.0, y = 190.2, z = 0.0 }, level = 1 },
	{ config_id = 62034, gadget_id = 70690001, pos = { x = 1455.1, y = 206.2, z = 1071.4 }, rot = { x = 0.0, y = 184.3, z = 0.0 }, level = 1 },
	{ config_id = 62035, gadget_id = 70690001, pos = { x = 1453.4, y = 205.7, z = 1062.3 }, rot = { x = 0.0, y = 191.8, z = 0.0 }, level = 1 },
	{ config_id = 62036, gadget_id = 70360025, pos = { x = 1383.4, y = 207.0, z = 965.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62037, gadget_id = 70900201, pos = { x = 1383.4, y = 207.0, z = 965.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62038, gadget_id = 70690001, pos = { x = 1431.8, y = 245.6, z = 1278.5 }, rot = { x = 0.0, y = 216.2, z = 0.0 }, level = 19 },
	{ config_id = 62039, gadget_id = 70690001, pos = { x = 1424.5, y = 244.6, z = 1269.2 }, rot = { x = 0.0, y = 215.0, z = 0.0 }, level = 19 },
	{ config_id = 62040, gadget_id = 70690001, pos = { x = 1414.7, y = 244.0, z = 1256.2 }, rot = { x = 0.0, y = 217.1, z = 0.0 }, level = 19 },
	{ config_id = 62041, gadget_id = 70690001, pos = { x = 1532.9, y = 208.3, z = 1091.8 }, rot = { x = 0.0, y = 199.3, z = 0.0 }, level = 19 },
	{ config_id = 62042, gadget_id = 70690001, pos = { x = 1523.8, y = 208.7, z = 1076.4 }, rot = { x = 0.0, y = 228.0, z = 0.0 }, level = 1 },
	{ config_id = 62043, gadget_id = 70690006, pos = { x = 1497.8, y = 191.9, z = 1050.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 62044, gadget_id = 70690001, pos = { x = 1496.1, y = 216.1, z = 1049.4 }, rot = { x = 306.9, y = 232.5, z = 0.0 }, level = 19 },
	{ config_id = 62045, gadget_id = 70690001, pos = { x = 1469.4, y = 216.8, z = 1027.3 }, rot = { x = 0.0, y = 232.5, z = 0.0 }, level = 19 },
	{ config_id = 62046, gadget_id = 70690001, pos = { x = 1449.9, y = 214.3, z = 1012.3 }, rot = { x = 0.0, y = 232.5, z = 0.0 }, level = 19 },
	{ config_id = 62047, gadget_id = 70690001, pos = { x = 1430.0, y = 212.2, z = 997.0 }, rot = { x = 0.0, y = 232.5, z = 0.0 }, level = 19 },
	{ config_id = 62048, gadget_id = 70690001, pos = { x = 1406.4, y = 210.2, z = 978.9 }, rot = { x = 0.0, y = 232.5, z = 0.0 }, level = 19 },
	{ config_id = 62049, gadget_id = 70690001, pos = { x = 1438.4, y = 244.3, z = 1275.0 }, rot = { x = 0.0, y = 169.7, z = 0.0 }, level = 19 },
	{ config_id = 62050, gadget_id = 70690006, pos = { x = 1439.6, y = 185.9, z = 1035.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62051, gadget_id = 70690001, pos = { x = 1439.4, y = 211.4, z = 1035.5 }, rot = { x = 307.5, y = 216.9, z = 7.6 }, level = 19 },
	{ config_id = 62052, gadget_id = 70690001, pos = { x = 1427.2, y = 212.7, z = 1019.4 }, rot = { x = 0.0, y = 219.3, z = 0.0 }, level = 19 },
	{ config_id = 62053, gadget_id = 70690001, pos = { x = 1413.8, y = 211.9, z = 1003.0 }, rot = { x = 0.0, y = 219.3, z = 0.0 }, level = 19 },
	{ config_id = 62054, gadget_id = 70690001, pos = { x = 1399.5, y = 210.1, z = 985.6 }, rot = { x = 0.0, y = 219.3, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
	{ config_id = 62013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1383.7, y = 207.0, z = 964.9 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_62008", event = EventType.EVENT_QUEST_START, source = defs.quest_1_id, condition = "", action = "action_EVENT_QUEST_START_62008", trigger_count = 0 },
	{ name = "QUEST_START_62009", event = EventType.EVENT_QUEST_START, source = defs.quest_2_id, condition = "", action = "action_EVENT_QUEST_START_62009", trigger_count = 0 },
	{ name = "QUEST_START_62010", event = EventType.EVENT_QUEST_START, source = defs.quest_3_id, condition = "", action = "action_EVENT_QUEST_START_62010", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_62011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_62011", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_62012", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_62012", trigger_count = 0 },
	{ name = "ENTER_REGION_62013", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_62013", action = "action_EVENT_ENTER_REGION_62013", trigger_count = 0, tag = "555" },
	{ name = "QUEST_START_62014", event = EventType.EVENT_QUEST_START, source = defs.quest_4_id, condition = "", action = "action_EVENT_QUEST_START_62014", trigger_count = 0 }
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
		triggers = { "QUEST_START_62008", "QUEST_START_62009", "QUEST_START_62010", "QUEST_START_62014" },
		npcs = { 62007 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 62001, 62002, 62003, 62015, 62016, 62017, 62018, 62019, 62020, 62021, 62036, 62037, 62038, 62039, 62040 },
		regions = { 62013 },
		triggers = { "CHALLENGE_SUCCESS_62011", "CHALLENGE_FAIL_62012", "ENTER_REGION_62013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 62022, 62023, 62024, 62025, 62027, 62036, 62037, 62041, 62042, 62043, 62044, 62045, 62046, 62047, 62048, 62049 },
		regions = { 62013 },
		triggers = { "CHALLENGE_SUCCESS_62011", "CHALLENGE_FAIL_62012", "ENTER_REGION_62013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 62027, 62028, 62029, 62030, 62031, 62032, 62033, 62034, 62035, 62036, 62037, 62049, 62050, 62051, 62052, 62053, 62054 },
		regions = { 62013 },
		triggers = { "CHALLENGE_SUCCESS_62011", "CHALLENGE_FAIL_62012", "ENTER_REGION_62013" },
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
function action_EVENT_QUEST_START_62008(context, evt)
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
function action_EVENT_QUEST_START_62009(context, evt)
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
function action_EVENT_QUEST_START_62010(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_62011(context, evt)
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
function action_EVENT_CHALLENGE_FAIL_62012(context, evt)
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
function condition_EVENT_ENTER_REGION_62013(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 62036 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_62014(context, evt)
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

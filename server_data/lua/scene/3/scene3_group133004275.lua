-- Trigger变量
local defs = {
	challenge_1_duration = 300,
	group_id = 133004275,
	father_quest = 20058,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	source_2 = "2005803"
}
-- DEFS_MISCS
defs.quest_1_id = defs.father_quest.."03"

defs.quest_1_success = defs.group_id.."01"


defs.quest_1_fail = defs.group_id.."02"





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
	{ config_id = 275002, gadget_id = 70900201, pos = { x = 2296.1, y = 260.7, z = -761.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 275006, gadget_id = 70900201, pos = { x = 2316.7, y = 260.5, z = -719.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 275007, gadget_id = 70360025, pos = { x = 2250.9, y = 216.0, z = -891.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 275008, gadget_id = 70900201, pos = { x = 2349.9, y = 250.0, z = -733.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275011, gadget_id = 70900201, pos = { x = 2250.9, y = 216.0, z = -891.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 275012, gadget_id = 70360024, pos = { x = 2296.1, y = 260.7, z = -761.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275013, gadget_id = 70360024, pos = { x = 2316.7, y = 260.5, z = -719.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275015, gadget_id = 70360024, pos = { x = 2349.9, y = 250.0, z = -733.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275016, gadget_id = 70900201, pos = { x = 2342.2, y = 252.0, z = -783.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275017, gadget_id = 70360024, pos = { x = 2342.2, y = 252.0, z = -783.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275019, gadget_id = 70900201, pos = { x = 2339.7, y = 240.8, z = -821.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275021, gadget_id = 70360024, pos = { x = 2339.7, y = 240.8, z = -821.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275022, gadget_id = 70900201, pos = { x = 2341.9, y = 244.8, z = -848.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275024, gadget_id = 70360024, pos = { x = 2341.9, y = 244.8, z = -848.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275025, gadget_id = 70900201, pos = { x = 2336.8, y = 243.0, z = -872.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275027, gadget_id = 70360024, pos = { x = 2336.8, y = 243.0, z = -872.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275028, gadget_id = 70900201, pos = { x = 2305.4, y = 248.1, z = -888.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275030, gadget_id = 70360024, pos = { x = 2305.4, y = 248.1, z = -888.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 275031, gadget_id = 70900201, pos = { x = 2272.8, y = 234.7, z = -896.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 275033, gadget_id = 70360024, pos = { x = 2272.8, y = 234.7, z = -896.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
	{ config_id = 275003, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2316.7, y = 260.5, z = -719.4 } },
	{ config_id = 275004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2296.1, y = 260.7, z = -761.0 } },
	{ config_id = 275005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2349.9, y = 250.0, z = -733.7 } },
	{ config_id = 275009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2250.9, y = 216.0, z = -891.9 } },
	{ config_id = 275018, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2342.2, y = 252.0, z = -783.0 } },
	{ config_id = 275020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2339.7, y = 240.8, z = -821.0 } },
	{ config_id = 275023, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2341.9, y = 244.8, z = -848.5 } },
	{ config_id = 275026, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2336.8, y = 243.0, z = -872.8 } },
	{ config_id = 275029, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2305.4, y = 248.1, z = -888.8 } },
	{ config_id = 275032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2272.8, y = 234.7, z = -896.2 } },
	{ config_id = 275034, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2261.0, y = 272.8, z = -750.3 } },
	{ config_id = 275035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2296.9, y = 256.3, z = -735.8 } }
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_275001", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_275001", trigger_count = 0 },
	{ name = "ENTER_REGION_275003", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275003", action = "action_EVENT_ENTER_REGION_275003" },
	{ name = "ENTER_REGION_275004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275004", action = "action_EVENT_ENTER_REGION_275004" },
	{ name = "ENTER_REGION_275005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275005", action = "action_EVENT_ENTER_REGION_275005" },
	{ name = "ENTER_REGION_275009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275009", action = "", trigger_count = 0, tag = "555" },
	{ name = "QUEST_START_275010", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_275010", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_275014", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_275014", trigger_count = 0 },
	{ name = "ENTER_REGION_275018", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275018", action = "action_EVENT_ENTER_REGION_275018" },
	{ name = "ENTER_REGION_275020", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275020", action = "action_EVENT_ENTER_REGION_275020" },
	{ name = "ENTER_REGION_275023", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275023", action = "action_EVENT_ENTER_REGION_275023" },
	{ name = "ENTER_REGION_275026", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275026", action = "action_EVENT_ENTER_REGION_275026" },
	{ name = "ENTER_REGION_275029", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275029", action = "action_EVENT_ENTER_REGION_275029" },
	{ name = "ENTER_REGION_275032", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275032", action = "action_EVENT_ENTER_REGION_275032" },
	{ name = "ENTER_REGION_275034", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275034", action = "action_EVENT_ENTER_REGION_275034" },
	{ name = "ENTER_REGION_275035", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275035", action = "action_EVENT_ENTER_REGION_275035" },
	{ name = "GATHER_275036", event = EventType.EVENT_GATHER, source = "805026", condition = "", action = "action_EVENT_GATHER_275036" }
}

-- 变量
variables = {
	{ name = "Challenge_Flag", value = 0, no_refresh = false },
	{ name = "Challenge_Endpoint_Available", value = 0, no_refresh = false },
	{ name = "Challenge_Log", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 12,
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
		triggers = { "QUEST_START_275010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 275009 },
		triggers = { "CHALLENGE_SUCCESS_275001", "ENTER_REGION_275009", "CHALLENGE_FAIL_275014", "GATHER_275036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 275002, 275012 },
		regions = { 275004, 275034 },
		triggers = { "ENTER_REGION_275004", "ENTER_REGION_275034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 275006, 275013 },
		regions = { 275003, 275035 },
		triggers = { "ENTER_REGION_275003", "ENTER_REGION_275035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 275008, 275015 },
		regions = { 275005 },
		triggers = { "ENTER_REGION_275005" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 275007, 275011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 275016, 275017 },
		regions = { 275018 },
		triggers = { "ENTER_REGION_275018" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { 275019, 275021 },
		regions = { 275020 },
		triggers = { "ENTER_REGION_275020" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { },
		gadgets = { 275022, 275024 },
		regions = { 275023 },
		triggers = { "ENTER_REGION_275023" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = suite_10,
		monsters = { },
		gadgets = { 275025, 275027 },
		regions = { 275026 },
		triggers = { "ENTER_REGION_275026" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = suite_11,
		monsters = { },
		gadgets = { 275028, 275030 },
		regions = { 275029 },
		triggers = { "ENTER_REGION_275029" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = suite_12,
		monsters = { },
		gadgets = { 275031, 275033 },
		regions = { 275032 },
		triggers = { "ENTER_REGION_275032" },
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
function action_EVENT_CHALLENGE_SUCCESS_275001(context, evt)
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context,defs.quest_1_success)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 12)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 11)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 10)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 9)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 8)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 7)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275003(context, evt)
	if evt.param1 ~= 275003 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275003(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 5)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275004(context, evt)
	if evt.param1 ~= 275004 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275004(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275005(context, evt)
	if evt.param1 ~= 275005 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275005(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 7)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275009(context, evt)
	if evt.param1 ~= 275009 then return false end
	if ScriptLib.GetGroupVariableValue(context, "Challenge_Endpoint_Available")
	 ~= 1 then 
	return false 
	end
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_275010(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	
	-- 触发镜头注目，注目位置为坐标（0，0，0），持续时间为0秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=2296, y=261, z=-761}
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos,  duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1 }) then
	return -1
	end 
	
	-- 开启限时到达挑战
	ScriptLib.SetGroupVariableValue(context, "Challenge_Log", 1)
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_1_duration, 4, 555, 1)
	
	ScriptLib.SetGroupVariableValue(context, "Challenge_Log", 2)
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	ScriptLib.SetGroupVariableValue(context, "Challenge_Endpoint_Available", 0)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_275014(context, evt)
	
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 12)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 11)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 10)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 9)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 8)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 7)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275018(context, evt)
	if evt.param1 ~= 275018 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275018(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 8)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275020(context, evt)
	if evt.param1 ~= 275020 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275020(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 9)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275023(context, evt)
	if evt.param1 ~= 275023 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275023(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 10)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 9)
	
	ScriptLib.ShowReminder(context, 1120003)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275026(context, evt)
	if evt.param1 ~= 275026 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275026(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 11)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275029(context, evt)
	if evt.param1 ~= 275029 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275029(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 12)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 11)
	
	ScriptLib.ShowReminder(context, 1120005)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275032(context, evt)
	if evt.param1 ~= 275032 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275032(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 12)
	
	ScriptLib.SetGroupVariableValue(context, "Challenge_Endpoint_Available", 1)
	
	ScriptLib.ShowReminder(context, 1120004)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275034(context, evt)
	if evt.param1 ~= 275034 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275034(context, evt)
	ScriptLib.ShowReminder(context, 1120001)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275035(context, evt)
	if evt.param1 ~= 275035 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275035(context, evt)
	ScriptLib.ShowReminder(context, 1120002)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_275036(context, evt)
	ScriptLib.ShowReminder(context, 1120005)
	return 0
end

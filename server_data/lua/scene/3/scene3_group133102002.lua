-- Trigger变量
local defs = {
	quest_1_fail = "2500040440102",
	quest_1_success = "2500040440101",
	quest_2_fail = "2500040440202",
	quest_2_success = "2500040440201",
	quest_3_fail = "2500040440302",
	quest_3_success = "2500040440301",
	challenge_1_duration = 100,
	challenge_2_duration = 90,
	challenge_3_duration = 60,
	chest_1 = 38,
	chest_2 = 37,
	chest_3 = 39,
	region_1 = 11,
	group_id = 133102002,
	quest_4_fail = "2500040440402",
	quest_4_success = "2500040440401",
	quest_1_id = "2000002",
	quest_2_id = "2000004",
	quest_3_id = "2000006",
	quest_4_id = "2000008",
	gadget_destination_id = 55
}


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
	{ config_id = 1, npc_id = 20003, pos = { x = 1940.5, y = 242.6, z = 612.6 }, rot = { x = 0.1, y = 40.8, z = 359.7 } }
}

-- 装置
gadgets = {
	{ config_id = 37, gadget_id = 70211111, pos = { x = 1945.0, y = 242.5, z = 610.6 }, rot = { x = 359.3, y = 16.1, z = 358.3 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 38, gadget_id = 70211101, pos = { x = 1946.9, y = 242.5, z = 610.2 }, rot = { x = 354.0, y = 11.8, z = 351.7 }, level = 18, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 39, gadget_id = 70211121, pos = { x = 1942.8, y = 242.6, z = 611.3 }, rot = { x = 359.8, y = 21.0, z = 359.3 }, level = 18, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55, gadget_id = 70360025, pos = { x = 1837.3, y = 252.8, z = 518.5 }, rot = { x = 0.0, y = 329.5, z = 0.0 }, level = 18 },
	{ config_id = 2001, gadget_id = 70900201, pos = { x = 1837.3, y = 252.8, z = 518.5 }, rot = { x = 0.0, y = 329.5, z = 0.0 }, level = 18 },
	{ config_id = 2002, gadget_id = 70690001, pos = { x = 1648.4, y = 221.5, z = 627.1 }, rot = { x = 0.0, y = 134.1, z = 0.0 }, level = 18 },
	{ config_id = 2003, gadget_id = 70690001, pos = { x = 1664.2, y = 222.4, z = 602.2 }, rot = { x = 0.0, y = 319.0, z = 0.0 }, level = 18 },
	{ config_id = 2005, gadget_id = 70690001, pos = { x = 1719.8, y = 229.7, z = 544.9 }, rot = { x = 0.0, y = 176.8, z = 0.0 }, level = 18 },
	{ config_id = 2007, gadget_id = 70690001, pos = { x = 1697.7, y = 222.4, z = 572.7 }, rot = { x = 0.0, y = 98.7, z = 0.0 }, level = 18 },
	{ config_id = 2008, gadget_id = 70690001, pos = { x = 1714.0, y = 222.4, z = 572.0 }, rot = { x = 0.0, y = 69.1, z = 0.0 }, level = 18 },
	{ config_id = 2010, gadget_id = 70690001, pos = { x = 1728.7, y = 222.4, z = 577.8 }, rot = { x = 0.0, y = 60.0, z = 0.0 }, level = 18 },
	{ config_id = 2012, gadget_id = 70690006, pos = { x = 1751.4, y = 210.7, z = 588.8 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2013, gadget_id = 70690006, pos = { x = 1751.4, y = 235.6, z = 588.8 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2017, gadget_id = 70690001, pos = { x = 1766.8, y = 286.4, z = 575.1 }, rot = { x = 0.0, y = 132.0, z = 0.0 }, level = 18 },
	{ config_id = 2018, gadget_id = 70690001, pos = { x = 1782.7, y = 285.7, z = 558.3 }, rot = { x = 0.0, y = 132.0, z = 0.0 }, level = 18 },
	{ config_id = 2019, gadget_id = 70690001, pos = { x = 1807.0, y = 260.9, z = 537.7 }, rot = { x = 0.0, y = 122.6, z = 0.0 }, level = 18 },
	{ config_id = 2020, gadget_id = 70690001, pos = { x = 1817.9, y = 261.2, z = 530.1 }, rot = { x = 0.0, y = 125.3, z = 0.0 }, level = 18 },
	{ config_id = 2026, gadget_id = 70690001, pos = { x = 1751.8, y = 242.7, z = 589.3 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 2027, gadget_id = 70690001, pos = { x = 1751.8, y = 261.8, z = 589.3 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 2028, gadget_id = 70690001, pos = { x = 1751.8, y = 279.6, z = 589.3 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 2029, gadget_id = 70690006, pos = { x = 1928.0, y = 241.9, z = 620.6 }, rot = { x = 89.4, y = 104.1, z = 180.0 }, level = 18 },
	{ config_id = 2030, gadget_id = 70690001, pos = { x = 1861.3, y = 233.4, z = 637.4 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2031, gadget_id = 70690001, pos = { x = 1906.8, y = 241.9, z = 625.9 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2032, gadget_id = 70690001, pos = { x = 1835.5, y = 227.0, z = 643.9 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2033, gadget_id = 70690001, pos = { x = 1692.7, y = 242.9, z = 686.7 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 18 },
	{ config_id = 2034, gadget_id = 70690001, pos = { x = 1885.9, y = 241.9, z = 631.2 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2035, gadget_id = 70690001, pos = { x = 1655.2, y = 227.3, z = 664.3 }, rot = { x = 0.0, y = 352.6, z = 0.0 }, level = 18 },
	{ config_id = 2036, gadget_id = 70690001, pos = { x = 1776.2, y = 256.2, z = 662.3 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2037, gadget_id = 70690006, pos = { x = 1794.7, y = 223.3, z = 657.0 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2038, gadget_id = 70690001, pos = { x = 1815.7, y = 227.5, z = 648.9 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2039, gadget_id = 70690001, pos = { x = 1794.7, y = 234.7, z = 657.0 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 2040, gadget_id = 70690001, pos = { x = 1748.1, y = 250.1, z = 668.8 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2041, gadget_id = 70690001, pos = { x = 1666.0, y = 242.9, z = 680.0 }, rot = { x = 0.0, y = 54.5, z = 0.0 }, level = 18 },
	{ config_id = 2042, gadget_id = 70690001, pos = { x = 1722.0, y = 243.8, z = 674.7 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 18 },
	{ config_id = 2044, gadget_id = 70690001, pos = { x = 1656.8, y = 227.3, z = 633.5 }, rot = { x = 0.0, y = 353.4, z = 0.0 }, level = 18 },
	{ config_id = 2045, gadget_id = 70690001, pos = { x = 1667.8, y = 227.5, z = 682.6 }, rot = { x = 356.0, y = 43.9, z = 356.2 }, level = 18 },
	{ config_id = 2046, gadget_id = 70690001, pos = { x = 1683.0, y = 222.4, z = 581.0 }, rot = { x = 0.0, y = 127.8, z = 0.0 }, level = 18 },
	{ config_id = 2047, gadget_id = 70690001, pos = { x = 1663.9, y = 230.7, z = 596.6 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 2049, gadget_id = 70690001, pos = { x = 1751.8, y = 225.8, z = 589.3 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1837.3, y = 252.8, z = 518.5 } }
}

-- 触发器
triggers = {
	{ name = "QUEST_START_3", event = EventType.EVENT_QUEST_START, source = defs.quest_1_id, condition = "", action = "action_EVENT_QUEST_START_3", trigger_count = 0 },
	{ name = "QUEST_START_4", event = EventType.EVENT_QUEST_START, source = defs.quest_2_id, condition = "", action = "action_EVENT_QUEST_START_4", trigger_count = 0 },
	{ name = "QUEST_START_5", event = EventType.EVENT_QUEST_START, source = defs.quest_3_id, condition = "", action = "action_EVENT_QUEST_START_5", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_6", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_10", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10", trigger_count = 0 },
	{ name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", trigger_count = 0, tag = "555" },
	{ name = "QUEST_START_12", event = EventType.EVENT_QUEST_START, source = defs.quest_4_id, condition = "", action = "action_EVENT_QUEST_START_12", trigger_count = 0 }
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
	rand_suite = true
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
		triggers = { "QUEST_START_3", "QUEST_START_4", "QUEST_START_5", "QUEST_START_12" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 55, 2001, 2002, 2003, 2005, 2007, 2008, 2010, 2012, 2013, 2017, 2018, 2019, 2020, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2044, 2045, 2046, 2047, 2049 },
		regions = { 11 },
		triggers = { "CHALLENGE_SUCCESS_6", "CHALLENGE_FAIL_10", "ENTER_REGION_11" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 55, 2001, 2002, 2003, 2005, 2007, 2008, 2010, 2012, 2013, 2017, 2018, 2019, 2020, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2044, 2045, 2046, 2047, 2049 },
		regions = { 11 },
		triggers = { "CHALLENGE_SUCCESS_6", "CHALLENGE_FAIL_10", "ENTER_REGION_11" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 55, 2001, 2002, 2003, 2005, 2007, 2008, 2010, 2012, 2013, 2017, 2018, 2019, 2020, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2044, 2045, 2046, 2047, 2049 },
		regions = { 11 },
		triggers = { "CHALLENGE_SUCCESS_6", "CHALLENGE_FAIL_10", "ENTER_REGION_11" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_3(context, evt)
			-- 添加2号资源包
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
			-- 开启限时到达挑战
			ScriptLib.ActiveChallenge(context, 10, 184, defs.challenge_1_duration, 4, 555, 1)
			-- 设定挑战标志符为1
			ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
			return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_4(context, evt)
			-- 添加3号资源包
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
			-- 开启限时到达挑战
			ScriptLib.ActiveChallenge(context, 10, 184, defs.challenge_2_duration, 4, 555, 1)
			-- 设定挑战标志符为2
			ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
			return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_5(context, evt)
			-- 添加4号资源包
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
			-- 开启限时到达挑战
			ScriptLib.ActiveChallenge(context, 10, 168, defs.challenge_3_duration, 4, 555, 1)
			-- 设定挑战标志符为3
			ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
			return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6(context, evt)
				-- 根据触发的挑战类型决定奖励物品
				local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
				if reward == 1 then
					ScriptLib.CreateGadget(context, {config_id = defs.chest_1} )
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id }) 
					ScriptLib.AddQuestProgress(context, defs.quest_1_success)
		
			
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
				elseif reward == 2 then
					ScriptLib.CreateGadget(context, {config_id = defs.chest_2} )
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_2_success)
					
	-- 挑战结束卸载资源包
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
				elseif reward == 3 then
					ScriptLib.CreateGadget(context, {config_id = defs.chest_3} )
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_3_success)
	
					-- 挑战结束卸载资源包
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				elseif reward == 4 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id }) 
					ScriptLib.AddQuestProgress(context, defs.quest_4_success)
	
					-- 挑战结束卸载资源包
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				end
				return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10(context, evt)
				local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
				if reward == 1 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
				elseif reward == 2 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_2_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
				elseif reward == 3 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_3_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				elseif reward == 4 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_4_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				end
				return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
			if evt.param1 ~= defs.region_1 then 
				return false
			end
			return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 55 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_12(context, evt)
				-- 添加4号资源包
				ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
				-- 开启限时到达挑战
				ScriptLib.ActiveChallenge(context, 10, 168, defs.challenge_3_duration, 4, 555, 1)
				-- 设定挑战标志符为3
				ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
				return 0
end

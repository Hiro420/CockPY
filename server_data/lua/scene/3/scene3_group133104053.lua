-- Trigger变量
local defs = {
	ClueFire = 108,
	ClueWater = 109,
	ClueWind = 110,
	ClueThunder = 111,
	WaterSwitch = 116,
	GurdianPowerOff = 53004,
	GurdianPowerOn = 53012
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53012, monster_id = 24010101, pos = { x = 438.8, y = 196.8, z = 216.4 }, rot = { x = 0.0, y = 359.8, z = 0.0 }, level = 19, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
	{ config_id = 1, npc_id = 2211, pos = { x = 875.7, y = 265.0, z = 319.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 108, gadget_id = 70360028, pos = { x = 308.4, y = 227.1, z = 452.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 109, gadget_id = 70360028, pos = { x = 490.7, y = 207.6, z = 143.4 }, rot = { x = 1.3, y = 0.0, z = 0.4 }, level = 19, persistent = true },
	{ config_id = 110, gadget_id = 70360028, pos = { x = 686.8, y = 213.4, z = 399.4 }, rot = { x = 359.6, y = 0.0, z = 359.3 }, level = 19, persistent = true },
	{ config_id = 111, gadget_id = 70360028, pos = { x = 185.7, y = 247.0, z = 76.6 }, rot = { x = 0.4, y = 359.5, z = 358.7 }, level = 19, persistent = true },
	{ config_id = 116, gadget_id = 70360028, pos = { x = 453.8, y = 197.1, z = 241.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 142, gadget_id = 70380010, pos = { x = 437.9, y = 195.9, z = 236.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, route_id = 310400029, start_route = false, persistent = true },
	{ config_id = 639, gadget_id = 70211031, pos = { x = 437.9, y = 183.4, z = 236.1 }, rot = { x = 0.0, y = 279.9, z = 0.0 }, level = 22, chest_drop_id = 2000100, drop_count = 1, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 640, gadget_id = 70211111, pos = { x = 438.1, y = 183.2, z = 232.3 }, rot = { x = 0.0, y = 325.3, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 641, gadget_id = 70211111, pos = { x = 438.6, y = 183.4, z = 239.9 }, rot = { x = 6.8, y = 214.1, z = 2.3 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 642, gadget_id = 70211111, pos = { x = 874.2, y = 265.0, z = 321.1 }, rot = { x = 0.0, y = 91.8, z = 0.0 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 80, shape = RegionShape.SPHERE, radius = 20, pos = { x = 439.8, y = 203.2, z = 237.6 } },
	{ config_id = 53011, shape = RegionShape.SPHERE, radius = 10, pos = { x = 686.7, y = 213.9, z = 399.6 } },
	{ config_id = 53014, shape = RegionShape.SPHERE, radius = 10, pos = { x = 308.5, y = 227.8, z = 452.2 } },
	{ config_id = 53017, shape = RegionShape.SPHERE, radius = 10, pos = { x = 185.7, y = 247.7, z = 76.7 } },
	{ config_id = 53018, shape = RegionShape.SPHERE, radius = 10, pos = { x = 489.8, y = 208.4, z = 143.0 } }
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_79", event = EventType.EVENT_VARIABLE_CHANGE, source = "findAllClueAndFinishTalk", condition = "condition_EVENT_VARIABLE_CHANGE_79", action = "action_EVENT_VARIABLE_CHANGE_79" },
	{ name = "ENTER_REGION_80", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80", action = "action_EVENT_ENTER_REGION_80" },
	{ name = "GADGET_STATE_CHANGE_81", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81", action = "action_EVENT_GADGET_STATE_CHANGE_81" },
	{ name = "GADGET_STATE_CHANGE_302", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302", action = "action_EVENT_GADGET_STATE_CHANGE_302" },
	{ name = "QUEST_FINISH_303", event = EventType.EVENT_QUEST_FINISH, source = "2100450", condition = "", action = "action_EVENT_QUEST_FINISH_303" },
	{ name = "QUEST_START_53001", event = EventType.EVENT_QUEST_START, source = "2100403", condition = "", action = "action_EVENT_QUEST_START_53001" },
	{ name = "GADGET_CREATE_53002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53002", action = "action_EVENT_GADGET_CREATE_53002", trigger_count = 0 },
	{ name = "SELECT_OPTION_53003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53003", action = "action_EVENT_SELECT_OPTION_53003", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_53004", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "", action = "action_EVENT_VARIABLE_CHANGE_53004", trigger_count = 0 },
	{ name = "TIMER_EVENT_53005", event = EventType.EVENT_TIMER_EVENT, source = "playerReminder", condition = "", action = "action_EVENT_TIMER_EVENT_53005", trigger_count = 0 },
	{ name = "QUEST_FINISH_53006", event = EventType.EVENT_QUEST_FINISH, source = "2100420", condition = "", action = "action_EVENT_QUEST_FINISH_53006" },
	{ name = "ENTER_REGION_53011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53011", action = "action_EVENT_ENTER_REGION_53011" },
	{ name = "ANY_MONSTER_DIE_53013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53013", action = "action_EVENT_ANY_MONSTER_DIE_53013" },
	{ name = "ENTER_REGION_53014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53014", action = "action_EVENT_ENTER_REGION_53014" },
	{ name = "ENTER_REGION_53017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53017", action = "action_EVENT_ENTER_REGION_53017" },
	{ name = "ENTER_REGION_53018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53018", action = "action_EVENT_ENTER_REGION_53018" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true },
	{ name = "DefeatGurdian", value = 0, no_refresh = true },
	{ name = "isAcceptQuest", value = 0, no_refresh = true },
	{ name = "noQuestCount", value = 0, no_refresh = true },
	{ name = "findAllClue", value = 0, no_refresh = true },
	{ name = "ActiveGurdian", value = 0, no_refresh = true },
	{ name = "findAllClueAndFinishTalk", value = 0, no_refresh = true },
	{ name = "isFinished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 108, 109, 110, 111, 116, 142 },
		regions = { 53011, 53014, 53017, 53018 },
		triggers = { "QUEST_START_53001", "ENTER_REGION_53011", "ENTER_REGION_53014", "ENTER_REGION_53017", "ENTER_REGION_53018" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 108, 109, 110, 111, 116, 142 },
		regions = { 80 },
		triggers = { "VARIABLE_CHANGE_79", "ENTER_REGION_80", "GADGET_STATE_CHANGE_81", "GADGET_STATE_CHANGE_302", "QUEST_FINISH_303", "QUEST_START_53001", "GADGET_CREATE_53002", "SELECT_OPTION_53003", "VARIABLE_CHANGE_53004", "TIMER_EVENT_53005", "QUEST_FINISH_53006", "ANY_MONSTER_DIE_53013" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 53012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
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
function condition_EVENT_VARIABLE_CHANGE_79(context, evt)
	-- 判断变量"findAllClueAndFinishTalk"为1
	if ScriptLib.GetGroupVariableValue(context, "findAllClueAndFinishTalk") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79(context, evt)
	-- 创建id为639的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 639 }) then
	  return -1
	end
	
	-- 创建id为640的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 640 }) then
	  return -1
	end
	
	-- 创建id为641的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 641 }) then
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 116, {171}) then
		return -1
	end
	
	-- 将本组内变量名为 "findAllClue" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "findAllClue", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_80(context, evt)
	if evt.param1 ~= 80 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	-- 判断变量"findAllClueAndFinishTalk"为1
	if ScriptLib.GetGroupVariableValue(context, "findAllClueAndFinishTalk") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "find_secret") then
	  return -1
	end
	
	-- 调用提示id为 31040141 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040141) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81(context, evt)
	if 116 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "unlock_dungeon") then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 142) then
	  return -1
	end
	
	-- 调用提示id为 31040160 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040160) then
		return -1
	end
	
	-- 解锁当前场景中pointid 为%force_id%的 传送点或者地城入口
	if 0 ~= ScriptLib.UnlockScenePoint(context, 133) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302(context, evt)
	if 639 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302(context, evt)
	-- 调用提示id为 31040170 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040170) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "get_reward") then
	  return -1
	end
	
	-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 0) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5001, 3, 2) then
	      return -1
	    end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_303(context, evt)
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_53001(context, evt)
			-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1) then
		  return -1
		end
	
		ScriptLib.MarkPlayerAction(context, 5001, 1, 1)
		--刷新到GroupSuite2
		ScriptLib.RefreshGroup(context,{group_id = 133104053, suite = 2})
		ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueFire, {7})
		ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueWind, {7})
		ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueWater, {7})
		ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueThunder, {7})
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53002(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53002(context, evt)
		-- 设置操作台选项
									-- 如果机关没有开启添加开启按钮，如果已经开启则添加调查按钮
										--如果是4个线索的其中一个则给他们添加按钮
									if defs.ClueFire == evt.param1 or defs.ClueWind == evt.param1 or defs.ClueWater == evt.param1 or defs.ClueThunder == evt.param1 then
										if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
											ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {7})
										elseif GadgetState.GearStart == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
											ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
										end
									end
									--如果创生的Gadget是WaterSwitch的话
									if defs.WaterSwitch == evt.param1 then
											--如果已经激活了守卫
										if 1 == ScriptLib.GetGroupVariableValue(context, "ActiveGurdian") then
											--查看是否已经击败了守卫，给机关添加Option171
											if 1 == ScriptLib.GetGroupVariableValue(context,"DefeatGurdian") then
												if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
													ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
												end
												--如果没有击败守卫，
											elseif 0 == ScriptLib.GetGroupVariableValue(context,"DefeatGurdian") then 
												ScriptLib.SetGadgetStateByConfigId(context, evt.param1,GadgetState.GearStop)
												ScriptLib.AddExtraGroupSuite(context, 133104053, 3)
				
											end
										--如果没有激活守卫		
										elseif 0 == ScriptLib.GetGroupVariableValue(context, "ActiveGurdian") then
											ScriptLib.RemoveExtraGroupSuite(context, 133104053, 3)
											--查看是否找到了所有线索，给机关添加Option171
											if 1 == ScriptLib.GetGroupVariableValue(context,"findAllClueAndFinishTalk") and GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
												ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
											end
										end
									end
								
									return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_53003(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_53003(context, evt)
	if defs.ClueFire == evt.param1 or defs.ClueWind == evt.param1 or defs.ClueWater == evt.param1 or defs.ClueThunder == evt.param1 then
													--如果选择了启动按钮7，则会在启动后删除自身，并且添加调查171按钮
													if 7 == evt.param2 and ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
															--第一次开启雷机关
														if defs.ClueThunder == evt.param1 then
															ScriptLib.ShowReminder(context, 31040104)
															ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
															ScriptLib.ChangeGroupVariableValue(context, "count", 1)
															ScriptLib.AddQuestProgress(context, "133104053_progress1")
															ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
															ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, {7})
															
															--第一次开启火机关
														elseif defs.ClueFire == evt.param1 then
															ScriptLib.ShowReminder(context, 31040103)
															ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
															ScriptLib.ChangeGroupVariableValue(context, "count", 1)
															ScriptLib.AddQuestProgress(context, "133104053_progress2")
															ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
															ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, {7})
											
															--第一次开启风机关
														elseif defs.ClueWind == evt.param1 then
															ScriptLib.ShowReminder(context, 31040101)
															ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
															ScriptLib.ChangeGroupVariableValue(context, "count", 1)
															ScriptLib.AddQuestProgress(context, "133104053_progress3")
															ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
															ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, {7})
											
															--第一次开启水机关
														elseif defs.ClueWater == evt.param1 then
															ScriptLib.ShowReminder(context, 31040102)
															ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
															ScriptLib.ChangeGroupVariableValue(context, "count", 1)
															ScriptLib.AddQuestProgress(context, "133104053_progress4")
															ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
															ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, {7})
											
														end
		
	
		
		
											
													end
													--如果选择了调查按钮171，则会反复触发 reminder
													if 171 == evt.param2 then
														--反复调查雷机关
														if defs.ClueThunder == evt.param1 then
															ScriptLib.ShowReminder(context, 31040104)
															--反复调查火机关
														elseif defs.ClueFire == evt.param1 then
																ScriptLib.ShowReminder(context, 31040103)
															--反复调查风机关
														elseif defs.ClueWind == evt.param1 then
																ScriptLib.ShowReminder(context, 31040101)
															--反复调查水机关
														elseif defs.ClueWater == evt.param1 then
																ScriptLib.ShowReminder(context, 31040102)
														end
											
													end
												end
												--如果玩家开启了移动水面机关，则会开启遗迹守卫怪物的AI和血量，并且解锁无敌状态，和玩家战斗
												if defs.WaterSwitch == evt.param1 then
													if 171 == evt.param2 then
														if 0 == ScriptLib.GetGroupVariableValue(context,"ActiveGurdian") then
															ScriptLib.SetGadgetStateByConfigId(context, evt.param1,GadgetState.GearStop)
															ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
															-- 开启或者关闭groupid为133104053中,configid为：53012的怪物的ai，set为1是开启，为0是关闭
															--ScriptLib.SetMonsterAIByGroup(context, 1, defs.GurdianPowerOff, 133104053)
															-- 通知groupid为133104053中,configid为：53012的怪物入战或者脱战，set为1是入战，为0是脱战
															
															--解锁configid 为 53012 的怪物的血量
															ScriptLib.AddExtraGroupSuite(context, 133104053, 3)
															ScriptLib.SetMonsterBattleByGroup(context, 1, defs.GurdianPowerOn, 133104053)
															ScriptLib.SetGroupVariableValue(context, "ActiveGurdian", 1)
				
															ScriptLib.ShowReminder(context, 31040150)
														end
														--如果玩家是打败守卫之后开启了机关的话，
														if 1 == ScriptLib.GetGroupVariableValue(context,"DefeatGurdian") then
															ScriptLib.SetGadgetStateByConfigId(context, evt.param1,GadgetState.GearStart)
															ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
															ScriptLib.MarkPlayerAction(context, 5001, 2, 2)
											
														end
											
													end
											
												end
													
													return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53004(context, evt)
	-- 延迟5秒后,向groupId为：133104053的对象,请求一次调用,并将string参数："playerReminder" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104053, "playerReminder", 5) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_53005(context, evt)
				-- 调用提示id为 1003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
				local loccount = ScriptLib.GetGroupVariableValue(context,"count")
				if loccount == 1 then
					ScriptLib.ShowReminder(context, 31040110)
				elseif loccount == 2 then
					ScriptLib.ShowReminder(context, 31040121)
				elseif loccount == 3 then
					ScriptLib.ShowReminder(context, 31040120)
				elseif loccount == 4 then
					ScriptLib.ShowReminder(context, 31040131)
				end
			
				ScriptLib.CancelGroupTimerEvent(context, 133104053, "playerReminder")
				return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_53006(context, evt)
	-- 将本组内变量名为 "findAllClueAndFinishTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "findAllClueAndFinishTalk", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53011(context, evt)
	if evt.param1 ~= 53011 then return false end
	
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53011(context, evt)
				local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
	
				if loccount == 0 then
					 ScriptLib.ShowReminder(context, 31040190)
				elseif loccount == 1 then
	ScriptLib.ShowReminder(context, 31040191)
				elseif loccount == 2 then
	ScriptLib.ShowReminder(context, 31040192)
				elseif loccount == 3 then
	ScriptLib.ShowReminder(context, 31040193)
				end
	ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
				return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53013(context, evt)
	-- 将configid为 116 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 116, {171}) then
		return -1
	end
	
	-- 将本组内变量名为 "DefeatGurdian" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DefeatGurdian", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53014(context, evt)
	if evt.param1 ~= 53014 then return false end
	
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53014(context, evt)
				local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
	
				if loccount == 0 then
					 ScriptLib.ShowReminder(context, 31040190)
				elseif loccount == 1 then
	ScriptLib.ShowReminder(context, 31040191)
				elseif loccount == 2 then
	ScriptLib.ShowReminder(context, 31040192)
				elseif loccount == 3 then
	ScriptLib.ShowReminder(context, 31040193)
				end
	ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
				return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53017(context, evt)
	if evt.param1 ~= 53017 then return false end
	
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53017(context, evt)
				local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
	
				if loccount == 0 then
					 ScriptLib.ShowReminder(context, 31040190)
				elseif loccount == 1 then
	ScriptLib.ShowReminder(context, 31040191)
				elseif loccount == 2 then
	ScriptLib.ShowReminder(context, 31040192)
				elseif loccount == 3 then
	ScriptLib.ShowReminder(context, 31040193)
				end
	ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
				return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53018(context, evt)
	if evt.param1 ~= 53018 then return false end
	
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53018(context, evt)
				local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
	
				if loccount == 0 then
					 ScriptLib.ShowReminder(context, 31040190)
				elseif loccount == 1 then
	ScriptLib.ShowReminder(context, 31040191)
				elseif loccount == 2 then
	ScriptLib.ShowReminder(context, 31040192)
				elseif loccount == 3 then
	ScriptLib.ShowReminder(context, 31040193)
				end
	ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
				return 0
end

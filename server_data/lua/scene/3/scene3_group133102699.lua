--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 699002, monster_id = 24010201, pos = { x = 1500.0, y = 219.6, z = 581.1 }, rot = { x = 0.0, y = 46.4, z = 0.0 }, level = 18, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
	{ config_id = 699004, npc_id = 20047, pos = { x = 1496.7, y = 219.4, z = 579.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 699001, gadget_id = 70360028, pos = { x = 1496.7, y = 219.4, z = 579.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 699006, gadget_id = 70211131, pos = { x = 1536.9, y = 225.5, z = 568.0 }, rot = { x = 0.0, y = 268.5, z = 0.0 }, level = 18, drop_tag = "解谜超级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_699003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_699003", action = "action_EVENT_ANY_MONSTER_DIE_699003" },
	{ name = "QUEST_START_699005", event = EventType.EVENT_QUEST_START, source = "2101903", condition = "", action = "action_EVENT_QUEST_START_699005" },
	{ name = "QUEST_FINISH_699007", event = EventType.EVENT_QUEST_FINISH, source = "2101903", condition = "", action = "action_EVENT_QUEST_FINISH_699007" },
	{ name = "GADGET_STATE_CHANGE_699008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_699008", action = "action_EVENT_GADGET_STATE_CHANGE_699008" },
	{ name = "TIMER_EVENT_699009", event = EventType.EVENT_TIMER_EVENT, source = "start", condition = "", action = "action_EVENT_TIMER_EVENT_699009" },
	{ name = "TIMER_EVENT_699010", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_699010" }
}

-- 变量
variables = {
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
		monsters = { 699002 },
		gadgets = { 699001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_699003", "QUEST_START_699005", "QUEST_FINISH_699007", "GADGET_STATE_CHANGE_699008", "TIMER_EVENT_699009", "TIMER_EVENT_699010" },
		npcs = { 699004 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_699003(context, evt)
	--判断死亡怪物的configid是否为 699002
	if evt.param1 ~= 699002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_699003(context, evt)
	-- 将configid为 699001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 699001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_1") then
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：133102699的对象,请求一次调用,并将string参数："start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102699, "start", 3) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_699005(context, evt)
	-- 调用提示id为 31020603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020603) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_699007(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 107)
	
	-- 创建id为699006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 699006 }) then
	  return -1
	end
	
	-- 延迟15秒后,向groupId为：133102699的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102699, "finish", 15) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_699008(context, evt)
	if 699006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_699008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_2") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_699009(context, evt)
	-- 触发镜头注目，注目位置为坐标（1497，219，579），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1497, y=219, z=579}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 31020601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020601) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_699010(context, evt)
	-- 调用提示id为 31020606 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020606) then
		return -1
	end
	
	return 0
end

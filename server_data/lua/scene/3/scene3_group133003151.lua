--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 620, monster_id = 24010101, pos = { x = 2348.8, y = 283.9, z = -1730.7 }, rot = { x = 0.0, y = 10.0, z = 0.0 }, level = 20, drop_tag = "遗迹守卫", pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2616, gadget_id = 70211021, pos = { x = 2357.8, y = 283.9, z = -1739.3 }, rot = { x = 0.0, y = 247.1, z = 0.0 }, level = 15, drop_tag = "战斗高级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_124", event = EventType.EVENT_QUEST_FINISH, source = "38001", condition = "condition_EVENT_QUEST_FINISH_124", action = "action_EVENT_QUEST_FINISH_124" },
	{ name = "ANY_MONSTER_DIE_127", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127", action = "action_EVENT_ANY_MONSTER_DIE_127" },
	{ name = "QUEST_FINISH_464", event = EventType.EVENT_QUEST_FINISH, source = "38003", condition = "condition_EVENT_QUEST_FINISH_464", action = "action_EVENT_QUEST_FINISH_464" },
	{ name = "ANY_MONSTER_DIE_608", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_608", action = "action_EVENT_ANY_MONSTER_DIE_608" }
}

-- 变量
variables = {
	{ name = "boss_exist", value = 1, no_refresh = false }
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
		monsters = { 620 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_124", "ANY_MONSTER_DIE_127" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 620 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_124", "QUEST_FINISH_464", "ANY_MONSTER_DIE_608" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_124(context, evt)
	--检查ID为38001的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 38001 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_124(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003151, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127(context, evt)
	--判断死亡怪物的configid是否为 620
	if evt.param1 ~= 620 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127(context, evt)
	-- 将本组内变量名为 "boss_exist" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boss_exist", 0) then
	  return -1
	end
	
	-- 创建id为2616的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2616 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_464(context, evt)
	--检查ID为38003的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 38003 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_464(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003151, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_608(context, evt)
	if 620 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_608(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003151") then
	  return -1
	end
	
	-- 将本组内变量名为 "boss_exist" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boss_exist", 0) then
	  return -1
	end
	
	return 0
end

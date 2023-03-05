--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20, monster_id = 21020101, pos = { x = 232.5, y = 27.0, z = 53.8 }, rot = { x = 0.0, y = 176.5, z = 0.0 }, level = 1, disableWander = true, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55, gadget_id = 70350004, pos = { x = 221.3, y = 27.0, z = 52.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 56, gadget_id = 70350004, pos = { x = 232.6, y = 27.0, z = 52.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 57, gadget_id = 70350004, pos = { x = 226.4, y = 27.0, z = 52.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62, gadget_id = 70350003, pos = { x = 218.0, y = 26.8, z = 32.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 63, gadget_id = 70310002, pos = { x = 215.0, y = 31.6, z = 31.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 64, gadget_id = 70310002, pos = { x = 221.0, y = 31.6, z = 31.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_29", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29", action = "action_EVENT_ANY_MONSTER_DIE_29" },
	{ name = "ANY_MONSTER_LIVE_45", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_45", action = "action_EVENT_ANY_MONSTER_LIVE_45" },
	{ name = "ANY_MONSTER_LIVE_46", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_46", action = "action_EVENT_ANY_MONSTER_LIVE_46" },
	{ name = "QUEST_FINISH_54", event = EventType.EVENT_QUEST_FINISH, source = "2010109", condition = "condition_EVENT_QUEST_FINISH_54", action = "action_EVENT_QUEST_FINISH_54" },
	{ name = "MONSTER_BATTLE_16001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_16001", action = "action_EVENT_MONSTER_BATTLE_16001", trigger_count = 0 }
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
		monsters = { 20 },
		gadgets = { 55, 56, 57, 62, 63, 64 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_45", "QUEST_FINISH_54", "MONSTER_BATTLE_16001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 20 },
		gadgets = { 55, 56, 57, 62, 63, 64 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29", "ANY_MONSTER_LIVE_46", "QUEST_FINISH_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023016") then
	  return -1
	end
	
	-- 将configid为 62 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 63 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 64 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_45(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_45(context, evt)
	-- 开启或者关闭groupid为220023016中,configid为：20的怪物的ai，set为1是开启，为0是关闭
	if 0 ~= ScriptLib.SetMonsterAIByGroup(context, 0, 20, 220023016) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_46(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_46(context, evt)
	-- 开启或者关闭groupid为220023016中,configid为：20的怪物的ai，set为1是开启，为0是关闭
	if 0 ~= ScriptLib.SetMonsterAIByGroup(context, 1, 20, 220023016) then
	  return -1
	end
	
	-- 通知groupid为220023016中,configid为：20的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 20, 220023016) then
	  return -1
	end
	
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 62 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62, GadgetState.Default) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12005} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_54(context, evt)
	--检查ID为2010109的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2010109 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_54(context, evt)
	-- 将configid为 63 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 64 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64, GadgetState.Default) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12005} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_16001(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_16001(context, evt)
	-- 开启或者关闭groupid为220023016中,configid为：20的怪物的ai，set为1是开启，为0是关闭
	if 0 ~= ScriptLib.SetMonsterAIByGroup(context, 0, 20, 220023016) then
	  return -1
	end
	
	return 0
end

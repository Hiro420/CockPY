--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 543, monster_id = 21020101, pos = { x = 1250.8, y = 254.6, z = -1474.8 }, rot = { x = 0.0, y = 161.1, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", affix = { 1001, 1002, 1003 }, isElite = true, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1778, gadget_id = 70900008, pos = { x = 1254.3, y = 254.3, z = -1479.7 }, rot = { x = 0.0, y = 180.5, z = 0.0 }, level = 15, state = GadgetState.GearStop, persistent = true },
	{ config_id = 1779, gadget_id = 70211111, pos = { x = 1362.2, y = 235.6, z = -1553.4 }, rot = { x = 0.0, y = 326.5, z = 0.0 }, level = 15, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 3037, gadget_id = 70211022, pos = { x = 1249.5, y = 254.6, z = -1472.4 }, rot = { x = 0.0, y = 172.6, z = 0.0 }, level = 15, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_92", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_92", action = "action_EVENT_GADGET_STATE_CHANGE_92", tlog_tag = "解除好睡族封印" },
	{ name = "ANY_MONSTER_DIE_98", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_98", action = "action_EVENT_ANY_MONSTER_DIE_98" },
	{ name = "TIMER_EVENT_198", event = EventType.EVENT_TIMER_EVENT, source = "KillPZ", condition = "", action = "action_EVENT_TIMER_EVENT_198" }
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
		monsters = { 543 },
		gadgets = { 1778, 3037 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_92", "ANY_MONSTER_DIE_98", "TIMER_EVENT_198" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_92(context, evt)
	if 1778 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_92(context, evt)
	-- 延迟2秒后,向groupId为：133001108的对象,请求一次调用,并将string参数："KillPZ" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001108, "KillPZ", 2) then
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为9 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 9, 0) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_98(context, evt)
	--判断死亡怪物的configid是否为 543
	if evt.param1 ~= 543 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_98(context, evt)
	-- 将configid为 1778 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1778, GadgetState.Default) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（1254，255，-1479），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1254, y=255, z=-1479}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1 }) then
					return -1
				end 
	
	-- 将configid为 3037 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3037, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_198(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001088, monsters = {}, gadgets = {1775} }) then
			return -1
		end
	
	return 0
end

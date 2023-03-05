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
	{ config_id = 1781, gadget_id = 70210051, pos = { x = 1372.9, y = 235.8, z = -1569.8 }, rot = { x = 0.0, y = 48.7, z = 0.0 }, level = 15, chest_drop_id = 1010700, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "TIMER_EVENT_392", event = EventType.EVENT_TIMER_EVENT, source = "chest", condition = "", action = "action_EVENT_TIMER_EVENT_392", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_427", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427", action = "action_EVENT_GADGET_STATE_CHANGE_427", tlog_tag = "打开剑冢宝箱" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 1781 },
		regions = { },
		triggers = { "TIMER_EVENT_392", "GADGET_STATE_CHANGE_427" },
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
function action_EVENT_TIMER_EVENT_392(context, evt)
	-- 将configid为 1781 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1781, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427(context, evt)
	if 1781 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZFinal") then
	  return -1
	end
	
	return 0
end

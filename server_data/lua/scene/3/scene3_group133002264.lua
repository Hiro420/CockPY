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
	{ config_id = 2212, gadget_id = 70380004, pos = { x = 1980.6, y = 202.7, z = -824.7 }, rot = { x = 0.0, y = 161.0, z = 0.0 }, level = 25, route_id = 300200204, start_route = false, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_327", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327", action = "action_EVENT_ANY_GADGET_DIE_327", trigger_count = 0 },
	{ name = "QUEST_FINISH_339", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_339", action = "action_EVENT_QUEST_FINISH_339", trigger_count = 0 },
	{ name = "PLATFORM_REACH_POINT_340", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_340", action = "action_EVENT_PLATFORM_REACH_POINT_340" },
	{ name = "GADGET_CREATE_341", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_341", action = "action_EVENT_GADGET_CREATE_341", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "ison", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2212 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "QUEST_FINISH_339", "PLATFORM_REACH_POINT_340", "GADGET_CREATE_341" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327(context, evt)
	if 2212 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022641") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_339(context, evt)
	--检查ID为2000708的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2000708 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_339(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2212) then
	  return -1
	end
	
	-- 将group 133002264 中config id为 2212 的物件血量设为 100 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002264, 2212, 100) then
			return -1
		end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_340(context, evt)
	-- 判断是gadgetid 为 2212的移动平台，是否到达了300200204 的路线中的 3 点
	
	if 2212 ~= evt.param1 then
	  return false
	end
	
	if 300200204 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_340(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002264, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_341(context, evt)
	if 2212 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_341(context, evt)
	-- 将group 133002264 中config id为 2212 的物件血量设为 50 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002264, 2212, 50) then
			return -1
		end
	
	return 0
end

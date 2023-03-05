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
	{ config_id = 502001, gadget_id = 70220008, pos = { x = 2540.1, y = 212.2, z = -1126.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, isOneoff = true },
	{ config_id = 502002, gadget_id = 70220021, pos = { x = 2541.5, y = 212.3, z = -1113.4 }, rot = { x = 41.3, y = 70.5, z = 283.4 }, level = 2, isOneoff = true },
	{ config_id = 502003, gadget_id = 70220021, pos = { x = 2547.4, y = 214.7, z = -1107.4 }, rot = { x = 81.2, y = 57.4, z = 112.0 }, level = 2, isOneoff = true },
	{ config_id = 502004, gadget_id = 70220021, pos = { x = 2550.1, y = 211.4, z = -1126.8 }, rot = { x = 353.4, y = 63.0, z = 347.7 }, level = 2, isOneoff = true },
	{ config_id = 502005, gadget_id = 70220021, pos = { x = 2555.0, y = 215.0, z = -1110.8 }, rot = { x = 354.0, y = 65.8, z = 347.4 }, level = 2, isOneoff = true },
	{ config_id = 502006, gadget_id = 70220008, pos = { x = 2549.1, y = 215.0, z = -1111.2 }, rot = { x = 351.0, y = 0.2, z = 357.4 }, level = 2, isOneoff = true },
	{ config_id = 502007, gadget_id = 70710062, pos = { x = 2551.6, y = 215.1, z = -1115.6 }, rot = { x = 0.0, y = 293.7, z = 0.0 }, level = 30 },
	{ config_id = 502014, gadget_id = 70310011, pos = { x = 2547.4, y = 215.7, z = -1107.5 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_502015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502015", action = "action_EVENT_GADGET_STATE_CHANGE_502015" }
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
		gadgets = { 502001, 502002, 502003, 502004, 502005, 502006, 502007, 502014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_502015" },
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
function condition_EVENT_GADGET_STATE_CHANGE_502015(context, evt)
	if 502014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003502") then
	  return -1
	end
	
	return 0
end

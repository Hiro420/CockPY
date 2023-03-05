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
	{ config_id = 4107, gadget_id = 70900039, pos = { x = 2498.7, y = 203.3, z = -1132.3 }, rot = { x = 350.1, y = 331.7, z = 0.3 }, level = 2, persistent = true },
	{ config_id = 4108, gadget_id = 70220021, pos = { x = 2498.9, y = 201.8, z = -1132.1 }, rot = { x = 0.0, y = 267.5, z = 0.0 }, level = 2, isOneoff = true },
	{ config_id = 4109, gadget_id = 70211101, pos = { x = 2501.9, y = 203.1, z = -1136.8 }, rot = { x = 1.7, y = 304.1, z = 358.9 }, level = 2, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_508", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_508", action = "action_EVENT_GADGET_STATE_CHANGE_508", trigger_count = 0, tlog_tag = "新手区_主动线遗迹港口风机关_触发完成" }
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
		gadgets = { 4107, 4108 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_508" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_508(context, evt)
	if 4107 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_508(context, evt)
	-- 创生gadget 4109
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4109 }) then
		return -1
	end
	
	return 0
end

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
	{ config_id = 685, gadget_id = 70900059, pos = { x = 988.0, y = 200.0, z = 229.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 686, gadget_id = 70211001, pos = { x = 987.9, y = 200.5, z = 226.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_375", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375", action = "action_EVENT_GADGET_STATE_CHANGE_375" }
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
		gadgets = { 685 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_375" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375(context, evt)
	if 685 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375(context, evt)
	-- 创建id为686的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 686 }) then
	  return -1
	end
	
	return 0
end

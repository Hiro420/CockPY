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
	{ config_id = 573, gadget_id = 70900059, pos = { x = 195.4, y = 235.3, z = 222.9 }, rot = { x = 0.0, y = 32.9, z = 0.0 }, level = 19, isOneoff = true },
	{ config_id = 169001, gadget_id = 70211111, pos = { x = 189.7, y = 235.3, z = 217.7 }, rot = { x = 0.0, y = 32.9, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_282", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_282", action = "action_EVENT_GADGET_STATE_CHANGE_282" }
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
		gadgets = { 573 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_282" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_282(context, evt)
	if 573 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_282(context, evt)
	-- 创建id为169001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 169001 }) then
	  return -1
	end
	
	return 0
end

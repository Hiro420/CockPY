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
	{ config_id = 108, gadget_id = 70330001, pos = { x = 91.6, y = 4.0, z = -679.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 109, gadget_id = 70330002, pos = { x = 69.8, y = 4.0, z = -680.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 110, gadget_id = 70320002, pos = { x = 77.8, y = 4.0, z = -683.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 111, gadget_id = 70211001, pos = { x = 98.6, y = 4.0, z = -679.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 112, gadget_id = 70330003, pos = { x = 69.0, y = 4.0, z = -700.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 113, gadget_id = 70330001, pos = { x = 91.9, y = 4.0, z = -700.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_58", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58", action = "action_EVENT_GADGET_STATE_CHANGE_58", trigger_count = 0 }
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
		gadgets = { 108, 109, 110, 112, 113 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_58" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58(context, evt)
	if 108 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58(context, evt)
	-- 创建id为111的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 111 }) then
	  return -1
	end
	
	return 0
end

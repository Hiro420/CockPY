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
	{ config_id = 609, gadget_id = 70620002, pos = { x = -50.4, y = -10.7, z = 529.4 }, rot = { x = 0.0, y = 175.7, z = 0.0 }, level = 1 },
	{ config_id = 610, gadget_id = 70211001, pos = { x = -49.8, y = -10.7, z = 529.3 }, rot = { x = 0.0, y = 270.9, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_113", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113", action = "action_EVENT_GADGET_STATE_CHANGE_113", trigger_count = 0 }
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
	rand_suite = true,
	npcs = { }
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
		gadgets = { 609, 610 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_113" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_113(context, evt)
	if 610 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_113(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 609 }) then
		    return -1
		end
		
	
	return 0
end

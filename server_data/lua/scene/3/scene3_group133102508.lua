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
	{ config_id = 508001, gadget_id = 70211112, pos = { x = 1851.1, y = 206.1, z = 716.2 }, rot = { x = 0.0, y = 2.2, z = 0.0 }, level = 18, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 508002, gadget_id = 70360007, pos = { x = 1851.1, y = 202.9, z = 726.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_508003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_508003", action = "action_EVENT_GADGET_STATE_CHANGE_508003" }
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
		gadgets = { 508001, 508002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_508003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_508003(context, evt)
	if 508002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_508003(context, evt)
	-- 解锁目标508001
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 508001, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

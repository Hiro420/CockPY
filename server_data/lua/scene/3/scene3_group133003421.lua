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
	{ config_id = 4047, gadget_id = 70220021, pos = { x = 2662.6, y = 246.3, z = -1329.3 }, rot = { x = 0.0, y = 162.5, z = 0.0 }, level = 30, isOneoff = true },
	{ config_id = 4048, gadget_id = 70211102, pos = { x = 2662.5, y = 246.3, z = -1329.0 }, rot = { x = 0.0, y = 17.3, z = 0.0 }, level = 30, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_540", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540", action = "action_EVENT_ANY_GADGET_DIE_540" }
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
		monsters = { },
		gadgets = { 4047, 4048 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_540" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540(context, evt)
	if 4047 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540(context, evt)
	-- 解锁目标4048
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4048, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 339, monster_id = 20020101, pos = { x = 2328.6, y = 299.7, z = -123.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "元素之核" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 396, gadget_id = 70211131, pos = { x = 2336.2, y = 295.6, z = -120.7 }, rot = { x = 0.0, y = 189.8, z = 0.0 }, level = 20, drop_tag = "解谜超级蒙德", isOneoff = true },
	{ config_id = 397, gadget_id = 70620001, pos = { x = 2336.1, y = 295.6, z = -120.6 }, rot = { x = 0.0, y = 120.6, z = 0.0 }, level = 20, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_131", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_131" },
	{ name = "GADGET_STATE_CHANGE_103398", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103398", action = "action_EVENT_GADGET_STATE_CHANGE_103398" }
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
		monsters = { 339 },
		gadgets = { 396, 397 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131", "GADGET_STATE_CHANGE_103398" },
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
function action_EVENT_ANY_MONSTER_DIE_131(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103398(context, evt)
	if 396 ~= evt.param1 or GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103398(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397 }) then
		    return -1
		end
		
	
	return 0
end

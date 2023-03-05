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
	{ config_id = 3703, gadget_id = 70220014, pos = { x = 2404.5, y = 251.1, z = -1418.0 }, rot = { x = 0.0, y = 297.5, z = 0.0 }, level = 10 },
	{ config_id = 3704, gadget_id = 70220014, pos = { x = 2400.7, y = 251.2, z = -1417.4 }, rot = { x = 0.0, y = 297.5, z = 0.0 }, level = 5 },
	{ config_id = 3876, gadget_id = 70210101, pos = { x = 2401.0, y = 251.7, z = -1416.9 }, rot = { x = 0.0, y = 17.4, z = 0.0 }, level = 5, drop_tag = "搜刮点解谜通用蒙德", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 3877, gadget_id = 70210101, pos = { x = 2404.5, y = 251.7, z = -1417.4 }, rot = { x = 0.0, y = 17.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 4163, gadget_id = 70220016, pos = { x = 2406.3, y = 250.9, z = -1416.3 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_480", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_480", action = "action_EVENT_ANY_GADGET_DIE_480" },
	{ name = "ANY_GADGET_DIE_481", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481", action = "action_EVENT_ANY_GADGET_DIE_481" }
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
		gadgets = { 3703, 3704, 3876, 3877, 4163 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_480", "ANY_GADGET_DIE_481" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_480(context, evt)
	if 3703 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_480(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3877 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_481(context, evt)
	if 3704 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3876 }) then
		    return -1
		end
		
	
	return 0
end

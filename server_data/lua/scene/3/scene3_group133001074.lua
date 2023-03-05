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
	{ config_id = 1558, gadget_id = 70211101, pos = { x = 1827.0, y = 198.8, z = -1164.1 }, rot = { x = 0.0, y = 142.9, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1559, gadget_id = 70211101, pos = { x = 1884.2, y = 200.7, z = -1252.8 }, rot = { x = 0.0, y = 278.5, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_263", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_263", action = "action_EVENT_GATHER_263" }
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
		gadgets = { 1558, 1559 },
		regions = { },
		triggers = { "GATHER_263" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_263(context, evt)
	if 1563 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_263(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 24 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 28 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 30 }) then
		    return -1
		end
		
	
	return 0
end

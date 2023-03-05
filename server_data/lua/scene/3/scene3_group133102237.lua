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
	{ config_id = 866, gadget_id = 70220001, pos = { x = 1770.0, y = 227.8, z = 833.3 }, rot = { x = 2.1, y = 359.8, z = 356.3 }, level = 18 },
	{ config_id = 867, gadget_id = 70210101, pos = { x = 1770.2, y = 227.8, z = 833.3 }, rot = { x = 355.3, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜通用璃月", type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_472", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_472", action = "action_EVENT_ANY_GADGET_DIE_472" }
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
		gadgets = { 866 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_472" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_472(context, evt)
	if 866 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_472(context, evt)
	-- 创建id为867的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 867 }) then
	  return -1
	end
	
	return 0
end

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
	{ config_id = 867, gadget_id = 70211101, pos = { x = 2458.2, y = 221.4, z = 379.9 }, rot = { x = 0.0, y = 18.4, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 868, gadget_id = 70220021, pos = { x = 2457.4, y = 220.1, z = 380.4 }, rot = { x = 26.0, y = 176.5, z = 0.0 }, level = 23, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_252", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_252", action = "action_EVENT_ANY_GADGET_DIE_252", tlog_tag = "风龙_202_碎石堆宝箱_成功" }
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
		gadgets = { 868 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_252" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_252(context, evt)
	if 868 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_252(context, evt)
	-- 创建id为867的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 867 }) then
	  return -1
	end
	
	return 0
end

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
	{ config_id = 939, gadget_id = 70211101, pos = { x = 2244.8, y = 229.3, z = -131.8 }, rot = { x = 0.0, y = 360.0, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 940, gadget_id = 70220021, pos = { x = 2244.9, y = 229.2, z = -132.3 }, rot = { x = 0.0, y = 163.8, z = 0.0 }, level = 15, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_251", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251", action = "action_EVENT_ANY_GADGET_DIE_251", tlog_tag = "风龙_216_碎石堆宝箱_成功" }
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
		gadgets = { 940 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_251" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251(context, evt)
	if 940 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251(context, evt)
	-- 创建id为939的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 939 }) then
	  return -1
	end
	
	return 0
end

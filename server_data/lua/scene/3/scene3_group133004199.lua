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
	{ config_id = 1149, gadget_id = 70211101, pos = { x = 2684.6, y = 251.1, z = -369.4 }, rot = { x = 4.2, y = 2.9, z = 4.6 }, level = 20, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 1150, gadget_id = 70220024, pos = { x = 2683.4, y = 249.2, z = -370.0 }, rot = { x = 0.0, y = 170.2, z = 350.6 }, level = 20, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_254", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_254", action = "action_EVENT_ANY_GADGET_DIE_254" }
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
		gadgets = { 1150 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_254" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_254(context, evt)
	if 1150 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_254(context, evt)
	-- 创建id为1149的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1149 }) then
	  return -1
	end
	
	return 0
end

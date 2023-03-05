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
	{ config_id = 596001, gadget_id = 70211011, pos = { x = 1448.1, y = 242.0, z = 587.3 }, rot = { x = 357.1, y = 98.9, z = 2.0 }, level = 18, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 596002, gadget_id = 70220021, pos = { x = 1447.8, y = 242.1, z = 588.0 }, rot = { x = 0.0, y = 245.8, z = 0.0 }, level = 18, isOneoff = true },
	{ config_id = 596003, gadget_id = 70310001, pos = { x = 1453.2, y = 241.7, z = 590.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 596004, gadget_id = 70310001, pos = { x = 1452.1, y = 242.1, z = 583.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_596005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_596005", action = "action_EVENT_ANY_GADGET_DIE_596005" }
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
		gadgets = { 596002, 596003, 596004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_596005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_596005(context, evt)
	if 596002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_596005(context, evt)
	-- 创建id为596001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 596001 }) then
	  return -1
	end
	
	return 0
end

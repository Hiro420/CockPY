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
	{ config_id = 231001, gadget_id = 70220008, pos = { x = -741.1, y = 199.1, z = 729.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true },
	{ config_id = 231002, gadget_id = 70211001, pos = { x = -744.5, y = 192.4, z = 739.3 }, rot = { x = 349.2, y = 178.2, z = 350.6 }, level = 32, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_231003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_231003", action = "action_EVENT_ANY_GADGET_DIE_231003" }
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
		gadgets = { 231001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_231003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_231003(context, evt)
	if 231001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_231003(context, evt)
	-- 创建id为231002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231002 }) then
	  return -1
	end
	
	return 0
end

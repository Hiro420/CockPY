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
	{ config_id = 45001, gadget_id = 70900051, pos = { x = -452.8, y = 419.5, z = 601.8 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45002, gadget_id = 70310013, pos = { x = -446.6, y = 419.1, z = 600.1 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45003, gadget_id = 70310013, pos = { x = -440.8, y = 419.2, z = 598.6 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45004, gadget_id = 70310013, pos = { x = -435.0, y = 419.2, z = 597.1 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45005, gadget_id = 70310013, pos = { x = -429.2, y = 419.2, z = 595.6 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45006, gadget_id = 70310013, pos = { x = -423.4, y = 419.2, z = 594.1 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45007, gadget_id = 70211111, pos = { x = -412.0, y = 419.7, z = 591.3 }, rot = { x = 0.0, y = 286.9, z = 0.0 }, level = 24, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 45009, gadget_id = 70310013, pos = { x = -417.8, y = 419.2, z = 592.7 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 45010, gadget_id = 70310013, pos = { x = -412.3, y = 419.2, z = 591.5 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 24, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_45008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45008", action = "action_EVENT_GADGET_STATE_CHANGE_45008" }
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
		gadgets = { 45001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_45008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45002, 45003, 45004, 45005, 45006, 45007, 45009, 45010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	if 45001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107045, 2)
	
	return 0
end

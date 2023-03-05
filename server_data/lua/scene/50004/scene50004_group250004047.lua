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
	{ config_id = 395, gadget_id = 70360002, pos = { x = 1762.8, y = 256.1, z = 553.8 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 1 },
	{ config_id = 397, gadget_id = 70220013, pos = { x = 1694.3, y = 250.2, z = 601.8 }, rot = { x = 0.0, y = 91.2, z = 0.0 }, level = 1 },
	{ config_id = 398, gadget_id = 70220013, pos = { x = 1681.2, y = 251.4, z = 610.2 }, rot = { x = 0.0, y = 36.3, z = 0.0 }, level = 1 },
	{ config_id = 399, gadget_id = 70220013, pos = { x = 1693.7, y = 250.7, z = 615.8 }, rot = { x = 0.0, y = 31.7, z = 0.0 }, level = 1 },
	{ config_id = 400, gadget_id = 70220013, pos = { x = 1684.9, y = 251.4, z = 619.5 }, rot = { x = 0.0, y = 307.3, z = 0.0 }, level = 1 },
	{ config_id = 469, gadget_id = 70220014, pos = { x = 1683.4, y = 251.0, z = 596.1 }, rot = { x = 0.0, y = 222.8, z = 0.0 }, level = 1 },
	{ config_id = 470, gadget_id = 70220016, pos = { x = 1682.8, y = 252.1, z = 610.1 }, rot = { x = 0.0, y = 180.9, z = 0.0 }, level = 1 },
	{ config_id = 471, gadget_id = 70220016, pos = { x = 1688.4, y = 252.0, z = 619.6 }, rot = { x = 89.8, y = 206.7, z = 0.0 }, level = 1 },
	{ config_id = 472, gadget_id = 70220016, pos = { x = 1693.6, y = 253.0, z = 616.2 }, rot = { x = 0.0, y = 149.6, z = 0.0 }, level = 1 },
	{ config_id = 473, gadget_id = 70220015, pos = { x = 1697.3, y = 254.2, z = 603.4 }, rot = { x = 303.3, y = 275.7, z = 333.6 }, level = 1 },
	{ config_id = 475, gadget_id = 70220008, pos = { x = 1682.3, y = 250.9, z = 596.3 }, rot = { x = 0.0, y = 282.5, z = 0.0 }, level = 1 },
	{ config_id = 488, gadget_id = 70220013, pos = { x = 1703.0, y = 249.6, z = 603.4 }, rot = { x = 0.0, y = 94.2, z = 0.0 }, level = 1 },
	{ config_id = 489, gadget_id = 70220015, pos = { x = 1685.8, y = 256.2, z = 616.0 }, rot = { x = 299.0, y = 307.0, z = 333.0 }, level = 1 },
	{ config_id = 490, gadget_id = 70220014, pos = { x = 1700.8, y = 249.9, z = 607.3 }, rot = { x = 0.0, y = 222.8, z = 0.0 }, level = 1 },
	{ config_id = 491, gadget_id = 70220008, pos = { x = 1683.7, y = 250.8, z = 595.1 }, rot = { x = 0.0, y = 282.5, z = 0.0 }, level = 1 },
	{ config_id = 493, gadget_id = 70220013, pos = { x = 1692.1, y = 250.8, z = 617.0 }, rot = { x = 0.0, y = 120.5, z = 0.0 }, level = 1 },
	{ config_id = 494, gadget_id = 70220014, pos = { x = 1700.8, y = 249.7, z = 599.4 }, rot = { x = 0.0, y = 222.8, z = 0.0 }, level = 1 },
	{ config_id = 496, gadget_id = 70220008, pos = { x = 1681.3, y = 251.5, z = 612.9 }, rot = { x = 0.0, y = 282.5, z = 0.0 }, level = 1 },
	{ config_id = 497, gadget_id = 70220016, pos = { x = 1674.4, y = 252.3, z = 594.8 }, rot = { x = 0.0, y = 149.6, z = 0.0 }, level = 1 },
	{ config_id = 498, gadget_id = 70220013, pos = { x = 1697.1, y = 250.2, z = 608.1 }, rot = { x = 0.0, y = 92.0, z = 0.0 }, level = 1 },
	{ config_id = 500, gadget_id = 70220014, pos = { x = 1691.3, y = 250.6, z = 609.1 }, rot = { x = 0.0, y = 222.8, z = 0.0 }, level = 1 },
	{ config_id = 580, gadget_id = 70220008, pos = { x = 1696.4, y = 250.0, z = 600.0 }, rot = { x = 0.0, y = 282.5, z = 0.0 }, level = 1 },
	{ config_id = 581, gadget_id = 70211001, pos = { x = 1704.1, y = 250.6, z = 589.3 }, rot = { x = 0.0, y = 319.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_91", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91", action = "action_EVENT_GADGET_CREATE_91", trigger_count = 0 },
	{ name = "SELECT_OPTION_92", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_92", action = "action_EVENT_SELECT_OPTION_92", trigger_count = 0, forbid_guest = false }
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
	rand_suite = true,
	npcs = { }
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
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 473, 580, 581 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 473, 488, 489, 490, 491, 580 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 472, 473, 475, 493, 494, 580 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 473, 496, 497, 498, 500, 580 },
		regions = { },
		triggers = { "GADGET_CREATE_91", "SELECT_OPTION_92" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_91(context, evt)
	if 395 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_92(context, evt)
	if 395 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_92(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250004047, suite = 2 }) then
			return -1
		end
	
	return 0
end

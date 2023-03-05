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
	{ config_id = 2842, gadget_id = 70211101, pos = { x = 2381.1, y = 283.5, z = -1795.4 }, rot = { x = 355.6, y = 238.5, z = 2.2 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2844, gadget_id = 70220021, pos = { x = 2217.8, y = 220.9, z = -1442.5 }, rot = { x = 0.0, y = 46.6, z = 0.0 }, level = 5, isOneoff = true, persistent = true },
	{ config_id = 2845, gadget_id = 70211101, pos = { x = 2219.3, y = 220.9, z = -1441.2 }, rot = { x = 0.0, y = 245.7, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2846, gadget_id = 70220021, pos = { x = 2240.8, y = 240.8, z = -1446.8 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 5, isOneoff = true },
	{ config_id = 2847, gadget_id = 70211101, pos = { x = 2240.5, y = 242.4, z = -1445.6 }, rot = { x = 0.0, y = 245.7, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2848, gadget_id = 70211101, pos = { x = 2452.7, y = 271.4, z = -1526.6 }, rot = { x = 0.0, y = 7.3, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2849, gadget_id = 70211101, pos = { x = 2373.2, y = 273.6, z = -1518.8 }, rot = { x = 0.0, y = 12.0, z = 8.6 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2850, gadget_id = 70211101, pos = { x = 2069.9, y = 224.6, z = -1592.3 }, rot = { x = 0.0, y = 163.8, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2851, gadget_id = 70211101, pos = { x = 2392.0, y = 250.6, z = -1278.7 }, rot = { x = 0.0, y = 98.8, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2852, gadget_id = 70211101, pos = { x = 2160.8, y = 256.4, z = -1720.4 }, rot = { x = 6.8, y = 282.0, z = 355.2 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2853, gadget_id = 70211101, pos = { x = 2291.2, y = 284.9, z = -1744.8 }, rot = { x = 1.2, y = 24.5, z = 354.7 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2856, gadget_id = 70211101, pos = { x = 2373.0, y = 297.8, z = -1666.7 }, rot = { x = 0.0, y = 282.3, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 3139, gadget_id = 70211101, pos = { x = 2123.3, y = 233.1, z = -1563.9 }, rot = { x = 359.3, y = 185.9, z = 353.9 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_610", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_610", action = "action_EVENT_ANY_GADGET_DIE_610" }
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
		gadgets = { 2842, 2844, 2845, 2846, 2848, 2849, 2850, 2851, 2852, 2853, 2856, 3139 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_610" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2847 },
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
function condition_EVENT_ANY_GADGET_DIE_610(context, evt)
	if 2846 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_610(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003178, 2)
	
	return 0
end

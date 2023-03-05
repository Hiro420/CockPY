--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 20010201, pos = { x = 680.7, y = 232.0, z = 1707.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 161002, monster_id = 20010101, pos = { x = 673.8, y = 231.7, z = 1707.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 161003, monster_id = 20010101, pos = { x = 688.1, y = 233.6, z = 1707.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 161004, monster_id = 20010101, pos = { x = 677.3, y = 231.6, z = 1713.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 161005, monster_id = 20010101, pos = { x = 683.7, y = 232.5, z = 1713.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 161006, monster_id = 20010101, pos = { x = 677.0, y = 231.9, z = 1701.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 161007, monster_id = 20010101, pos = { x = 684.1, y = 232.8, z = 1701.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161009, gadget_id = 70211011, pos = { x = 680.6, y = 231.9, z = 1706.0 }, rot = { x = 1.8, y = 359.8, z = 8.0 }, level = 24, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_161008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_161008", action = "action_EVENT_ANY_GADGET_DIE_161008" }
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
		monsters = { 161001, 161002, 161003, 161004, 161005, 161006, 161007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_161008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 161009 },
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
function condition_EVENT_ANY_GADGET_DIE_161008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_161008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103161, 2)
	
	return 0
end

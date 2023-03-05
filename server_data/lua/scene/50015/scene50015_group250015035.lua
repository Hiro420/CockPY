--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21011001, pos = { x = 1634.8, y = 202.0, z = 926.0 }, rot = { x = 0.0, y = 291.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 35002, monster_id = 21011001, pos = { x = 1633.6, y = 202.0, z = 923.3 }, rot = { x = 0.0, y = 302.1, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 35003, monster_id = 22010101, pos = { x = 1626.9, y = 202.0, z = 929.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35006, monster_id = 21010201, pos = { x = 1625.0, y = 202.0, z = 930.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35007, monster_id = 21010201, pos = { x = 1628.8, y = 202.0, z = 926.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35008, monster_id = 21010701, pos = { x = 1628.8, y = 202.0, z = 930.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35009, monster_id = 21010701, pos = { x = 1623.2, y = 202.0, z = 926.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35010, monster_id = 21010301, pos = { x = 1627.3, y = 202.0, z = 926.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35011, monster_id = 21010301, pos = { x = 1627.7, y = 202.0, z = 931.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35012, monster_id = 21010501, pos = { x = 1619.0, y = 202.0, z = 931.6 }, rot = { x = 0.0, y = 112.2, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 35013, monster_id = 21010501, pos = { x = 1620.0, y = 202.0, z = 933.7 }, rot = { x = 0.0, y = 132.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 35029, monster_id = 21030301, pos = { x = 1633.9, y = 202.1, z = 924.4 }, rot = { x = 0.0, y = 307.1, z = 0.0 }, level = 1 },
	{ config_id = 35030, monster_id = 21030301, pos = { x = 1619.7, y = 202.1, z = 932.7 }, rot = { x = 0.0, y = 124.5, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35016, gadget_id = 70220005, pos = { x = 1620.6, y = 202.0, z = 934.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35017, gadget_id = 70220020, pos = { x = 1617.5, y = 202.0, z = 932.4 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35018, gadget_id = 70220020, pos = { x = 1618.2, y = 202.0, z = 934.1 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35019, gadget_id = 70220020, pos = { x = 1636.5, y = 202.0, z = 924.3 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35020, gadget_id = 70220020, pos = { x = 1635.7, y = 202.0, z = 922.6 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35021, gadget_id = 70220020, pos = { x = 1618.9, y = 202.0, z = 935.7 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35022, gadget_id = 70220020, pos = { x = 1617.0, y = 202.0, z = 931.4 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35023, gadget_id = 70220020, pos = { x = 1635.2, y = 202.0, z = 921.4 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35024, gadget_id = 70220020, pos = { x = 1637.0, y = 202.0, z = 925.5 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 35025, gadget_id = 70300083, pos = { x = 1618.4, y = 202.1, z = 933.3 }, rot = { x = 0.0, y = 300.5, z = 0.0 }, level = 1 },
	{ config_id = 35026, gadget_id = 70300083, pos = { x = 1635.7, y = 202.1, z = 923.5 }, rot = { x = 0.0, y = 291.1, z = 0.0 }, level = 1 },
	{ config_id = 35027, gadget_id = 70300089, pos = { x = 1626.6, y = 202.1, z = 928.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_35014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35014", action = "action_EVENT_ANY_MONSTER_DIE_35014" },
	{ name = "ANY_MONSTER_DIE_35015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35015", action = "action_EVENT_ANY_MONSTER_DIE_35015" },
	{ name = "ANY_GADGET_DIE_35028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_35028", action = "action_EVENT_ANY_GADGET_DIE_35028" }
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
		monsters = { 35001, 35002, 35006, 35007, 35012, 35013 },
		gadgets = { 35025, 35026, 35027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35014", "ANY_GADGET_DIE_35028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 35008, 35009, 35010, 35011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 35003, 35029, 35030 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_35014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015035, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015035, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_35028(context, evt)
	if 35027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_35028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35025 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35026 }) then
		    return -1
		end
		
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343001, monster_id = 20010201, pos = { x = 1632.4, y = 223.2, z = 223.1 }, rot = { x = 0.4, y = 360.0, z = 356.5 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 343003, monster_id = 20010101, pos = { x = 1631.9, y = 223.2, z = 220.4 }, rot = { x = 2.3, y = 0.0, z = 359.8 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 343004, monster_id = 20010101, pos = { x = 1633.9, y = 222.8, z = 225.1 }, rot = { x = 9.5, y = 359.4, z = 352.7 }, level = 15, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 343006, gadget_id = 70211101, pos = { x = 1629.9, y = 223.2, z = 223.2 }, rot = { x = 357.4, y = 101.6, z = 6.9 }, level = 1, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 343002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1632.2, y = 223.2, z = 223.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_343002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ name = "ANY_MONSTER_DIE_343005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_343005", action = "action_EVENT_ANY_MONSTER_DIE_343005" }
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
		monsters = { 343001 },
		gadgets = { },
		regions = { 343002 },
		triggers = { "ENTER_REGION_343002", "ANY_MONSTER_DIE_343005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 343003, 343004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 343006 },
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

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_343005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_343005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102343, 3)
	
	return 0
end

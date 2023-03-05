--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 21010501, pos = { x = -371.3, y = -11.0, z = -221.4 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 1 },
	{ config_id = 39002, monster_id = 21010501, pos = { x = -372.2, y = -11.0, z = -218.4 }, rot = { x = 0.0, y = 85.0, z = 0.0 }, level = 1 },
	{ config_id = 39003, monster_id = 21010501, pos = { x = -373.1, y = -11.0, z = -215.3 }, rot = { x = 0.0, y = 70.5, z = 0.0 }, level = 1 },
	{ config_id = 39004, monster_id = 21010501, pos = { x = -372.2, y = -11.0, z = -212.4 }, rot = { x = 0.0, y = 88.0, z = 0.0 }, level = 1 },
	{ config_id = 39005, monster_id = 21010501, pos = { x = -371.7, y = -11.0, z = -209.5 }, rot = { x = 0.0, y = 92.7, z = 0.0 }, level = 1 },
	{ config_id = 39006, monster_id = 21010501, pos = { x = -369.9, y = -11.0, z = -207.3 }, rot = { x = 0.0, y = 90.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 39007, gadget_id = 70220019, pos = { x = -366.5, y = -11.0, z = -222.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 39008, gadget_id = 70310004, pos = { x = -370.9, y = -11.0, z = -219.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 39009, gadget_id = 70310004, pos = { x = -370.8, y = -11.0, z = -211.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 39010, gadget_id = 70220007, pos = { x = -369.9, y = -11.0, z = -205.1 }, rot = { x = 0.0, y = 333.4, z = 0.0 }, level = 1 },
	{ config_id = 39011, gadget_id = 70220015, pos = { x = -370.2, y = -11.0, z = -208.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 39012, gadget_id = 70310001, pos = { x = -370.4, y = -11.0, z = -214.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_39013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39013", action = "action_EVENT_ANY_MONSTER_DIE_39013" }
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
	rand_suite = false,
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
		monsters = { 39001, 39002, 39003, 39004, 39005, 39006 },
		gadgets = { 39008, 39009, 39010, 39011, 39012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_39013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016039) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39013(context, evt)
	-- 创建id为39007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 39007 }) then
	  return -1
	end
	
	return 0
end

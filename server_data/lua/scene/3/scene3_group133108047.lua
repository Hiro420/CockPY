--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 20010501, pos = { x = -243.8, y = 200.4, z = -1008.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 47002, monster_id = 20010501, pos = { x = -241.1, y = 200.8, z = -1008.1 }, rot = { x = 0.0, y = 325.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 47004, monster_id = 20010601, pos = { x = -241.9, y = 200.8, z = -1006.1 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_47003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_47003", action = "action_EVENT_MONSTER_BATTLE_47003" }
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
		monsters = { 47001, 47002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_47003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_47003(context, evt)
	if 47001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_47003(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47004, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

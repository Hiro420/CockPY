--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80, monster_id = 21010101, pos = { x = 170.2, y = 0.6, z = 55.3 }, rot = { x = 0.0, y = 171.7, z = 0.0 }, level = 1 },
	{ config_id = 81, monster_id = 21010101, pos = { x = 165.1, y = 0.6, z = 47.3 }, rot = { x = 0.0, y = 83.3, z = 0.0 }, level = 1 },
	{ config_id = 82, monster_id = 21010101, pos = { x = 168.5, y = 0.6, z = 40.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 83, monster_id = 21010101, pos = { x = 173.2, y = 0.6, z = 44.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 84, monster_id = 21010101, pos = { x = 173.0, y = 0.6, z = 51.4 }, rot = { x = 0.0, y = 225.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128, gadget_id = 70900207, pos = { x = 166.2, y = 0.7, z = 53.0 }, rot = { x = 0.0, y = 37.9, z = 0.0 }, level = 1 },
	{ config_id = 129, gadget_id = 70900207, pos = { x = 170.2, y = 0.5, z = 53.1 }, rot = { x = 0.0, y = 8.7, z = 0.0 }, level = 1 },
	{ config_id = 130, gadget_id = 70900207, pos = { x = 170.4, y = 0.4, z = 49.1 }, rot = { x = 0.0, y = 129.9, z = 0.0 }, level = 1 },
	{ config_id = 131, gadget_id = 70900207, pos = { x = 166.3, y = 0.6, z = 49.2 }, rot = { x = 0.0, y = 293.3, z = 0.0 }, level = 1 },
	{ config_id = 140, gadget_id = 70510008, pos = { x = 167.9, y = 0.9, z = 51.0 }, rot = { x = 0.0, y = 112.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_75", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75", action = "action_EVENT_ANY_MONSTER_DIE_75", trigger_count = 0 }
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
		monsters = { 80, 81, 82, 83, 84 },
		gadgets = { 128, 129, 130, 140 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_75" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_75(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220000041) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 82, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 83, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 84, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

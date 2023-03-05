--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2, monster_id = 20011101, pos = { x = 455.3, y = -31.4, z = 21.3 }, rot = { x = 0.0, y = 267.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4, monster_id = 20011001, pos = { x = 453.2, y = -31.4, z = 22.6 }, rot = { x = 0.0, y = 264.8, z = 0.0 }, level = 1 },
	{ config_id = 6, monster_id = 20011001, pos = { x = 453.3, y = -31.4, z = 19.4 }, rot = { x = 0.0, y = 263.1, z = 0.0 }, level = 1 },
	{ config_id = 7, monster_id = 20011001, pos = { x = 453.6, y = -31.4, z = 6.4 }, rot = { x = 0.0, y = 268.3, z = 0.0 }, level = 1 },
	{ config_id = 8, monster_id = 20011001, pos = { x = 453.6, y = -31.4, z = 9.1 }, rot = { x = 0.0, y = 275.0, z = 0.0 }, level = 1 },
	{ config_id = 16, monster_id = 20011101, pos = { x = 455.3, y = -31.5, z = 7.6 }, rot = { x = 0.0, y = 271.2, z = 0.0 }, level = 1, disableWander = true }
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
	{ name = "MONSTER_BATTLE_13", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_13", action = "action_EVENT_MONSTER_BATTLE_13" },
	{ name = "MONSTER_BATTLE_14", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_14", action = "action_EVENT_MONSTER_BATTLE_14" },
	{ name = "ANY_MONSTER_DIE_63", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63", action = "action_EVENT_ANY_MONSTER_DIE_63" }
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
	rand_suite = true
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
		monsters = { 2, 16 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_13", "MONSTER_BATTLE_14", "ANY_MONSTER_DIE_63" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_13(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_13(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_14(context, evt)
	if 16 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_14(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220010007) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63(context, evt)
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.GearStart) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 76, {7}) then
		return -1
	end
	
	return 0
end

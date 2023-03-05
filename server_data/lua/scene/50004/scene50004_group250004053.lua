--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35, monster_id = 21010401, pos = { x = 1554.8, y = 249.4, z = 958.9 }, rot = { x = 0.0, y = 170.3, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 36, monster_id = 21010501, pos = { x = 1565.7, y = 249.4, z = 962.1 }, rot = { x = 0.0, y = 198.1, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 37, monster_id = 21010901, pos = { x = 1571.0, y = 249.4, z = 958.9 }, rot = { x = 0.0, y = 222.5, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 38, monster_id = 21011001, pos = { x = 1573.8, y = 249.4, z = 953.7 }, rot = { x = 0.0, y = 253.8, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 39, monster_id = 23030101, pos = { x = 1566.7, y = 245.9, z = 952.8 }, rot = { x = 0.0, y = 234.1, z = 0.0 }, level = 20 },
	{ config_id = 40, monster_id = 21010401, pos = { x = 1574.2, y = 249.4, z = 947.4 }, rot = { x = 0.0, y = 291.7, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 41, monster_id = 21010401, pos = { x = 1559.4, y = 249.4, z = 962.0 }, rot = { x = 0.0, y = 170.3, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 42, monster_id = 21010401, pos = { x = 1570.8, y = 249.4, z = 942.6 }, rot = { x = 0.0, y = 291.7, z = 0.0 }, level = 20, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 569, gadget_id = 70211001, pos = { x = 1568.9, y = 245.9, z = 954.4 }, rot = { x = 0.0, y = 243.2, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_95", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95", action = "action_EVENT_ANY_MONSTER_DIE_95", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_96", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_96", action = "action_EVENT_ANY_MONSTER_DIE_96" }
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
		monsters = { 35, 36, 37, 38, 40, 41, 42 },
		gadgets = { 569 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95", "ANY_MONSTER_DIE_96" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004053) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 39, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_96(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004053) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_96(context, evt)
	-- 解锁目标569
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 569, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

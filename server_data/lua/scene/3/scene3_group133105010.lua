--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48, monster_id = 22010201, pos = { x = 632.5, y = 222.0, z = -484.1 }, rot = { x = 0.0, y = 150.7, z = 0.0 }, level = 23, drop_tag = "深渊法师", disableWander = true, affix = { 1001 }, isElite = true, pose_id = 9013 },
	{ config_id = 53, monster_id = 21011001, pos = { x = 639.3, y = 222.7, z = -484.2 }, rot = { x = 0.0, y = 323.5, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 54, monster_id = 21011001, pos = { x = 632.9, y = 222.2, z = -490.5 }, rot = { x = 0.0, y = 323.5, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50, gadget_id = 70211012, pos = { x = 633.7, y = 222.2, z = -485.7 }, rot = { x = 3.7, y = 327.1, z = 1.1 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_8", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_8", action = "action_EVENT_MONSTER_BATTLE_8" },
	{ name = "ANY_MONSTER_DIE_151", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151", action = "action_EVENT_ANY_MONSTER_DIE_151" }
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
		monsters = { 48 },
		gadgets = { 50 },
		regions = { },
		triggers = { "MONSTER_BATTLE_8", "ANY_MONSTER_DIE_151" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_8(context, evt)
	if 48 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_8(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151(context, evt)
	-- 解锁目标50
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 50, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 411, monster_id = 21010201, pos = { x = 2313.6, y = 217.0, z = -1098.8 }, rot = { x = 0.0, y = 182.9, z = 0.0 }, level = 2, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 997, monster_id = 21010201, pos = { x = 2317.6, y = 217.3, z = -1099.1 }, rot = { x = 0.0, y = 183.9, z = 0.0 }, level = 2, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 229, gadget_id = 70211002, pos = { x = 2315.8, y = 216.9, z = -1096.5 }, rot = { x = 0.8, y = 186.5, z = 358.8 }, level = 2, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 2498, gadget_id = 70310001, pos = { x = 2313.4, y = 216.8, z = -1096.0 }, rot = { x = 0.0, y = 230.5, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 2499, gadget_id = 70310001, pos = { x = 2318.1, y = 216.9, z = -1096.4 }, rot = { x = 0.0, y = 146.2, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 3231, gadget_id = 70220013, pos = { x = 2311.5, y = 216.8, z = -1096.4 }, rot = { x = 0.0, y = 266.2, z = 0.0 }, level = 2 },
	{ config_id = 3232, gadget_id = 70220013, pos = { x = 2309.5, y = 216.6, z = -1096.0 }, rot = { x = 0.0, y = 227.3, z = 0.0 }, level = 2 },
	{ config_id = 3233, gadget_id = 70220014, pos = { x = 2309.0, y = 216.7, z = -1101.0 }, rot = { x = 0.0, y = 0.4, z = 0.0 }, level = 2 },
	{ config_id = 3234, gadget_id = 70220014, pos = { x = 2308.9, y = 216.7, z = -1102.0 }, rot = { x = 0.0, y = 0.4, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11", tlog_tag = "新手区_安柏入队右边高地营地_清剿完成" }
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
		-- description = suite_1,
		monsters = { 411, 997 },
		gadgets = { 229, 2498, 2499, 3231, 3232, 3233, 3234 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 解锁目标229
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 229, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

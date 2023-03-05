--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237, monster_id = 21020201, pos = { x = 2374.6, y = 282.1, z = -340.6 }, rot = { x = 0.0, y = 290.0, z = 0.0 }, level = 22, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 239, monster_id = 21010301, pos = { x = 2368.2, y = 281.8, z = -333.9 }, rot = { x = 0.0, y = 306.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 240, monster_id = 21010101, pos = { x = 2365.1, y = 281.1, z = -333.0 }, rot = { x = 0.0, y = 86.1, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 241, monster_id = 21010701, pos = { x = 2365.6, y = 280.2, z = -339.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 319, gadget_id = 70310006, pos = { x = 2367.1, y = 281.7, z = -332.4 }, rot = { x = 0.0, y = 163.7, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 322, gadget_id = 70220013, pos = { x = 2377.8, y = 282.9, z = -339.1 }, rot = { x = 342.4, y = 129.1, z = 352.0 }, level = 15 },
	{ config_id = 323, gadget_id = 70220014, pos = { x = 2377.6, y = 283.2, z = -343.2 }, rot = { x = 22.0, y = 312.3, z = 0.0 }, level = 15 },
	{ config_id = 324, gadget_id = 70220014, pos = { x = 2376.6, y = 282.7, z = -343.3 }, rot = { x = 13.3, y = 249.5, z = 0.0 }, level = 15 },
	{ config_id = 325, gadget_id = 70310004, pos = { x = 2366.8, y = 280.0, z = -341.6 }, rot = { x = 348.1, y = 53.1, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 326, gadget_id = 70211022, pos = { x = 2377.8, y = 283.1, z = -341.7 }, rot = { x = 20.4, y = 276.0, z = 354.4 }, level = 15, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_76", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76", action = "action_EVENT_ANY_MONSTER_DIE_76", tlog_tag = "奔狼岭_84_怪物营地_结算" }
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
		monsters = { 237, 239, 240, 241 },
		gadgets = { 319, 322, 323, 324, 325, 326 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 解锁目标326
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 326, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

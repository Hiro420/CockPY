--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1086, monster_id = 21010301, pos = { x = 2098.3, y = 213.1, z = -1308.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 1087, monster_id = 21010401, pos = { x = 2095.1, y = 213.2, z = -1314.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "远程丘丘人", pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3401, gadget_id = 70211002, pos = { x = 2097.8, y = 213.5, z = -1313.6 }, rot = { x = 5.4, y = 350.4, z = 6.4 }, level = 5, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3402, gadget_id = 70310001, pos = { x = 2099.9, y = 213.5, z = -1309.9 }, rot = { x = 0.0, y = 231.9, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 3403, gadget_id = 70220014, pos = { x = 2095.6, y = 213.5, z = -1316.1 }, rot = { x = 0.0, y = 299.8, z = 0.0 }, level = 5 },
	{ config_id = 3404, gadget_id = 70220014, pos = { x = 2094.6, y = 213.3, z = -1316.1 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_271", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_271", action = "action_EVENT_ANY_MONSTER_DIE_271" }
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
		monsters = { 1086, 1087 },
		gadgets = { 3401, 3402, 3403, 3404 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_271" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_271(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_271(context, evt)
	-- 解锁目标3401
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3401, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

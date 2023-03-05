--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105, monster_id = 21020201, pos = { x = 926.7, y = 245.9, z = -127.5 }, rot = { x = 0.0, y = 86.4, z = 0.0 }, level = 23, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1001 }, isElite = true },
	{ config_id = 106, monster_id = 21011001, pos = { x = 922.4, y = 245.8, z = -125.4 }, rot = { x = 0.0, y = 113.0, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 107, monster_id = 21010201, pos = { x = 915.9, y = 245.4, z = -131.5 }, rot = { x = 0.0, y = 212.1, z = 0.0 }, level = 23, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 108, monster_id = 21010201, pos = { x = 914.8, y = 245.3, z = -131.2 }, rot = { x = 0.0, y = 177.7, z = 0.0 }, level = 23, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269, gadget_id = 70211012, pos = { x = 919.3, y = 245.9, z = -132.3 }, rot = { x = 0.0, y = 0.0, z = 8.1 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 275, gadget_id = 70310001, pos = { x = 922.0, y = 245.8, z = -131.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart },
	{ config_id = 276, gadget_id = 70310001, pos = { x = 918.9, y = 245.6, z = -125.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_158", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158", action = "action_EVENT_ANY_MONSTER_DIE_158" }
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
		monsters = { 105, 106, 107, 108 },
		gadgets = { 269, 275, 276 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_158" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_158(context, evt)
	-- 将configid为 269 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

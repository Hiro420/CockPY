--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63, monster_id = 21010701, pos = { x = 691.9, y = 224.1, z = -222.3 }, rot = { x = 0.0, y = 261.7, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 64, monster_id = 21030201, pos = { x = 687.6, y = 224.4, z = -223.9 }, rot = { x = 0.0, y = 50.9, z = 0.0 }, level = 22, drop_tag = "丘丘萨满", affix = { 1001 }, isElite = true, pose_id = 9012 },
	{ config_id = 65, monster_id = 21010601, pos = { x = 690.4, y = 224.1, z = -220.0 }, rot = { x = 0.0, y = 230.6, z = 0.0 }, level = 22, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 66, monster_id = 21010601, pos = { x = 687.3, y = 224.3, z = -219.5 }, rot = { x = 0.0, y = 191.5, z = 0.0 }, level = 22, drop_tag = "丘丘人", pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268, gadget_id = 70211012, pos = { x = 687.3, y = 224.4, z = -226.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_157", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_157", action = "action_EVENT_ANY_MONSTER_DIE_157" }
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
		monsters = { 63, 64, 65, 66 },
		gadgets = { 268 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_157" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_157(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_157(context, evt)
	-- 将configid为 268 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

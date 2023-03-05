--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 21010201, pos = { x = -148.1, y = 200.7, z = -930.5 }, rot = { x = 0.0, y = 44.3, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 42004, monster_id = 21030301, pos = { x = -159.1, y = 200.4, z = -924.5 }, rot = { x = 353.8, y = 138.8, z = 4.9 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 42005, monster_id = 21030201, pos = { x = -156.6, y = 200.6, z = -924.7 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 42006, monster_id = 21010701, pos = { x = -146.7, y = 200.6, z = -929.2 }, rot = { x = 359.3, y = 228.8, z = 0.6 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211012, pos = { x = -157.9, y = 200.3, z = -921.8 }, rot = { x = 357.0, y = 186.8, z = 355.1 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
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
		monsters = { 42001, 42004, 42005, 42006 },
		gadgets = { 42002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

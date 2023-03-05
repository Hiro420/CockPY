--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 21030301, pos = { x = 1589.3, y = 249.6, z = 13.8 }, rot = { x = 4.2, y = 17.7, z = 355.7 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 529004, monster_id = 21030201, pos = { x = 1599.1, y = 248.6, z = 13.7 }, rot = { x = 5.0, y = 1.1, z = 354.2 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 529005, monster_id = 21010501, pos = { x = 1581.8, y = 249.6, z = 22.6 }, rot = { x = 353.2, y = 203.1, z = 2.3 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 529006, monster_id = 21010501, pos = { x = 1594.5, y = 249.2, z = 11.6 }, rot = { x = 2.8, y = 0.7, z = 354.8 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 529007, monster_id = 21010301, pos = { x = 1583.3, y = 249.6, z = 21.3 }, rot = { x = 353.1, y = 235.9, z = 358.2 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 529002, gadget_id = 70211022, pos = { x = 1595.9, y = 248.9, z = 14.6 }, rot = { x = 357.9, y = 160.1, z = 6.0 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 529008, gadget_id = 70310006, pos = { x = 1582.2, y = 249.7, z = 20.7 }, rot = { x = 7.1, y = 44.7, z = 0.4 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_529003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_529003", action = "action_EVENT_ANY_MONSTER_DIE_529003" }
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
		monsters = { 529001, 529004, 529005, 529006, 529007 },
		gadgets = { 529002, 529008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_529003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_529003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_529003(context, evt)
	-- 将configid为 529002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

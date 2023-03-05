--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23, monster_id = 21010201, pos = { x = 577.6, y = 264.9, z = 1053.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 24, monster_id = 21030301, pos = { x = 575.3, y = 264.7, z = 1054.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 22003, monster_id = 21010201, pos = { x = 578.9, y = 265.6, z = 1055.7 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131, gadget_id = 70211012, pos = { x = 577.5, y = 265.9, z = 1057.3 }, rot = { x = 15.4, y = 219.8, z = 2.2 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 22001, gadget_id = 70220013, pos = { x = 575.1, y = 265.6, z = 1059.2 }, rot = { x = 356.8, y = 359.5, z = 18.4 }, level = 24 },
	{ config_id = 22002, gadget_id = 70310001, pos = { x = 575.1, y = 265.3, z = 1057.0 }, rot = { x = 0.0, y = 42.2, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" }
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
		monsters = { 23, 24, 22003 },
		gadgets = { 131, 22001, 22002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 将configid为 131 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 522001, monster_id = 21030201, pos = { x = 1598.7, y = 291.1, z = 564.0 }, rot = { x = 0.0, y = 90.7, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 522004, monster_id = 21010501, pos = { x = 1600.7, y = 290.0, z = 561.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 522005, monster_id = 21010501, pos = { x = 1602.4, y = 291.4, z = 565.2 }, rot = { x = 0.0, y = 215.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 522006, monster_id = 21010501, pos = { x = 1595.6, y = 291.3, z = 566.9 }, rot = { x = 0.0, y = 142.2, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 522002, gadget_id = 70211012, pos = { x = 1600.6, y = 292.0, z = 567.7 }, rot = { x = 16.7, y = 177.7, z = 359.0 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 522007, gadget_id = 70310006, pos = { x = 1601.0, y = 290.5, z = 563.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 522008, gadget_id = 70310001, pos = { x = 1598.6, y = 289.3, z = 561.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 522009, gadget_id = 70310001, pos = { x = 1604.5, y = 290.8, z = 564.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_522003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_522003", action = "action_EVENT_ANY_MONSTER_DIE_522003" }
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
		monsters = { 522001, 522004, 522005, 522006 },
		gadgets = { 522002, 522007, 522008, 522009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_522003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_522003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_522003(context, evt)
	-- 将configid为 522002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 522002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

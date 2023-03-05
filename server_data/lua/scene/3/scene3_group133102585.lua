--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 585001, monster_id = 21030201, pos = { x = 1534.0, y = 261.7, z = -46.7 }, rot = { x = 0.0, y = 59.5, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 585004, monster_id = 21010201, pos = { x = 1545.6, y = 261.9, z = -45.4 }, rot = { x = 0.0, y = 28.8, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 585005, monster_id = 21010201, pos = { x = 1538.5, y = 261.7, z = -43.1 }, rot = { x = 0.0, y = 61.9, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 585006, monster_id = 21010501, pos = { x = 1541.7, y = 267.8, z = -52.4 }, rot = { x = 0.0, y = 7.4, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 585002, gadget_id = 70211012, pos = { x = 1541.8, y = 262.1, z = -47.3 }, rot = { x = 3.5, y = 0.1, z = 2.8 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 585007, gadget_id = 70220013, pos = { x = 1542.4, y = 262.4, z = -51.2 }, rot = { x = 2.6, y = 0.0, z = 1.4 }, level = 16 },
	{ config_id = 585008, gadget_id = 70220013, pos = { x = 1544.9, y = 262.6, z = -51.9 }, rot = { x = 1.6, y = 0.1, z = 5.5 }, level = 16 },
	{ config_id = 585009, gadget_id = 70220005, pos = { x = 1542.9, y = 267.8, z = -52.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 585010, gadget_id = 70220014, pos = { x = 1534.7, y = 261.8, z = -48.3 }, rot = { x = 3.2, y = 0.1, z = 4.2 }, level = 16 },
	{ config_id = 585011, gadget_id = 70220014, pos = { x = 1530.8, y = 261.4, z = -47.1 }, rot = { x = 2.8, y = 0.1, z = 4.6 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_585003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_585003", action = "action_EVENT_ANY_MONSTER_DIE_585003" }
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
		monsters = { 585001, 585004, 585005, 585006 },
		gadgets = { 585002, 585007, 585008, 585009, 585010, 585011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_585003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_585003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_585003(context, evt)
	-- 将configid为 585002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 587001, monster_id = 21030201, pos = { x = 1499.3, y = 247.5, z = -250.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 587004, monster_id = 21010201, pos = { x = 1502.6, y = 247.2, z = -245.7 }, rot = { x = 0.0, y = 39.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 587005, monster_id = 21010201, pos = { x = 1496.9, y = 247.6, z = -244.9 }, rot = { x = 353.8, y = 331.5, z = 357.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 587006, monster_id = 21010501, pos = { x = 1499.1, y = 252.6, z = -248.5 }, rot = { x = 0.0, y = 331.4, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 587002, gadget_id = 70211012, pos = { x = 1499.1, y = 247.5, z = -247.4 }, rot = { x = 1.3, y = 360.0, z = 355.8 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 587007, gadget_id = 70220013, pos = { x = 1494.1, y = 247.8, z = -245.9 }, rot = { x = 357.0, y = 0.2, z = 351.7 }, level = 16 },
	{ config_id = 587008, gadget_id = 70220013, pos = { x = 1504.9, y = 247.0, z = -243.5 }, rot = { x = 359.7, y = 0.0, z = 355.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_587003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_587003", action = "action_EVENT_ANY_MONSTER_DIE_587003" }
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
		monsters = { 587001 },
		gadgets = { 587002, 587007, 587008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_587003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_587003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_587003(context, evt)
	-- 将configid为 587002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 587002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

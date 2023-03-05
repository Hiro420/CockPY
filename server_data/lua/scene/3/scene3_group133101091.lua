--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 21030401, pos = { x = 1589.4, y = 201.7, z = 1142.0 }, rot = { x = 9.8, y = 199.5, z = 358.8 }, level = 23, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 91004, monster_id = 21010501, pos = { x = 1592.3, y = 201.6, z = 1138.5 }, rot = { x = 347.4, y = 311.6, z = 358.3 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 91005, monster_id = 21010901, pos = { x = 1590.8, y = 202.3, z = 1144.5 }, rot = { x = 11.2, y = 209.7, z = 358.2 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 91006, monster_id = 21011001, pos = { x = 1584.6, y = 201.7, z = 1141.8 }, rot = { x = 1.6, y = 94.8, z = 351.2 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91002, gadget_id = 70211012, pos = { x = 1588.3, y = 201.5, z = 1139.5 }, rot = { x = 359.1, y = 359.9, z = 11.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 91007, gadget_id = 70220013, pos = { x = 1589.5, y = 201.5, z = 1134.2 }, rot = { x = 353.8, y = 359.9, z = 1.8 }, level = 19 },
	{ config_id = 91008, gadget_id = 70220013, pos = { x = 1587.1, y = 201.4, z = 1135.0 }, rot = { x = 357.6, y = 42.1, z = 2.7 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_91003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91003", action = "action_EVENT_ANY_MONSTER_DIE_91003" }
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
		monsters = { 91001, 91004, 91005, 91006 },
		gadgets = { 91002, 91007, 91008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

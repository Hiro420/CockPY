--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6004, monster_id = 21011001, pos = { x = 45.7, y = 263.5, z = 176.6 }, rot = { x = 0.0, y = 158.8, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 6005, monster_id = 21011001, pos = { x = 51.1, y = 263.2, z = 175.5 }, rot = { x = 0.0, y = 178.7, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 6006, monster_id = 21010901, pos = { x = 46.8, y = 263.6, z = 165.6 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70220005, pos = { x = 47.0, y = 263.4, z = 175.8 }, rot = { x = 356.4, y = 360.0, z = 1.8 }, level = 20 },
	{ config_id = 6007, gadget_id = 70211012, pos = { x = 48.8, y = 263.4, z = 176.3 }, rot = { x = 8.9, y = 167.1, z = 358.9 }, level = 20, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 6008, gadget_id = 70220005, pos = { x = 47.9, y = 263.9, z = 163.8 }, rot = { x = 13.0, y = 356.5, z = 342.3 }, level = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_2", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2", action = "action_EVENT_ANY_MONSTER_DIE_2" }
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
		monsters = { 6004, 6005, 6006 },
		gadgets = { 6001, 6007, 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2(context, evt)
	-- 将configid为 6007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6007, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

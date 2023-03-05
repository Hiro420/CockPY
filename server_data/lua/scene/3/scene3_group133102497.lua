--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 497001, monster_id = 21010201, pos = { x = 1359.6, y = 200.0, z = 715.4 }, rot = { x = 0.0, y = 49.2, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 497004, monster_id = 21010901, pos = { x = 1362.5, y = 200.8, z = 725.1 }, rot = { x = 0.0, y = 188.2, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 497005, monster_id = 21010901, pos = { x = 1373.0, y = 200.8, z = 705.8 }, rot = { x = 0.0, y = 262.6, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 497006, monster_id = 21010301, pos = { x = 1363.7, y = 200.0, z = 715.2 }, rot = { x = 0.0, y = 288.4, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 497002, gadget_id = 70211012, pos = { x = 1364.6, y = 200.0, z = 718.7 }, rot = { x = 0.0, y = 221.1, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 497007, gadget_id = 70220013, pos = { x = 1357.3, y = 200.0, z = 719.8 }, rot = { x = 358.3, y = 19.6, z = 359.4 }, level = 19 },
	{ config_id = 497008, gadget_id = 70220013, pos = { x = 1357.2, y = 200.0, z = 716.9 }, rot = { x = 0.0, y = 338.8, z = 0.0 }, level = 19 },
	{ config_id = 497009, gadget_id = 70310001, pos = { x = 1365.8, y = 200.0, z = 716.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 497010, gadget_id = 70310006, pos = { x = 1361.7, y = 200.0, z = 716.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 497011, gadget_id = 70310001, pos = { x = 1360.6, y = 200.0, z = 712.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_497003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_497003", action = "action_EVENT_ANY_MONSTER_DIE_497003" }
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
		monsters = { 497001, 497004, 497005, 497006 },
		gadgets = { 497002, 497007, 497008, 497009, 497010, 497011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_497003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_497003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_497003(context, evt)
	-- 将configid为 497002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 497002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

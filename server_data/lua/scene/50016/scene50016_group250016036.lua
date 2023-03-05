--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36005, monster_id = 20010801, pos = { x = -380.7, y = 16.0, z = 735.3 }, rot = { x = 0.0, y = 88.7, z = 0.0 }, level = 1 },
	{ config_id = 36006, monster_id = 20010801, pos = { x = -373.0, y = 16.0, z = 723.9 }, rot = { x = 0.0, y = 16.5, z = 0.0 }, level = 1 },
	{ config_id = 36007, monster_id = 20010801, pos = { x = -370.5, y = 16.0, z = 744.5 }, rot = { x = 0.0, y = 151.5, z = 0.0 }, level = 1 },
	{ config_id = 36008, monster_id = 20010801, pos = { x = -364.0, y = 16.0, z = 724.3 }, rot = { x = 0.0, y = 336.7, z = 0.0 }, level = 1 },
	{ config_id = 36009, monster_id = 20010801, pos = { x = -364.8, y = 16.0, z = 754.8 }, rot = { x = 0.0, y = 336.7, z = 0.0 }, level = 1 },
	{ config_id = 36010, monster_id = 20010801, pos = { x = -363.3, y = 16.0, z = 740.4 }, rot = { x = 0.0, y = 336.7, z = 0.0 }, level = 1 },
	{ config_id = 36011, monster_id = 20010801, pos = { x = -376.1, y = 16.0, z = 752.8 }, rot = { x = 0.0, y = 336.7, z = 0.0 }, level = 1 },
	{ config_id = 36012, monster_id = 20010801, pos = { x = -380.3, y = 16.0, z = 722.7 }, rot = { x = 0.0, y = 336.7, z = 0.0 }, level = 1 },
	{ config_id = 36013, monster_id = 20010801, pos = { x = -368.5, y = 16.0, z = 712.7 }, rot = { x = 0.0, y = 336.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36001, gadget_id = 70350004, pos = { x = -393.0, y = 16.0, z = 727.7 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 36002, gadget_id = 70350004, pos = { x = -392.8, y = 16.0, z = 733.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 36003, gadget_id = 70350004, pos = { x = -392.5, y = 16.0, z = 739.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 36004, gadget_id = 70350004, pos = { x = -392.3, y = 16.0, z = 745.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_36014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36014", action = "action_EVENT_ANY_MONSTER_DIE_36014" }
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
	rand_suite = false,
	npcs = { }
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
		monsters = { 36005, 36006, 36007, 36008, 36009, 36010, 36011, 36012, 36013 },
		gadgets = { 36001, 36002, 36003, 36004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36014(context, evt)
	-- 将configid为 36001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 36002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 36003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36003, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 36004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

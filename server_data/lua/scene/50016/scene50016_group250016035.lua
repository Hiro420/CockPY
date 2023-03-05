--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 20010801, pos = { x = 100.5, y = 16.0, z = 635.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35002, monster_id = 20010801, pos = { x = 108.6, y = 16.0, z = 624.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35003, monster_id = 20010801, pos = { x = 97.0, y = 16.0, z = 624.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35004, monster_id = 20010801, pos = { x = 83.1, y = 16.0, z = 629.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35005, monster_id = 20010801, pos = { x = 94.9, y = 16.0, z = 640.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35006, monster_id = 20010801, pos = { x = 106.7, y = 16.0, z = 633.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35007, monster_id = 20010801, pos = { x = 87.5, y = 16.0, z = 631.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35008, gadget_id = 70350004, pos = { x = 87.5, y = 16.0, z = 678.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35009, gadget_id = 70350004, pos = { x = 93.5, y = 16.0, z = 678.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35010, gadget_id = 70350004, pos = { x = 99.6, y = 16.0, z = 678.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 35011, gadget_id = 70350004, pos = { x = 105.6, y = 16.0, z = 677.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_35012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35012", action = "action_EVENT_ANY_MONSTER_DIE_35012" }
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
		monsters = { 35001, 35002, 35003, 35004, 35005, 35006, 35007 },
		gadgets = { 35008, 35009, 35010, 35011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35012(context, evt)
	-- 将configid为 35008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35008, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 35009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35009, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 35010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35010, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 35011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35011, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

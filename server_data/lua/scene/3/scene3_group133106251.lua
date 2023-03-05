--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251007, monster_id = 20011001, pos = { x = -174.7, y = 170.4, z = 1010.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 251008, monster_id = 20011001, pos = { x = -173.9, y = 170.4, z = 1008.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 251009, monster_id = 20011001, pos = { x = -170.3, y = 170.4, z = 1012.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 251010, monster_id = 20011001, pos = { x = -168.9, y = 170.4, z = 1007.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 251001, gadget_id = 70350004, pos = { x = -168.8, y = 168.8, z = 1003.6 }, rot = { x = 0.0, y = 359.3, z = 180.5 }, level = 32, persistent = true },
	{ config_id = 251002, gadget_id = 70350004, pos = { x = -174.4, y = 168.8, z = 1003.8 }, rot = { x = 360.0, y = 1.2, z = 180.5 }, level = 32, persistent = true },
	{ config_id = 251003, gadget_id = 70350004, pos = { x = -171.7, y = 170.2, z = 1007.7 }, rot = { x = 270.6, y = 180.0, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 251005, gadget_id = 70211001, pos = { x = -158.9, y = 171.8, z = 888.7 }, rot = { x = 360.0, y = 310.8, z = 11.2 }, level = 32, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 251006, gadget_id = 70211001, pos = { x = -188.6, y = 164.3, z = 981.2 }, rot = { x = 355.3, y = 151.9, z = 355.3 }, level = 32, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 251011, gadget_id = 70310001, pos = { x = -170.0, y = 170.4, z = 1014.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 251012, gadget_id = 70310001, pos = { x = -173.3, y = 170.4, z = 1014.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_251004", event = EventType.EVENT_VARIABLE_CHANGE, source = "finish", condition = "condition_EVENT_VARIABLE_CHANGE_251004", action = "action_EVENT_VARIABLE_CHANGE_251004" }
}

-- 变量
variables = {
	{ name = "finish", value = 0, no_refresh = true }
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
		monsters = { 251007, 251008, 251009, 251010 },
		gadgets = { 251001, 251002, 251003, 251005, 251006, 251011, 251012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_251004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_251004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_251004(context, evt)
	-- 将configid为 251001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 251002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 251003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251003, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 440001, gadget_id = 70211123, pos = { x = 848.4, y = 253.3, z = 939.7 }, rot = { x = 0.0, y = 89.7, z = 0.0 }, level = 29, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 440002, gadget_id = 70211123, pos = { x = 848.7, y = 253.3, z = 943.0 }, rot = { x = 0.0, y = 93.4, z = 0.0 }, level = 29, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 440003, gadget_id = 70211123, pos = { x = 848.5, y = 253.3, z = 941.3 }, rot = { x = 0.0, y = 91.4, z = 0.0 }, level = 34, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 440004, gadget_id = 70900051, pos = { x = 856.9, y = 253.0, z = 941.2 }, rot = { x = 2.3, y = 357.5, z = 1.4 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 440005, gadget_id = 70900051, pos = { x = 858.6, y = 253.1, z = 945.6 }, rot = { x = 356.5, y = 3.5, z = 359.8 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 440006, gadget_id = 70900051, pos = { x = 858.6, y = 253.2, z = 937.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 440008, gadget_id = 70350037, pos = { x = 853.3, y = 259.1, z = 941.4 }, rot = { x = 0.0, y = 92.1, z = 180.0 }, level = 24, persistent = true },
	{ config_id = 440009, gadget_id = 70310001, pos = { x = 871.1, y = 246.7, z = 943.3 }, rot = { x = 0.0, y = 358.3, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 440010, gadget_id = 70310001, pos = { x = 870.7, y = 246.5, z = 936.6 }, rot = { x = 0.0, y = 358.3, z = 0.0 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_440007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_440007", action = "action_EVENT_GADGET_STATE_CHANGE_440007" }
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
		monsters = { },
		gadgets = { 440001, 440002, 440003, 440004, 440005, 440006, 440008, 440009, 440010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_440007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_440007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133104440, 440004) ~= GadgetState.GearStart or 
	ScriptLib.GetGadgetStateByConfigId(context, 133104440, 440005) ~= GadgetState.GearStart or 
	ScriptLib.GetGadgetStateByConfigId(context, 133104440, 440006) ~= GadgetState.GearStart  then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_440007(context, evt)
	-- 将configid为 440001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440001, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 440002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440002, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 440003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440003, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 440008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440008, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

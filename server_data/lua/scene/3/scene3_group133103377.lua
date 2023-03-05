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
	{ config_id = 377001, gadget_id = 70900051, pos = { x = 310.3, y = 188.3, z = 1457.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 377002, gadget_id = 70350004, pos = { x = 307.4, y = 193.8, z = 1458.5 }, rot = { x = 0.0, y = 109.0, z = 180.0 }, level = 24, persistent = true },
	{ config_id = 377003, gadget_id = 70211122, pos = { x = 308.8, y = 188.2, z = 1453.8 }, rot = { x = 0.0, y = 111.4, z = 0.0 }, level = 28, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 377004, gadget_id = 70211101, pos = { x = 314.3, y = 188.0, z = 1468.1 }, rot = { x = 0.0, y = 23.6, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 377005, gadget_id = 70350004, pos = { x = 313.6, y = 193.6, z = 1465.1 }, rot = { x = 357.7, y = 21.6, z = 179.7 }, level = 24, persistent = true },
	{ config_id = 377006, gadget_id = 70220021, pos = { x = 315.1, y = 189.1, z = 1455.0 }, rot = { x = 332.8, y = 73.1, z = 7.2 }, level = 24, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_377007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377007", action = "action_EVENT_GADGET_STATE_CHANGE_377007" }
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
		gadgets = { 377001, 377002, 377003, 377004, 377005, 377006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_377007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377007(context, evt)
	if 377001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377007(context, evt)
	-- 将configid为 377002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 377005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377005, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 377003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377003, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

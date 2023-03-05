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
	{ config_id = 15001, gadget_id = 70330003, pos = { x = 112.7, y = 9.1, z = -172.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15002, gadget_id = 70330001, pos = { x = 95.8, y = 23.2, z = -206.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15003, gadget_id = 70900314, pos = { x = 78.5, y = 20.5, z = -209.1 }, rot = { x = 0.0, y = 0.0, z = 90.0 }, level = 1 },
	{ config_id = 15004, gadget_id = 70900314, pos = { x = 34.3, y = 26.2, z = -210.5 }, rot = { x = 0.0, y = 0.0, z = 268.5 }, level = 1 },
	{ config_id = 15006, gadget_id = 70211131, pos = { x = 19.6, y = 36.4, z = -215.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 15007, gadget_id = 40000001, pos = { x = 112.7, y = 8.6, z = -164.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15008, gadget_id = 70330001, pos = { x = 112.5, y = 8.9, z = -164.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15009, gadget_id = 70900314, pos = { x = 105.1, y = 10.1, z = -173.4 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_15005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15005", action = "action_EVENT_GADGET_STATE_CHANGE_15005" },
	{ name = "GADGET_STATE_CHANGE_15010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15010", action = "action_EVENT_GADGET_STATE_CHANGE_15010" }
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
		gadgets = { 15001, 15002, 15003, 15004, 15006, 15007, 15008, 15009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_15005", "GADGET_STATE_CHANGE_15010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	if 15002 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	-- 将configid为 15003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15003, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	if 15008 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	-- 将configid为 15009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15009, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

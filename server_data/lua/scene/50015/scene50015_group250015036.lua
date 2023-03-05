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
	{ config_id = 36001, gadget_id = 70350007, pos = { x = 1573.0, y = 204.8, z = 932.0 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1 },
	{ config_id = 36002, gadget_id = 70220006, pos = { x = 1573.2, y = 201.7, z = 945.9 }, rot = { x = 311.0, y = 0.6, z = 359.2 }, level = 1 },
	{ config_id = 36003, gadget_id = 70220006, pos = { x = 1573.2, y = 201.7, z = 932.9 }, rot = { x = 43.7, y = 358.1, z = 357.3 }, level = 1 },
	{ config_id = 36004, gadget_id = 70300101, pos = { x = 1573.1, y = 201.7, z = 939.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 36005, gadget_id = 70350007, pos = { x = 1573.0, y = 204.6, z = 947.3 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1 },
	{ config_id = 36007, gadget_id = 70350007, pos = { x = 1679.8, y = 202.8, z = 926.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 36008, gadget_id = 70350007, pos = { x = 1679.8, y = 203.1, z = 943.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 36009, gadget_id = 70220006, pos = { x = 1679.5, y = 202.7, z = 934.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_36006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36006", action = "action_EVENT_ANY_GADGET_DIE_36006" },
	{ name = "ANY_GADGET_DIE_36010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36010", action = "action_EVENT_ANY_GADGET_DIE_36010" }
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
		gadgets = { 36001, 36002, 36003, 36004, 36005, 36007, 36008, 36009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_36006", "ANY_GADGET_DIE_36010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36006(context, evt)
	if 36004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 36002 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 36003 }) then
		    return -1
		end
		
	
	-- 将configid为 36001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 36005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36005, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36010(context, evt)
	if 36009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36010(context, evt)
	-- 将configid为 36007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36007, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 36008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36008, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

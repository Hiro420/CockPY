-- Trigger变量
local defs = {
	gadget_id_1 = 384,
	gadget_id_2 = 0,
	gadget_id_3 = 0
}


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
	{ config_id = 384, gadget_id = 70900244, pos = { x = -241.3, y = -10.9, z = -608.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 385, gadget_id = 70900246, pos = { x = -241.3, y = -11.0, z = -598.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 572, gadget_id = 70360002, pos = { x = -241.2, y = -11.0, z = -598.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_74", event = EventType.EVENT_CLIENT_EXECUTE, source = "Badminton_Rule", condition = "", action = "action_EVENT_CLIENT_EXECUTE_74", trigger_count = 0 },
	{ name = "GADGET_CREATE_99", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99", action = "action_EVENT_GADGET_CREATE_99", trigger_count = 0 },
	{ name = "SELECT_OPTION_100", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_100", action = "action_EVENT_SELECT_OPTION_100", trigger_count = 0, forbid_guest = false }
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
	rand_suite = true,
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
		monsters = { },
		gadgets = { 384, 385, 572 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_74", "GADGET_CREATE_99", "SELECT_OPTION_100" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_74(context, evt)
	--羽球落地或出界后把羽毛球发射器设为Default
	if evt.param1 == defs.gadget_id_3 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.Default) then
	  return -1
	 end 
	
	
	end
	
	
	--Create Operator
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572 }) then
	  return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99(context, evt)
	if 572 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250004043, 572, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_100(context, evt)
	if 572 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_100(context, evt)
	-- 将configid为 572 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 572, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 384 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 572 }) then
		    return -1
		end
		
	
	return 0
end

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
	{ config_id = 106, gadget_id = 70350004, pos = { x = 228.4, y = 4.0, z = -151.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 107, gadget_id = 70350004, pos = { x = 228.4, y = 4.0, z = -156.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 108, gadget_id = 70211031, pos = { x = 231.5, y = 4.0, z = -154.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 115, gadget_id = 70220032, pos = { x = 224.8, y = 4.0, z = -154.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_51", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51", action = "action_EVENT_GADGET_STATE_CHANGE_51", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_52", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52", action = "action_EVENT_GADGET_STATE_CHANGE_52", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 106, 107, 108, 115 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_51", "GADGET_STATE_CHANGE_52" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51(context, evt)
	if 115 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51(context, evt)
	-- 将configid为 106 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 107 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52(context, evt)
	if 115 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52(context, evt)
	-- 将configid为 106 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 107 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

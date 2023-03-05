-- Trigger变量
local defs = {
	gadget_id_1 = 22,
	gadget_id_2 = 23,
	gadget_id_3 = 24,
	gadget_id_4 = 25,
	gadget_id_5 = 26
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
	{ config_id = 22, gadget_id = 70310001, pos = { x = 1999.9, y = 221.9, z = -1576.7 }, rot = { x = 0.0, y = 79.8, z = 0.0 }, level = 5 },
	{ config_id = 23, gadget_id = 70310001, pos = { x = 2018.2, y = 221.5, z = -1558.6 }, rot = { x = 0.0, y = 118.2, z = 0.0 }, level = 5 },
	{ config_id = 24, gadget_id = 70310001, pos = { x = 2002.5, y = 221.0, z = -1544.4 }, rot = { x = 0.0, y = 16.6, z = 0.0 }, level = 5 },
	{ config_id = 25, gadget_id = 70310001, pos = { x = 1970.8, y = 228.6, z = -1571.7 }, rot = { x = 0.0, y = 108.4, z = 0.0 }, level = 5 },
	{ config_id = 26, gadget_id = 70211112, pos = { x = 2000.8, y = 221.1, z = -1570.6 }, rot = { x = 2.5, y = 0.7, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_18", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18", action = "action_EVENT_GADGET_STATE_CHANGE_18", trigger_count = 0 }
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
		gadgets = { 22, 23, 24, 25, 26 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_18" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	if evt.param2 ~= defs.gadget_id_1 and evt.param2 ~= defs.gadget_id_2 and evt.param2 ~= defs.gadget_id_3 and evt.param2 ~= defs.gadget_id_4  then
		return false
	end
		
	if evt.param1 ~= GadgetState.GearStart then
		return false
	end
	
	local s_22 = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_id_1)
	local s_23 = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_id_2)
	local s_24 = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_id_3)
	local s_25 = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_id_4)
	
	
	if 201 ~= s_22 or 201 ~= s_23 or 201 ~= s_24 or 201 ~= s_25 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_5, GadgetState.Default) then
		return -1
	end
	return 0
end

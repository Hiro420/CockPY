-- Trigger变量
local defs = {
	gadget_id_1 = 31,
	gadget_id_2 = 32,
	gadget_id_3 = 33,
	gadget_id_4 = 34,
	gadget_id_5 = 35,
	gadget_id_6 = 36
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
	{ config_id = 31, gadget_id = 70680001, pos = { x = 2801.5, y = 210.3, z = -45.7 }, rot = { x = 0.0, y = 158.6, z = 0.0 }, level = 23, arguments = { 0, 10, 5 } },
	{ config_id = 32, gadget_id = 70690006, pos = { x = 2793.7, y = 222.0, z = -53.1 }, rot = { x = 0.0, y = 276.1, z = 0.0 }, level = 23 },
	{ config_id = 33, gadget_id = 70690006, pos = { x = 2809.0, y = 222.0, z = -35.9 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 23 },
	{ config_id = 34, gadget_id = 70680003, pos = { x = 2812.4, y = 236.0, z = -31.3 }, rot = { x = 0.0, y = 244.5, z = 0.0 }, level = 23 },
	{ config_id = 35, gadget_id = 70690006, pos = { x = 2809.9, y = 248.0, z = -26.6 }, rot = { x = 0.0, y = 131.9, z = 0.0 }, level = 23 },
	{ config_id = 36, gadget_id = 70680003, pos = { x = 2788.6, y = 236.0, z = -59.1 }, rot = { x = 0.0, y = 35.7, z = 0.0 }, level = 23 },
	{ config_id = 37, gadget_id = 70690006, pos = { x = 2784.1, y = 248.0, z = -62.0 }, rot = { x = 0.0, y = 246.2, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_27", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_27", action = "action_EVENT_GADGET_CREATE_27" }
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
	rand_suite = true
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
		gadgets = { 31, 32, 33, 34, 36 },
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
function condition_EVENT_GADGET_CREATE_27(context, evt)
	if evt.param1 ~= defs.gadget_id_1 then
			return false
		else 
			return true
		end
end

-- 触发操作
function action_EVENT_GADGET_CREATE_27(context, evt)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_1, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_2, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_3, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_4, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_5, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_6, GadgetState.Default)
		return 0
end

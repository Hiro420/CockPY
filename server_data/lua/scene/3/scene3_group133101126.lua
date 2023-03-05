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
	{ config_id = 126001, gadget_id = 70220008, pos = { x = 1208.4, y = 270.9, z = 1415.2 }, rot = { x = 14.9, y = 90.5, z = 356.7 }, level = 24, isOneoff = true, persistent = true },
	{ config_id = 126002, gadget_id = 70220008, pos = { x = 1205.6, y = 272.2, z = 1420.9 }, rot = { x = 7.0, y = 151.0, z = 356.1 }, level = 24, isOneoff = true, persistent = true },
	{ config_id = 126003, gadget_id = 70220008, pos = { x = 1203.2, y = 275.1, z = 1424.1 }, rot = { x = 354.7, y = 202.1, z = 353.8 }, level = 24, isOneoff = true, persistent = true },
	{ config_id = 126004, gadget_id = 70211102, pos = { x = 1207.4, y = 271.0, z = 1413.0 }, rot = { x = 8.1, y = 137.5, z = 2.2 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_126005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126005", action = "action_EVENT_ANY_GADGET_DIE_126005", trigger_count = 3 },
	{ name = "VARIABLE_CHANGE_126006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_126006", action = "action_EVENT_VARIABLE_CHANGE_126006" }
}

-- 变量
variables = {
	{ name = "flag", value = 0, no_refresh = true }
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
		gadgets = { 126001, 126002, 126003, 126004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_126005", "VARIABLE_CHANGE_126006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126005(context, evt)
	if 126001 ~= evt.param1 and 126002 ~= evt.param1 and 126003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126005(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126006(context, evt)
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126006(context, evt)
	-- 将configid为 126004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

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
	{ config_id = 414, gadget_id = 70220001, pos = { x = 18.6, y = 272.0, z = 178.1 }, rot = { x = 354.6, y = 0.5, z = 350.1 }, level = 19, isOneoff = true },
	{ config_id = 415, gadget_id = 70220001, pos = { x = 18.6, y = 271.9, z = 183.6 }, rot = { x = 2.2, y = 359.9, z = 355.9 }, level = 19, isOneoff = true },
	{ config_id = 416, gadget_id = 70220001, pos = { x = 23.7, y = 271.5, z = 178.6 }, rot = { x = 359.6, y = 0.0, z = 354.1 }, level = 19, isOneoff = true },
	{ config_id = 417, gadget_id = 70220001, pos = { x = 23.3, y = 271.5, z = 179.5 }, rot = { x = 359.6, y = 0.0, z = 354.1 }, level = 19, isOneoff = true },
	{ config_id = 418, gadget_id = 70220001, pos = { x = 23.5, y = 271.5, z = 184.0 }, rot = { x = 356.5, y = 0.1, z = 356.4 }, level = 19, isOneoff = true },
	{ config_id = 419, gadget_id = 70220001, pos = { x = 20.9, y = 271.8, z = 182.3 }, rot = { x = 0.5, y = 360.0, z = 354.5 }, level = 19, isOneoff = true },
	{ config_id = 420, gadget_id = 70220001, pos = { x = 20.7, y = 271.7, z = 186.0 }, rot = { x = 359.7, y = 0.0, z = 358.9 }, level = 19, isOneoff = true },
	{ config_id = 421, gadget_id = 70220001, pos = { x = 18.7, y = 271.9, z = 184.5 }, rot = { x = 2.2, y = 359.9, z = 355.9 }, level = 19, isOneoff = true },
	{ config_id = 422, gadget_id = 70220001, pos = { x = 20.1, y = 271.9, z = 179.5 }, rot = { x = 0.8, y = 360.0, z = 354.5 }, level = 19, isOneoff = true },
	{ config_id = 423, gadget_id = 70211111, pos = { x = 21.4, y = 271.6, z = 184.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_219", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_219", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_353", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_353", action = "action_EVENT_VARIABLE_CHANGE_353" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
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
		gadgets = { 414, 415, 416, 417, 418, 419, 420, 421, 422 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_219", "VARIABLE_CHANGE_353" },
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
function action_EVENT_ANY_GADGET_DIE_219(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_353(context, evt)
	-- 判断变量"count"为9
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_353(context, evt)
	-- 创建id为423的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 423 }) then
	  return -1
	end
	
	return 0
end

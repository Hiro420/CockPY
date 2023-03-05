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
	{ config_id = 358001, gadget_id = 70211132, pos = { x = 593.3, y = 293.3, z = 1726.2 }, rot = { x = 4.3, y = 61.0, z = 357.6 }, level = 24, chest_drop_id = 2000700, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_358002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_358002", action = "action_EVENT_VARIABLE_CHANGE_358002" }
}

-- 变量
variables = {
	{ name = "var", value = 0, no_refresh = true }
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
		gadgets = { 358001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_358002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_358002(context, evt)
	-- 判断变量"var"为2
	if ScriptLib.GetGroupVariableValue(context, "var") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_358002(context, evt)
	-- 将configid为 358001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

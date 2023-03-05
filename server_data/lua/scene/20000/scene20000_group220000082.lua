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
	{ config_id = 596, gadget_id = 70900302, pos = { x = 126.7, y = -12.0, z = 594.3 }, rot = { x = 0.0, y = 91.1, z = 0.0 }, level = 1 },
	{ config_id = 597, gadget_id = 70310001, pos = { x = 118.8, y = -12.0, z = 604.9 }, rot = { x = 0.0, y = 54.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_161", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161", action = "action_EVENT_GADGET_STATE_CHANGE_161" }
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
		gadgets = { 596, 597 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_161" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161(context, evt)
	if 596 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161(context, evt)
	-- 将configid为 597 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

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
	{ config_id = 102001, gadget_id = 70211101, pos = { x = -335.0, y = 204.9, z = -738.1 }, rot = { x = 14.4, y = 37.0, z = 5.3 }, level = 32, chest_drop_id = 1000600, drop_count = 1, state = GadgetState.ChestLocked, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 102002, gadget_id = 70220021, pos = { x = -336.0, y = 203.8, z = -738.3 }, rot = { x = 26.3, y = 168.6, z = 348.6 }, level = 32, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_102003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_102003", action = "action_EVENT_ANY_GADGET_DIE_102003", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_102004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102004", action = "action_EVENT_GADGET_STATE_CHANGE_102004", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "Dug", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 102001, 102002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_102003", "GADGET_STATE_CHANGE_102004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_102003(context, evt)
	if 102002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_102003(context, evt)
	-- 将configid为 102001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102004(context, evt)
	if 102001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102004(context, evt)
	-- 将本组内变量名为 "Dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dug", 1) then
	  return -1
	end
	
	-- 将本组内变量名为 "133108102" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "133108102", 1, 133108099) then
	  return -1
	end
	
	return 0
end

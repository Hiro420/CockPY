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
	{ config_id = 446001, gadget_id = 70211101, pos = { x = 124.4, y = 210.0, z = 785.5 }, rot = { x = 1.6, y = 205.0, z = 4.4 }, level = 19, chest_drop_id = 1000600, drop_count = 1, state = GadgetState.ChestLocked, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 446002, gadget_id = 70220021, pos = { x = 123.0, y = 209.2, z = 786.2 }, rot = { x = 21.5, y = 8.3, z = 0.4 }, level = 19, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_446003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_446003", action = "action_EVENT_ANY_GADGET_DIE_446003", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_446004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_446004", action = "action_EVENT_GADGET_STATE_CHANGE_446004", trigger_count = 0 }
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
		gadgets = { 446001, 446002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_446003", "GADGET_STATE_CHANGE_446004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_446003(context, evt)
	if 446002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_446003(context, evt)
	-- 将configid为 446001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446001, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_446004(context, evt)
	if 446001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_446004(context, evt)
	-- 将本组内变量名为 "Dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dug", 1) then
	  return -1
	end
	
	-- 将本组内变量名为 "133104446" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "133104446", 1, 133104442) then
	  return -1
	end
	
	return 0
end

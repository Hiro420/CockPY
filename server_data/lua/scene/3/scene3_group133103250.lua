--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 250001, monster_id = 20020101, pos = { x = 988.2, y = 268.9, z = 1373.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_tag = "元素之核", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 250002, gadget_id = 70211122, pos = { x = 988.9, y = 268.9, z = 1371.9 }, rot = { x = 0.0, y = 44.2, z = 0.0 }, level = 24, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 250004, gadget_id = 70900051, pos = { x = 999.1, y = 269.1, z = 1380.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 250005, gadget_id = 70900051, pos = { x = 997.9, y = 269.5, z = 1385.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 250006, gadget_id = 70900051, pos = { x = 994.3, y = 268.9, z = 1381.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 250007, gadget_id = 70900051, pos = { x = 1053.2, y = 269.7, z = 1469.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 250008, gadget_id = 70900051, pos = { x = 1052.0, y = 269.9, z = 1473.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 250009, gadget_id = 70900051, pos = { x = 1048.4, y = 269.8, z = 1470.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_250003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_250003", action = "action_EVENT_ANY_MONSTER_DIE_250003" },
	{ name = "GADGET_STATE_CHANGE_250010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250010", action = "action_EVENT_GADGET_STATE_CHANGE_250010" },
	{ name = "GADGET_STATE_CHANGE_250011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250011", action = "action_EVENT_GADGET_STATE_CHANGE_250011" },
	{ name = "GADGET_STATE_CHANGE_250012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250012", action = "action_EVENT_GADGET_STATE_CHANGE_250012" },
	{ name = "GADGET_STATE_CHANGE_250013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250013", action = "action_EVENT_GADGET_STATE_CHANGE_250013" },
	{ name = "GADGET_STATE_CHANGE_250014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250014", action = "action_EVENT_GADGET_STATE_CHANGE_250014" },
	{ name = "GADGET_STATE_CHANGE_250015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250015", action = "action_EVENT_GADGET_STATE_CHANGE_250015" },
	{ name = "VARIABLE_CHANGE_250016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250016", action = "action_EVENT_VARIABLE_CHANGE_250016" },
	{ name = "VARIABLE_CHANGE_250017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250017", action = "action_EVENT_VARIABLE_CHANGE_250017" }
}

-- 变量
variables = {
	{ name = "lockedgears", value = 0, no_refresh = true },
	{ name = "opengears", value = 0, no_refresh = true }
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
		gadgets = { 250004, 250005, 250006, 250007, 250008, 250009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_250010", "GADGET_STATE_CHANGE_250011", "GADGET_STATE_CHANGE_250012", "GADGET_STATE_CHANGE_250013", "GADGET_STATE_CHANGE_250014", "GADGET_STATE_CHANGE_250015", "VARIABLE_CHANGE_250016", "VARIABLE_CHANGE_250017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 250001 },
		gadgets = { 250002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_250003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_250003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_250003(context, evt)
	-- 将configid为 250002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250010(context, evt)
	if 250007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250010(context, evt)
	-- 将configid为 250004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250004, GadgetState.Default) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "opengears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "opengears", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250011(context, evt)
	if 250008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250011(context, evt)
	-- 将configid为 250005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250005, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "opengears" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opengears", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250012(context, evt)
	if 250009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250012(context, evt)
	-- 将configid为 250006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250006, GadgetState.Default) then
			return -1
		end 
	
	-- 针对当前group内变量名为 "opengears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "opengears", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250013(context, evt)
	if 250004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250013(context, evt)
	-- 针对当前group内变量名为 "lockedgears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "lockedgears", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250014(context, evt)
	if 250005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250014(context, evt)
	-- 针对当前group内变量名为 "lockedgears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "lockedgears", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250015(context, evt)
	if 250006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250015(context, evt)
	-- 针对当前group内变量名为 "lockedgears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "lockedgears", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_250016(context, evt)
	-- 判断变量"lockedgears"为3
	if ScriptLib.GetGroupVariableValue(context, "lockedgears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250016(context, evt)
	-- 针对当前group内变量名为 "lockedgears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "lockedgears", 1) then
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103250, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_250017(context, evt)
	-- 判断变量"opengears"为3
	if ScriptLib.GetGroupVariableValue(context, "opengears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250017(context, evt)
	-- 针对当前group内变量名为 "opengears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "opengears", 1) then
	  return -1
	end
	
	-- 创建id为250002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250002 }) then
	  return -1
	end
	
	return 0
end

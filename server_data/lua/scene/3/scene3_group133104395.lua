-- Trigger变量
local defs = {
	gadget_Trigger1 = 395001,
	gadget_Trigger2 = 395002,
	gadget_Trigger3 = 395003,
	gadget_Trigger4 = 395004,
	gadget_Trigger5 = 395005,
	gadget_Trigger6 = 395006
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 395010, monster_id = 21020201, pos = { x = 307.0, y = 217.7, z = 147.9 }, rot = { x = 0.0, y = 266.5, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395011, monster_id = 20011401, pos = { x = 304.9, y = 217.7, z = 150.5 }, rot = { x = 0.0, y = 181.5, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395012, monster_id = 20011401, pos = { x = 300.1, y = 217.7, z = 149.9 }, rot = { x = 0.0, y = 198.2, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395013, monster_id = 20011401, pos = { x = 300.9, y = 217.7, z = 144.8 }, rot = { x = 0.0, y = 327.4, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395014, monster_id = 20011401, pos = { x = 305.1, y = 217.7, z = 145.1 }, rot = { x = 0.0, y = 326.1, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395015, monster_id = 21030101, pos = { x = 299.7, y = 217.7, z = 144.6 }, rot = { x = 0.0, y = 16.9, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395017, monster_id = 21011001, pos = { x = 296.1, y = 217.7, z = 142.7 }, rot = { x = 0.0, y = 32.1, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395018, monster_id = 21010701, pos = { x = 311.0, y = 217.7, z = 144.0 }, rot = { x = 0.0, y = 303.0, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395019, monster_id = 21011001, pos = { x = 309.2, y = 217.7, z = 152.6 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395020, monster_id = 21010701, pos = { x = 294.3, y = 217.7, z = 151.0 }, rot = { x = 0.0, y = 125.3, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395021, monster_id = 22010201, pos = { x = 298.5, y = 217.7, z = 147.0 }, rot = { x = 0.0, y = 76.0, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 395022, monster_id = 21030101, pos = { x = 299.6, y = 217.7, z = 149.3 }, rot = { x = 0.0, y = 127.0, z = 0.0 }, level = 19, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 395001, gadget_id = 70800001, pos = { x = 302.7, y = 217.6, z = 147.4 }, rot = { x = 0.0, y = 264.1, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 395007, gadget_id = 70350006, pos = { x = 303.7, y = 221.4, z = 138.7 }, rot = { x = 0.0, y = 172.9, z = 180.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 395008, gadget_id = 70350006, pos = { x = 315.4, y = 221.5, z = 148.9 }, rot = { x = 0.0, y = 83.7, z = 180.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 395009, gadget_id = 70350006, pos = { x = 290.4, y = 221.5, z = 146.2 }, rot = { x = 0.0, y = 83.7, z = 180.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 395030, gadget_id = 70211121, pos = { x = 307.2, y = 217.6, z = 147.8 }, rot = { x = 0.0, y = 356.2, z = 0.0 }, level = 19, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 395031, gadget_id = 70211121, pos = { x = 298.6, y = 217.6, z = 147.0 }, rot = { x = 0.0, y = 355.4, z = 0.0 }, level = 19, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_395026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_395026", action = "action_EVENT_GADGET_CREATE_395026", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_395027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395027", action = "action_EVENT_ANY_MONSTER_DIE_395027", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_395028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395028", action = "action_EVENT_ANY_MONSTER_DIE_395028", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_395029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395029", action = "action_EVENT_ANY_MONSTER_DIE_395029", trigger_count = 0 },
	{ name = "SELECT_OPTION_395033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_395033", action = "action_EVENT_SELECT_OPTION_395033", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_395034", event = EventType.EVENT_VARIABLE_CHANGE, source = "TriggerCount", condition = "condition_EVENT_VARIABLE_CHANGE_395034", action = "action_EVENT_VARIABLE_CHANGE_395034", trigger_count = 0 },
	{ name = "GADGET_CREATE_395035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_395035", action = "action_EVENT_GADGET_CREATE_395035", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_395036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395036", action = "action_EVENT_GADGET_STATE_CHANGE_395036" },
	{ name = "GADGET_STATE_CHANGE_395037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395037", action = "action_EVENT_GADGET_STATE_CHANGE_395037" },
	{ name = "VARIABLE_CHANGE_395039", event = EventType.EVENT_VARIABLE_CHANGE, source = "GetReward", condition = "condition_EVENT_VARIABLE_CHANGE_395039", action = "action_EVENT_VARIABLE_CHANGE_395039" }
}

-- 变量
variables = {
	{ name = "isActive", value = 0, no_refresh = true },
	{ name = "isFinished", value = 0, no_refresh = true },
	{ name = "TriggerCount", value = 0, no_refresh = true },
	{ name = "GetReward", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 6,
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
		gadgets = { 395001, 395007, 395008, 395009 },
		regions = { },
		triggers = { "GADGET_CREATE_395026", "SELECT_OPTION_395033", "VARIABLE_CHANGE_395034", "GADGET_CREATE_395035", "GADGET_STATE_CHANGE_395036", "GADGET_STATE_CHANGE_395037", "VARIABLE_CHANGE_395039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 395011, 395012, 395013, 395014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 395017, 395018, 395019, 395020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 395010, 395015, 395021, 395022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 395007, 395008, 395009 },
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
function condition_EVENT_GADGET_CREATE_395026(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	if 395007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_395026(context, evt)
	-- 将configid为 395007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将本组内变量名为 "TriggerCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "TriggerCount", 0) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 4)
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104395, 395001, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395027(context, evt)
	-- 创建id为395030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 395030 }) then
	  return -1
	end
	
	-- 创建id为395031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 395031 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	-- 将configid为 395007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104395, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104395, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_395033(context, evt)
	-- 判断是gadgetid 395001 option_id 7
	if 395001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_395033(context, evt)
	-- 针对当前group内变量名为 "TriggerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "TriggerCount", 1) then
	  return -1
	end
	
	-- 删除指定group： 133104395 ；指定config：395001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104395, 395001, 7) then
		return -1
	end
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_395034(context, evt)
	-- 判断变量"TriggerCount"为1
	if ScriptLib.GetGroupVariableValue(context, "TriggerCount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_395034(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104395, 2)
	
	-- 将configid为 395007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_395035(context, evt)
	if 395007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_395035(context, evt)
	-- 将configid为 395007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395036(context, evt)
	if 395030 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395036(context, evt)
	-- 针对当前group内变量名为 "GetReward" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GetReward", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395037(context, evt)
	if 395031 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395037(context, evt)
	-- 针对当前group内变量名为 "GetReward" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GetReward", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_395039(context, evt)
	-- 判断变量"GetReward"为2
	if ScriptLib.GetGroupVariableValue(context, "GetReward") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_395039(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104395, 5) then
		return -1
	end
	
	return 0
end

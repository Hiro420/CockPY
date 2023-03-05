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
	{ config_id = 137001, gadget_id = 70210063, pos = { x = -19.1, y = 3.5, z = -572.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 137002, gadget_id = 70900039, pos = { x = -39.5, y = 14.0, z = -579.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 137004, gadget_id = 70900315, pos = { x = -33.3, y = 12.6, z = -578.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 137005, gadget_id = 70330017, pos = { x = -19.6, y = 3.5, z = -583.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 137006, gadget_id = 70330019, pos = { x = 39.8, y = 3.5, z = -575.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 137009, gadget_id = 70210106, pos = { x = -15.0, y = 3.5, z = -575.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 137011, gadget_id = 70211111, pos = { x = -4.9, y = 3.5, z = -572.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 137012, gadget_id = 70360005, pos = { x = -5.4, y = 3.5, z = -567.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 137010, shape = RegionShape.SPHERE, radius = 8, pos = { x = -15.0, y = 3.5, z = -575.0 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_137003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137003", action = "action_EVENT_GADGET_STATE_CHANGE_137003", trigger_count = 0 },
	{ name = "GADGET_CREATE_137007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_137007", action = "action_EVENT_GADGET_CREATE_137007", trigger_count = 0 },
	{ name = "SELECT_OPTION_137008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_137008", action = "action_EVENT_SELECT_OPTION_137008", trigger_count = 0 },
	{ name = "ENTER_REGION_137010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_137010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_137013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137013", action = "action_EVENT_GADGET_STATE_CHANGE_137013", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_137014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137014", action = "action_EVENT_GADGET_STATE_CHANGE_137014", trigger_count = 0 }
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
		gadgets = { 137001, 137002, 137005, 137006, 137012 },
		regions = { 137010 },
		triggers = { "GADGET_STATE_CHANGE_137003", "GADGET_CREATE_137007", "SELECT_OPTION_137008", "ENTER_REGION_137010", "GADGET_STATE_CHANGE_137013", "GADGET_STATE_CHANGE_137014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 137011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_137013", "GADGET_STATE_CHANGE_137014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137003(context, evt)
	if 137002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137003(context, evt)
	-- 创建id为137004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 137004 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_137007(context, evt)
	if 137006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_137007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008137, 137006, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_137008(context, evt)
	-- 判断是gadgetid 137006 option_id 7
	if 137006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_137008(context, evt)
	-- 将configid为 137006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 137006, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_137010(context, evt)
	-- 创建id为137009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 137009 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137013(context, evt)
	if 137012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250008137, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137014(context, evt)
	if 137012 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137014(context, evt)
	-- 将configid为 137011 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 137011, GadgetState.Action01) then
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250008137, 2)
	
	return 0
end

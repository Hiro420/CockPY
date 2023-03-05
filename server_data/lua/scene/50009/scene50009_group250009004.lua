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
	{ config_id = 4001, gadget_id = 70900303, pos = { x = 174.8, y = 10.5, z = -20.1 }, rot = { x = 0.0, y = 53.0, z = 0.0 }, level = 1 },
	{ config_id = 4002, gadget_id = 70211001, pos = { x = 198.5, y = 4.0, z = -8.4 }, rot = { x = 0.0, y = 102.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4003, gadget_id = 70360001, pos = { x = 187.3, y = 5.0, z = -11.9 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 1.0, y = 1.0, z = 1.0 }, pos = { x = 203.5, y = 5.1, z = -0.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false },
	{ name = "CLIENT_EXECUTE_15", event = EventType.EVENT_CLIENT_EXECUTE, source = "View", condition = "", action = "action_EVENT_CLIENT_EXECUTE_15" },
	{ name = "GADGET_CREATE_17", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17", action = "action_EVENT_GADGET_CREATE_17" },
	{ name = "SELECT_OPTION_18", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18", action = "action_EVENT_SELECT_OPTION_18", forbid_guest = false }
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
		gadgets = { 4001, 4003 },
		regions = { 14 },
		triggers = { "ENTER_REGION_14", "CLIENT_EXECUTE_15", "GADGET_CREATE_17", "SELECT_OPTION_18" },
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
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_15(context, evt)
	-- 创建id为4002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4002 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250009004, 4003, {172}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18(context, evt)
	-- 判断是gadgetid 4003 option_id 172
	if 4003 ~= evt.param1 then
		return false	
	end
	
	if 172 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18(context, evt)
	-- 调用提示id为 500090101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500090101) then
		return -1
	end
	
	return 0
end

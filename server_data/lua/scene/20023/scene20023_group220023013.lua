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
	{ config_id = 19, gadget_id = 70380014, pos = { x = 262.1, y = 22.1, z = 4.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 67, gadget_id = 70350004, pos = { x = 254.3, y = 25.8, z = 22.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 68, gadget_id = 70350004, pos = { x = 254.0, y = 25.5, z = -15.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 13001, gadget_id = 70350016, pos = { x = 262.0, y = 22.5, z = 4.0 }, rot = { x = 0.0, y = 270.2, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_51", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_51", action = "action_EVENT_GADGET_CREATE_51", trigger_count = 0 },
	{ name = "SELECT_OPTION_13002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13002", action = "action_EVENT_SELECT_OPTION_13002" }
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
		gadgets = { 19, 67, 68, 13001 },
		regions = { },
		triggers = { "GADGET_CREATE_51", "SELECT_OPTION_13002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_51(context, evt)
	if 13001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_51(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13002(context, evt)
	if 13001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13002(context, evt)
	
	
	-- 根据不同的选项做不同的操作
	if 7 == evt.param2 then
		-- 启动移动平台
	    if 0 ~= ScriptLib.StartPlatform(context, 19) then
	        return -1
	    end
	
	-- 删除指定group： 220023012 ；指定config：36；物件身上指定option：1002；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220023013, 13001, 7) then
		return -1
	end
	
	-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12007} }) then
			return -1
		end
	end
	
	return 0
end

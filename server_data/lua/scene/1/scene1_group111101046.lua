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
	{ config_id = 46001, gadget_id = 70360001, pos = { x = 2402.1, y = 251.5, z = -1413.7 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 46002, gadget_id = 70211111, pos = { x = 2402.1, y = 250.4, z = -1413.9 }, rot = { x = 0.0, y = 80.3, z = 0.0 }, level = 6, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 46005, gadget_id = 70290002, pos = { x = 2399.7, y = 250.8, z = -1414.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 46006, gadget_id = 70500000, pos = { x = 2398.6, y = 252.4, z = -1413.7 }, rot = { x = 0.0, y = 265.0, z = 0.0 }, level = 1, point_type = 3001, owner = 46005 },
	{ config_id = 46007, gadget_id = 70500000, pos = { x = 2400.6, y = 253.4, z = -1415.4 }, rot = { x = 0.0, y = 314.0, z = 0.0 }, level = 1, point_type = 3001, owner = 46005 },
	{ config_id = 46008, gadget_id = 70500000, pos = { x = 2399.7, y = 253.7, z = -1413.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3001, owner = 46005 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_46003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46003", action = "action_EVENT_GADGET_CREATE_46003", trigger_count = 0 },
	{ name = "SELECT_OPTION_46004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46004", action = "action_EVENT_SELECT_OPTION_46004" }
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
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 46001, 46006, 46007, 46008 },
		regions = { },
		triggers = { "GADGET_CREATE_46003", "SELECT_OPTION_46004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 46002 },
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
function condition_EVENT_GADGET_CREATE_46003(context, evt)
	-- 判断是gadgetid 46001
	if 46001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46004(context, evt)
	if 46001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46004(context, evt)
	-- 删除指定group： 111101046 ；指定config：46001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101046, 46001, 169) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101046, suite = 2 }) then
			return -1
		end
	
	return 0
end

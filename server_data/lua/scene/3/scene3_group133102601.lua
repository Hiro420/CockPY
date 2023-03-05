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
	{ config_id = 601001, gadget_id = 70360001, pos = { x = 1771.7, y = 211.4, z = 610.8 }, rot = { x = 0.8, y = 137.6, z = 355.6 }, level = 18, isOneoff = true, persistent = true },
	{ config_id = 601002, gadget_id = 70211111, pos = { x = 1771.9, y = 210.7, z = 610.7 }, rot = { x = 355.6, y = 42.5, z = 359.6 }, level = 18, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true },
	{ config_id = 601005, gadget_id = 70220001, pos = { x = 1771.8, y = 210.7, z = 610.8 }, rot = { x = 349.2, y = 339.2, z = 3.3 }, level = 18 },
	{ config_id = 601007, gadget_id = 70360040, pos = { x = 1771.9, y = 210.7, z = 610.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_601003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_601003", action = "action_EVENT_GADGET_CREATE_601003" },
	{ name = "SELECT_OPTION_601004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_601004", action = "action_EVENT_SELECT_OPTION_601004" },
	{ name = "ANY_GADGET_DIE_601006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_601006", action = "action_EVENT_ANY_GADGET_DIE_601006" }
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
		gadgets = { 601005 },
		regions = { },
		triggers = { "GADGET_CREATE_601003", "SELECT_OPTION_601004", "ANY_GADGET_DIE_601006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 601002 },
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
function condition_EVENT_GADGET_CREATE_601003(context, evt)
	if 601001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_601003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_601004(context, evt)
	if 601001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_601004(context, evt)
	-- 删除指定group： 133102601 ；指定config：601001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102601, 601001, 169) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102601, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_601006(context, evt)
	if 601005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_601006(context, evt)
	-- 创建id为601001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601001 }) then
	  return -1
	end
	
	-- 创建id为601007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601007 }) then
	  return -1
	end
	
	return 0
end

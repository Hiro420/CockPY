--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 28010102, pos = { x = 144.6, y = 200.3, z = -680.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 66006, monster_id = 28010101, pos = { x = 144.6, y = 200.3, z = -680.3 }, rot = { x = 0.0, y = 167.4, z = 0.0 }, level = 32, drop_tag = "采集动物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66002, gadget_id = 70360001, pos = { x = 144.5, y = 200.6, z = -680.7 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 66003, gadget_id = 70360040, pos = { x = 144.6, y = 200.5, z = -680.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_66004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66004", action = "action_EVENT_GADGET_CREATE_66004", trigger_count = 0 },
	{ name = "SELECT_OPTION_66005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66005", action = "action_EVENT_SELECT_OPTION_66005" }
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
		gadgets = { 66002, 66003 },
		regions = { },
		triggers = { "GADGET_CREATE_66004", "SELECT_OPTION_66005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 66001, 66006 },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_66004(context, evt)
	-- 判断是gadgetid 66002
	if 66002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66005(context, evt)
	if 66002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66005(context, evt)
	-- 删除指定group： 133108066 ；指定config：66002；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108066, 66002, 169) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108066, suite = 2 }) then
			return -1
		end
	
	return 0
end

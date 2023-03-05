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
	{ config_id = 448001, gadget_id = 70360001, pos = { x = 107.8, y = 206.2, z = 720.8 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 448002, gadget_id = 70211111, pos = { x = 107.8, y = 204.9, z = 720.6 }, rot = { x = 8.2, y = 82.9, z = 356.3 }, level = 19, chest_drop_id = 1000600, drop_count = 1, showcutscene = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_448003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_448003", action = "action_EVENT_GADGET_CREATE_448003", trigger_count = 0 },
	{ name = "SELECT_OPTION_448004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_448004", action = "action_EVENT_SELECT_OPTION_448004" },
	{ name = "GADGET_STATE_CHANGE_448005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_448005", action = "action_EVENT_GADGET_STATE_CHANGE_448005" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 448002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_448005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 448001 },
		regions = { },
		triggers = { "GADGET_CREATE_448003", "SELECT_OPTION_448004", "GADGET_STATE_CHANGE_448005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_448003(context, evt)
	-- 判断是gadgetid 448001
	if 448001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_448003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_448004(context, evt)
	if 448001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_448004(context, evt)
	-- 删除指定group： 133104448 ；指定config：448001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104448, 448001, 169) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104448, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_448005(context, evt)
	if 448002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_448005(context, evt)
	-- 将本组内变量名为 "Dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dug", 1) then
	  return -1
	end
	
	-- 将本组内变量名为 "133104448" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "133104448", 0, 133104444) then
	  return -1
	end
	
	return 0
end

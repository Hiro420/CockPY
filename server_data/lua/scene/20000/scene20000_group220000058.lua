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
	{ config_id = 269, gadget_id = 70900236, pos = { x = -69.0, y = 13.9, z = 290.3 }, rot = { x = 0.0, y = 82.8, z = 0.0 }, level = 1 },
	{ config_id = 270, gadget_id = 70900236, pos = { x = -74.8, y = 11.9, z = 290.7 }, rot = { x = 0.0, y = 37.9, z = 0.0 }, level = 1 },
	{ config_id = 271, gadget_id = 70900236, pos = { x = -78.5, y = 9.7, z = 290.3 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 1 },
	{ config_id = 272, gadget_id = 70900236, pos = { x = -87.2, y = 2.2, z = 285.8 }, rot = { x = 0.0, y = 229.8, z = 0.0 }, level = 1 },
	{ config_id = 273, gadget_id = 70900236, pos = { x = -86.6, y = 2.2, z = 281.7 }, rot = { x = 0.0, y = 48.3, z = 0.0 }, level = 1 },
	{ config_id = 274, gadget_id = 70900236, pos = { x = -86.6, y = 12.2, z = 281.5 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 275, gadget_id = 70900236, pos = { x = -86.7, y = 15.4, z = 281.6 }, rot = { x = 0.0, y = 83.8, z = 0.0 }, level = 1 },
	{ config_id = 276, gadget_id = 70900236, pos = { x = -86.7, y = 13.3, z = 281.5 }, rot = { x = 0.0, y = 300.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_86", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_86", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_105", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_105", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 269, 270, 271, 272, 273, 274, 275, 276 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_86", "ANY_GADGET_DIE_105" },
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
function action_EVENT_GADGET_STATE_CHANGE_86(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "count")
	local c_num = c_num_1 + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", c_num) then
	ScriptLib.PrintLog("c_num="..c_num)
	    return -1
	end
	
	if c_num == 8 then
	 if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000059, suite = 2 }) then
			return -1
		end
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  return -1
	end
	
	return 0
end

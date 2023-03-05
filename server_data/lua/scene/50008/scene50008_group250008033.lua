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
	{ config_id = 128, gadget_id = 70900236, pos = { x = 125.5, y = 5.9, z = -548.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 130, gadget_id = 70900236, pos = { x = 144.7, y = 7.9, z = -558.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 131, gadget_id = 70900236, pos = { x = 143.2, y = 7.6, z = -558.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 132, gadget_id = 70900236, pos = { x = 140.9, y = 6.9, z = -557.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 133, gadget_id = 70900236, pos = { x = 139.2, y = 6.3, z = -556.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 134, gadget_id = 70710005, pos = { x = 132.1, y = -6.9, z = -556.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 135, gadget_id = 70900236, pos = { x = 135.1, y = 4.9, z = -550.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 136, gadget_id = 70900236, pos = { x = 137.8, y = 4.9, z = -554.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 137, gadget_id = 70900236, pos = { x = 130.2, y = 4.9, z = -547.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 138, gadget_id = 70900236, pos = { x = 121.7, y = 4.9, z = -549.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 139, gadget_id = 70900236, pos = { x = 117.3, y = 4.9, z = -550.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 140, gadget_id = 70900236, pos = { x = 104.5, y = 14.2, z = -555.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_79", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_79", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "num", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 128, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79" },
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
function action_EVENT_ANY_GADGET_DIE_79(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num", c_num) then
	  return -1
	end
	
	if c_num == 11 then
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250008034, suite = 2 }) then
			return -1
		end
	
	end
	return 0
end

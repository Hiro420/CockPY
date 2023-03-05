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
	{ config_id = 90001, gadget_id = 70360007, pos = { x = 1607.2, y = 201.3, z = 1143.2 }, rot = { x = 351.8, y = 177.4, z = 0.4 }, level = 19 },
	{ config_id = 90002, gadget_id = 70211111, pos = { x = 1663.9, y = 230.1, z = 1348.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 90007, gadget_id = 70690006, pos = { x = 1622.3, y = 193.5, z = 1152.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 90008, gadget_id = 70690006, pos = { x = 1655.9, y = 199.2, z = 1206.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 90009, gadget_id = 70690001, pos = { x = 1628.2, y = 220.1, z = 1164.8 }, rot = { x = 9.7, y = 38.1, z = 2.1 }, level = 1 },
	{ config_id = 90010, gadget_id = 70690001, pos = { x = 1635.4, y = 218.1, z = 1174.0 }, rot = { x = 9.7, y = 38.1, z = 2.1 }, level = 1 },
	{ config_id = 90011, gadget_id = 70690001, pos = { x = 1643.9, y = 215.8, z = 1184.9 }, rot = { x = 9.7, y = 38.1, z = 2.1 }, level = 1 },
	{ config_id = 90012, gadget_id = 70690006, pos = { x = 1679.6, y = 193.8, z = 1233.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 90013, gadget_id = 70690001, pos = { x = 1663.3, y = 219.2, z = 1214.6 }, rot = { x = 9.5, y = 41.9, z = 2.7 }, level = 1 },
	{ config_id = 90014, gadget_id = 70690001, pos = { x = 1670.2, y = 216.4, z = 1222.2 }, rot = { x = 20.7, y = 42.4, z = 2.9 }, level = 1 },
	{ config_id = 90015, gadget_id = 70690001, pos = { x = 1681.2, y = 217.7, z = 1234.7 }, rot = { x = 322.5, y = 39.3, z = 3.4 }, level = 1 },
	{ config_id = 90016, gadget_id = 70690001, pos = { x = 1685.6, y = 223.0, z = 1240.0 }, rot = { x = 322.5, y = 39.3, z = 3.4 }, level = 1 },
	{ config_id = 90017, gadget_id = 70690001, pos = { x = 1689.7, y = 228.5, z = 1246.0 }, rot = { x = 323.3, y = 29.8, z = 9.2 }, level = 1 },
	{ config_id = 90018, gadget_id = 70690001, pos = { x = 1692.5, y = 232.6, z = 1250.7 }, rot = { x = 324.1, y = 24.9, z = 12.1 }, level = 1 },
	{ config_id = 90019, gadget_id = 70690006, pos = { x = 1693.0, y = 214.7, z = 1266.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 90020, gadget_id = 70690001, pos = { x = 1694.4, y = 238.7, z = 1277.1 }, rot = { x = 0.0, y = 357.8, z = 355.4 }, level = 1 },
	{ config_id = 90021, gadget_id = 70690001, pos = { x = 1694.2, y = 239.0, z = 1286.6 }, rot = { x = 0.0, y = 357.8, z = 355.4 }, level = 1 },
	{ config_id = 90022, gadget_id = 70690001, pos = { x = 1692.1, y = 239.1, z = 1298.2 }, rot = { x = 359.2, y = 348.0, z = 355.4 }, level = 1 },
	{ config_id = 90023, gadget_id = 70690001, pos = { x = 1688.1, y = 239.4, z = 1308.9 }, rot = { x = 358.4, y = 337.7, z = 355.7 }, level = 1 },
	{ config_id = 90024, gadget_id = 70690001, pos = { x = 1683.1, y = 239.8, z = 1319.0 }, rot = { x = 357.8, y = 330.1, z = 355.9 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_90003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90003", action = "action_EVENT_GADGET_STATE_CHANGE_90003" },
	{ name = "GADGET_STATE_CHANGE_90004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90004", action = "action_EVENT_GADGET_STATE_CHANGE_90004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_90005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90005", action = "action_EVENT_GADGET_STATE_CHANGE_90005", trigger_count = 0 },
	{ name = "GADGET_CREATE_90006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_90006", action = "action_EVENT_GADGET_CREATE_90006", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 90001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90003", "GADGET_STATE_CHANGE_90004", "GADGET_STATE_CHANGE_90005", "GADGET_CREATE_90006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 90002, 90007, 90008, 90009, 90010, 90011, 90012, 90013, 90014, 90015, 90016, 90017, 90018, 90019, 90020, 90021, 90022, 90023, 90024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_90003(context, evt)
	if 90002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 3, 1) then
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101090, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90004(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 1, 1) then
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101090, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90005(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101090, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90006(context, evt)
	if 90001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101090, 2)
	
	return 0
end

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
	{ config_id = 370001, gadget_id = 70690001, pos = { x = 888.4, y = 323.3, z = 1522.8 }, rot = { x = 10.0, y = 40.0, z = 0.0 }, level = 24 },
	{ config_id = 370002, gadget_id = 70690001, pos = { x = 898.1, y = 320.9, z = 1532.9 }, rot = { x = 10.0, y = 40.0, z = 0.0 }, level = 24 },
	{ config_id = 370003, gadget_id = 70690001, pos = { x = 905.6, y = 318.9, z = 1540.6 }, rot = { x = 10.0, y = 40.0, z = 0.0 }, level = 24 },
	{ config_id = 370004, gadget_id = 70360005, pos = { x = 881.6, y = 323.3, z = 1515.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 370005, gadget_id = 70360025, pos = { x = 937.6, y = 329.3, z = 1652.3 }, rot = { x = 0.0, y = 111.0, z = 0.0 }, level = 1 },
	{ config_id = 370006, gadget_id = 70900201, pos = { x = 937.5, y = 329.3, z = 1652.3 }, rot = { x = 0.0, y = 36.8, z = 0.0 }, level = 1 },
	{ config_id = 370012, gadget_id = 70211111, pos = { x = 938.6, y = 329.3, z = 1651.9 }, rot = { x = 0.0, y = 288.7, z = 0.0 }, level = 1, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 370013, gadget_id = 70690001, pos = { x = 910.3, y = 317.7, z = 1545.1 }, rot = { x = 0.0, y = 77.3, z = 0.0 }, level = 24 },
	{ config_id = 370014, gadget_id = 70690001, pos = { x = 917.2, y = 318.3, z = 1548.2 }, rot = { x = 350.0, y = 86.2, z = 0.0 }, level = 24 },
	{ config_id = 370015, gadget_id = 70690001, pos = { x = 928.3, y = 319.3, z = 1549.0 }, rot = { x = 350.0, y = 85.7, z = 0.0 }, level = 24 },
	{ config_id = 370016, gadget_id = 70690001, pos = { x = 939.1, y = 320.3, z = 1549.9 }, rot = { x = 350.0, y = 85.4, z = 0.0 }, level = 24 },
	{ config_id = 370017, gadget_id = 70690001, pos = { x = 951.2, y = 321.4, z = 1550.8 }, rot = { x = 350.0, y = 84.3, z = 0.0 }, level = 24 },
	{ config_id = 370018, gadget_id = 70690001, pos = { x = 957.3, y = 322.2, z = 1551.1 }, rot = { x = 0.0, y = 29.3, z = 0.0 }, level = 24 },
	{ config_id = 370019, gadget_id = 70690001, pos = { x = 960.4, y = 322.4, z = 1557.5 }, rot = { x = 355.0, y = 10.4, z = 0.0 }, level = 24 },
	{ config_id = 370020, gadget_id = 70690001, pos = { x = 962.6, y = 323.3, z = 1568.6 }, rot = { x = 355.0, y = 10.5, z = 0.0 }, level = 24 },
	{ config_id = 370021, gadget_id = 70690001, pos = { x = 966.1, y = 325.1, z = 1585.5 }, rot = { x = 355.0, y = 10.9, z = 0.0 }, level = 24 },
	{ config_id = 370022, gadget_id = 70690001, pos = { x = 968.1, y = 326.6, z = 1595.7 }, rot = { x = 355.0, y = 340.8, z = 5.0 }, level = 24 },
	{ config_id = 370023, gadget_id = 70690001, pos = { x = 966.3, y = 327.3, z = 1600.3 }, rot = { x = 355.0, y = 303.4, z = 0.0 }, level = 24 },
	{ config_id = 370024, gadget_id = 70690001, pos = { x = 959.6, y = 328.1, z = 1604.7 }, rot = { x = 355.0, y = 303.4, z = 0.0 }, level = 24 },
	{ config_id = 370025, gadget_id = 70690001, pos = { x = 952.2, y = 328.8, z = 1609.6 }, rot = { x = 355.0, y = 303.4, z = 0.0 }, level = 24 },
	{ config_id = 370026, gadget_id = 70690001, pos = { x = 942.8, y = 329.8, z = 1615.9 }, rot = { x = 355.0, y = 303.4, z = 0.0 }, level = 24 },
	{ config_id = 370027, gadget_id = 70690001, pos = { x = 931.4, y = 330.6, z = 1623.5 }, rot = { x = 355.0, y = 355.6, z = 0.0 }, level = 24 },
	{ config_id = 370028, gadget_id = 70690001, pos = { x = 929.7, y = 331.0, z = 1629.8 }, rot = { x = 0.0, y = 16.8, z = 0.0 }, level = 24 },
	{ config_id = 370029, gadget_id = 70690001, pos = { x = 932.4, y = 331.1, z = 1639.0 }, rot = { x = 0.0, y = 16.8, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
	{ config_id = 370008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 937.9, y = 329.3, z = 1652.1 } },
	{ config_id = 370030, shape = RegionShape.SPHERE, radius = 3, pos = { x = 937.9, y = 329.3, z = 1652.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_370008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370008", action = "", tag = "666" },
	{ name = "CHALLENGE_SUCCESS_370009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_370009", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_370010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_370010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_370011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_370011", action = "action_EVENT_GADGET_STATE_CHANGE_370011", trigger_count = 0 },
	{ name = "ENTER_REGION_370030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370030", action = "action_EVENT_ENTER_REGION_370030", tag = "666" },
	{ name = "GADGET_STATE_CHANGE_370031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_370031", action = "action_EVENT_GADGET_STATE_CHANGE_370031", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "hasFinished", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 370004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_370011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 370001, 370002, 370003, 370005, 370006, 370013, 370014, 370015, 370016, 370017, 370018, 370019, 370020, 370021, 370022, 370023, 370024, 370025, 370026, 370027, 370028, 370029 },
		regions = { 370008 },
		triggers = { "ENTER_REGION_370008", "CHALLENGE_SUCCESS_370009", "CHALLENGE_FAIL_370010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 370004, 370012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_370031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 370001, 370002, 370003, 370013, 370014, 370015, 370016, 370017, 370018, 370019, 370020, 370021, 370022, 370023, 370024, 370025, 370026, 370027, 370028, 370029 },
		regions = { 370030 },
		triggers = { "ENTER_REGION_370030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_370008(context, evt)
	if evt.param1 ~= 370008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_370009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 370007 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103370, 2)
	
	-- 将configid为 370004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103370, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_370010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103370, 2)
	
	-- 将configid为 370004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_370011(context, evt)
	if 370004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_370011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103370, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 370007 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为149的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 149, 18, 4, 666, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_370030(context, evt)
	if evt.param1 ~= 370030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370030(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103370, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_370031(context, evt)
	if 370004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_370031(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103370, 4)
	
	return 0
end

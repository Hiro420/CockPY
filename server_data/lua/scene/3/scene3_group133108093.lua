--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 20010801, pos = { x = -301.5, y = 209.4, z = -905.6 }, rot = { x = 0.0, y = 206.8, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93002, monster_id = 20011401, pos = { x = -325.7, y = 224.8, z = -935.2 }, rot = { x = 347.1, y = 230.6, z = 334.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93003, monster_id = 20011401, pos = { x = -328.0, y = 225.3, z = -936.3 }, rot = { x = 336.5, y = 202.8, z = 342.9 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93012, monster_id = 20010801, pos = { x = -301.1, y = 208.9, z = -903.0 }, rot = { x = 0.0, y = 206.8, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93013, monster_id = 20011201, pos = { x = -276.0, y = 201.0, z = -873.7 }, rot = { x = 0.0, y = 195.5, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93014, monster_id = 20011201, pos = { x = -273.7, y = 200.8, z = -872.2 }, rot = { x = 0.0, y = 216.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93015, monster_id = 20011401, pos = { x = -327.8, y = 224.2, z = -933.7 }, rot = { x = 334.0, y = 192.8, z = 347.1 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93018, monster_id = 20010801, pos = { x = -298.9, y = 209.0, z = -905.7 }, rot = { x = 341.3, y = 206.4, z = 2.3 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93019, monster_id = 20011201, pos = { x = -276.4, y = 200.8, z = -871.4 }, rot = { x = 350.0, y = 215.8, z = 4.8 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93023, monster_id = 20010901, pos = { x = -287.4, y = 200.4, z = -825.6 }, rot = { x = 0.9, y = 216.3, z = 357.3 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93024, monster_id = 20010301, pos = { x = -314.9, y = 215.0, z = -917.3 }, rot = { x = 328.7, y = 183.2, z = 10.5 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 93025, monster_id = 20010301, pos = { x = -285.4, y = 204.2, z = -890.5 }, rot = { x = 346.8, y = 217.5, z = 359.9 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 93004, gadget_id = 70360005, pos = { x = -331.9, y = 228.9, z = -946.7 }, rot = { x = 7.8, y = 0.0, z = 0.2 }, level = 1 },
	{ config_id = 93005, gadget_id = 70360025, pos = { x = -290.7, y = 200.3, z = -819.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 93006, gadget_id = 70900201, pos = { x = -290.7, y = 200.3, z = -819.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 93007, gadget_id = 70300118, pos = { x = -331.9, y = 230.4, z = -946.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 93016, gadget_id = 70220005, pos = { x = -324.0, y = 224.1, z = -932.9 }, rot = { x = 4.9, y = 0.1, z = 3.0 }, level = 1 },
	{ config_id = 93017, gadget_id = 70220005, pos = { x = -329.0, y = 224.3, z = -933.4 }, rot = { x = 16.9, y = 353.6, z = 347.1 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 93008, shape = RegionShape.SPHERE, radius = 3, pos = { x = -290.7, y = 200.3, z = -819.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_93008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93008", action = "action_EVENT_ENTER_REGION_93008", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_93009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_93009", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_93010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_93010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_93011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93011", action = "action_EVENT_GADGET_STATE_CHANGE_93011", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 93004, 93007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 93001, 93002, 93003, 93012, 93013, 93014, 93015, 93018, 93019, 93023, 93024, 93025 },
		gadgets = { 93005, 93006, 93016, 93017 },
		regions = { 93008 },
		triggers = { "ENTER_REGION_93008", "CHALLENGE_SUCCESS_93009", "CHALLENGE_FAIL_93010" },
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
function condition_EVENT_ENTER_REGION_93008(context, evt)
	if evt.param1 ~= 93008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93005 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_93009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93007 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108093, 2)
	
	-- 将configid为 93004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108093, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_93010(context, evt)
	-- 创建id为93007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108093, 2)
	
	-- 将configid为 93004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93011(context, evt)
	if 93004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108093, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93007 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 4) then
		return -1
	end
	
	return 0
end

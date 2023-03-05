--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 20011201, pos = { x = 647.4, y = 200.2, z = 151.4 }, rot = { x = 0.5, y = 66.4, z = 0.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422002, monster_id = 20011001, pos = { x = 636.0, y = 200.1, z = 152.1 }, rot = { x = 1.4, y = 82.6, z = 1.7 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422003, monster_id = 20010801, pos = { x = 629.1, y = 200.0, z = 151.6 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422012, monster_id = 20011001, pos = { x = 608.4, y = 200.2, z = 139.0 }, rot = { x = 0.0, y = 334.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422013, monster_id = 20010801, pos = { x = 625.2, y = 200.0, z = 149.2 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422014, monster_id = 20010801, pos = { x = 618.2, y = 200.0, z = 147.0 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422015, monster_id = 20011401, pos = { x = 589.3, y = 200.8, z = 127.3 }, rot = { x = 0.4, y = 87.5, z = 0.4 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422017, monster_id = 20011201, pos = { x = 648.2, y = 200.2, z = 154.0 }, rot = { x = 359.8, y = 155.6, z = 0.5 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422018, monster_id = 20011001, pos = { x = 604.9, y = 200.2, z = 140.8 }, rot = { x = 0.0, y = 84.4, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 422019, monster_id = 20010801, pos = { x = 613.9, y = 200.0, z = 147.0 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 422004, gadget_id = 70360005, pos = { x = 662.2, y = 200.4, z = 158.6 }, rot = { x = 356.5, y = 359.7, z = 8.9 }, level = 1 },
	{ config_id = 422005, gadget_id = 70360025, pos = { x = 573.2, y = 206.1, z = 125.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 422006, gadget_id = 70900201, pos = { x = 573.2, y = 206.1, z = 125.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 422007, gadget_id = 70300118, pos = { x = 662.2, y = 200.9, z = 158.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 422016, gadget_id = 70220005, pos = { x = 588.2, y = 201.0, z = 127.7 }, rot = { x = 353.8, y = 0.5, z = 351.1 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 422008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 573.2, y = 206.1, z = 125.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_422008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_422008", action = "action_EVENT_ENTER_REGION_422008", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_422009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_422009", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_422010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_422010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_422011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422011", action = "action_EVENT_GADGET_STATE_CHANGE_422011", trigger_count = 0 }
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
		gadgets = { 422004, 422007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_422011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 422001, 422002, 422003, 422012, 422013, 422014, 422015, 422017, 422018, 422019 },
		gadgets = { 422005, 422006, 422016 },
		regions = { 422008 },
		triggers = { "ENTER_REGION_422008", "CHALLENGE_SUCCESS_422009", "CHALLENGE_FAIL_422010" },
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
function condition_EVENT_ENTER_REGION_422008(context, evt)
	if evt.param1 ~= 422008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_422008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422005 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_422009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422007 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104422, 2)
	
	-- 将configid为 422004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104422, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_422010(context, evt)
	-- 创建id为422007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 422007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104422, 2)
	
	-- 将configid为 422004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422011(context, evt)
	if 422004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104422, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422007 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 5) then
		return -1
	end
	
	return 0
end

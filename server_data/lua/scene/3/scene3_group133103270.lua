--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 270001, monster_id = 20011001, pos = { x = 931.2, y = 322.5, z = 1654.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270002, monster_id = 20010501, pos = { x = 913.8, y = 304.0, z = 1717.2 }, rot = { x = 0.0, y = 86.7, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270003, monster_id = 20011001, pos = { x = 931.2, y = 322.5, z = 1655.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270011, monster_id = 20010801, pos = { x = 886.8, y = 323.3, z = 1675.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270012, monster_id = 20011201, pos = { x = 906.2, y = 318.9, z = 1663.9 }, rot = { x = 0.0, y = 291.4, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270013, monster_id = 20011201, pos = { x = 907.3, y = 318.9, z = 1663.3 }, rot = { x = 0.0, y = 309.1, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270015, monster_id = 20011201, pos = { x = 903.0, y = 304.1, z = 1711.8 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270016, monster_id = 20010501, pos = { x = 913.1, y = 304.0, z = 1718.4 }, rot = { x = 0.0, y = 79.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270017, monster_id = 20010801, pos = { x = 886.9, y = 323.2, z = 1674.1 }, rot = { x = 0.0, y = 265.6, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270018, monster_id = 20011201, pos = { x = 902.3, y = 304.2, z = 1712.3 }, rot = { x = 0.0, y = 27.8, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 270020, monster_id = 20010301, pos = { x = 928.4, y = 299.1, z = 1731.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270004, gadget_id = 70360005, pos = { x = 936.8, y = 322.5, z = 1652.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270005, gadget_id = 70360025, pos = { x = 942.8, y = 303.4, z = 1738.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270006, gadget_id = 70900201, pos = { x = 942.7, y = 303.4, z = 1738.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270014, gadget_id = 70300118, pos = { x = 936.9, y = 323.1, z = 1652.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270019, gadget_id = 70220035, pos = { x = 912.4, y = 304.2, z = 1717.5 }, rot = { x = 0.0, y = 197.0, z = 1.6 }, level = 24 }
}

-- 区域
regions = {
	{ config_id = 270007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 943.1, y = 303.5, z = 1738.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_270007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_270007", action = "action_EVENT_ENTER_REGION_270007", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_270008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_270008", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_270009", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_270009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_270010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270010", action = "action_EVENT_GADGET_STATE_CHANGE_270010", trigger_count = 0 }
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
		gadgets = { 270004, 270014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_270010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 270001, 270002, 270003, 270011, 270012, 270013, 270015, 270016, 270017, 270018, 270020 },
		gadgets = { 270005, 270006, 270019 },
		regions = { 270007 },
		triggers = { "ENTER_REGION_270007", "CHALLENGE_SUCCESS_270008", "CHALLENGE_FAIL_270009" },
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
function condition_EVENT_ENTER_REGION_270007(context, evt)
	if evt.param1 ~= 270007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_270007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270005 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_270008(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270014 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103270, 2)
	
	-- 将configid为 270004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103270, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_270009(context, evt)
	-- 创建id为270014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 270014 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103270, 2)
	
	-- 将configid为 270004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270010(context, evt)
	if 270004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103270, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270014 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 8, 4, 666, 5) then
		return -1
	end
	
	return 0
end

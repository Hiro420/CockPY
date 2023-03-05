--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 565001, monster_id = 20011001, pos = { x = 1572.4, y = 246.7, z = 280.7 }, rot = { x = 357.3, y = 272.0, z = 348.1 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565002, monster_id = 20011001, pos = { x = 1574.7, y = 246.8, z = 281.0 }, rot = { x = 352.9, y = 247.2, z = 354.1 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565003, monster_id = 20011001, pos = { x = 1573.5, y = 247.0, z = 279.2 }, rot = { x = 10.0, y = 234.0, z = 346.5 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565012, monster_id = 20010801, pos = { x = 1598.4, y = 251.2, z = 267.6 }, rot = { x = 1.3, y = 296.8, z = 6.8 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565013, monster_id = 20010801, pos = { x = 1599.4, y = 251.1, z = 270.2 }, rot = { x = 1.3, y = 296.8, z = 6.8 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565015, monster_id = 20010501, pos = { x = 1621.5, y = 261.0, z = 251.4 }, rot = { x = 13.0, y = 315.4, z = 356.1 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565016, monster_id = 20010501, pos = { x = 1619.8, y = 261.1, z = 252.2 }, rot = { x = 13.4, y = 325.1, z = 9.6 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565017, monster_id = 20010801, pos = { x = 1598.0, y = 251.1, z = 269.5 }, rot = { x = 351.4, y = 32.7, z = 8.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565018, monster_id = 20010501, pos = { x = 1619.3, y = 261.0, z = 250.0 }, rot = { x = 16.0, y = 331.2, z = 5.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565020, monster_id = 20011201, pos = { x = 1609.1, y = 268.5, z = 237.8 }, rot = { x = 16.0, y = 34.6, z = 5.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565021, monster_id = 20011201, pos = { x = 1606.3, y = 268.9, z = 239.5 }, rot = { x = 16.0, y = 34.6, z = 5.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565022, monster_id = 20011201, pos = { x = 1608.3, y = 268.5, z = 240.7 }, rot = { x = 16.0, y = 34.6, z = 5.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 565023, monster_id = 20010901, pos = { x = 1600.4, y = 272.6, z = 231.7 }, rot = { x = 16.0, y = 34.6, z = 5.2 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 565004, gadget_id = 70360005, pos = { x = 1554.8, y = 246.9, z = 278.3 }, rot = { x = 3.9, y = 358.2, z = 359.3 }, level = 1 },
	{ config_id = 565005, gadget_id = 70360025, pos = { x = 1597.8, y = 276.9, z = 220.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 565006, gadget_id = 70900201, pos = { x = 1597.8, y = 276.9, z = 220.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 565007, gadget_id = 70300118, pos = { x = 1554.8, y = 247.4, z = 278.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 565019, gadget_id = 70220005, pos = { x = 1601.1, y = 271.6, z = 229.4 }, rot = { x = 358.1, y = 0.8, z = 357.7 }, level = 1 },
	{ config_id = 565024, gadget_id = 70220005, pos = { x = 1599.6, y = 272.0, z = 230.4 }, rot = { x = 358.4, y = 358.6, z = 62.7 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 565008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1597.8, y = 276.9, z = 220.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_565008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_565008", action = "action_EVENT_ENTER_REGION_565008", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_565009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_565009", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_565010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_565010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_565011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_565011", action = "action_EVENT_GADGET_STATE_CHANGE_565011", trigger_count = 0 }
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
		gadgets = { 565004, 565007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_565011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 565001, 565002, 565003, 565012, 565013, 565015, 565016, 565017, 565018, 565020, 565021, 565022, 565023 },
		gadgets = { 565005, 565006, 565019, 565024 },
		regions = { 565008 },
		triggers = { "ENTER_REGION_565008", "CHALLENGE_SUCCESS_565009", "CHALLENGE_FAIL_565010" },
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
function condition_EVENT_ENTER_REGION_565008(context, evt)
	if evt.param1 ~= 565008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_565008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565005 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_565009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565007 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102565, 2)
	
	-- 将configid为 565004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102565, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_565010(context, evt)
	-- 创建id为565007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 565007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102565, 2)
	
	-- 将configid为 565004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_565011(context, evt)
	if 565004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_565011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102565, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565007 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 4) then
		return -1
	end
	
	return 0
end

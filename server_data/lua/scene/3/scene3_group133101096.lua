--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96002, monster_id = 20011001, pos = { x = 1163.2, y = 297.4, z = 1375.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96003, monster_id = 20011001, pos = { x = 1162.5, y = 297.4, z = 1375.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96012, monster_id = 20010801, pos = { x = 1222.2, y = 283.7, z = 1325.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96013, monster_id = 20011001, pos = { x = 1162.1, y = 297.5, z = 1376.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96014, monster_id = 20010801, pos = { x = 1223.2, y = 283.9, z = 1325.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96015, monster_id = 20011201, pos = { x = 1203.6, y = 280.0, z = 1337.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96016, monster_id = 20010501, pos = { x = 1256.0, y = 282.9, z = 1320.2 }, rot = { x = 348.5, y = 359.9, z = 1.3 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96017, monster_id = 20011201, pos = { x = 1204.8, y = 279.9, z = 1338.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96018, monster_id = 20011001, pos = { x = 1163.2, y = 297.5, z = 1376.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true },
	{ config_id = 96019, monster_id = 20010501, pos = { x = 1256.0, y = 282.7, z = 1318.7 }, rot = { x = 348.5, y = 359.9, z = 1.3 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96001, gadget_id = 70220035, pos = { x = 1255.1, y = 283.0, z = 1320.4 }, rot = { x = 283.8, y = 185.4, z = 174.8 }, level = 24 },
	{ config_id = 96004, gadget_id = 70360005, pos = { x = 1158.3, y = 297.0, z = 1376.4 }, rot = { x = 355.1, y = 358.6, z = 3.6 }, level = 1 },
	{ config_id = 96005, gadget_id = 70360025, pos = { x = 1259.1, y = 285.1, z = 1330.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 96006, gadget_id = 70900201, pos = { x = 1259.2, y = 285.2, z = 1330.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 96007, gadget_id = 70300118, pos = { x = 1158.3, y = 297.5, z = 1376.3 }, rot = { x = 0.9, y = 0.3, z = 360.0 }, level = 1 },
	{ config_id = 96020, gadget_id = 70220035, pos = { x = 1254.5, y = 282.5, z = 1318.8 }, rot = { x = 351.6, y = 0.4, z = 14.0 }, level = 24 }
}

-- 区域
regions = {
	{ config_id = 96008, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1259.1, y = 285.2, z = 1331.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_96008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_96008", action = "action_EVENT_ENTER_REGION_96008", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_96009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_96009", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_96010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_96010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_96011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96011", action = "action_EVENT_GADGET_STATE_CHANGE_96011", trigger_count = 0 }
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
		gadgets = { 96004, 96007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 96002, 96003, 96012, 96013, 96014, 96015, 96016, 96017, 96018, 96019 },
		gadgets = { 96001, 96005, 96006, 96020 },
		regions = { 96008 },
		triggers = { "ENTER_REGION_96008", "CHALLENGE_SUCCESS_96009", "CHALLENGE_FAIL_96010" },
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
function condition_EVENT_ENTER_REGION_96008(context, evt)
	if evt.param1 ~= 96008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_96008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96005 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_96009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96007 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101096, 2)
	
	-- 将configid为 96004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101096, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_96010(context, evt)
	-- 创建id为96007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 96007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101096, 2)
	
	-- 将configid为 96004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96011(context, evt)
	if 96004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101096, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96007 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 13, 4, 666, 4) then
		return -1
	end
	
	return 0
end

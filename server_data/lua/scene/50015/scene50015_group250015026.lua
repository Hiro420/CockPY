--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 20011001, pos = { x = 1620.2, y = 322.0, z = 422.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26002, monster_id = 20011001, pos = { x = 1614.5, y = 319.7, z = 403.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26003, monster_id = 20011001, pos = { x = 1630.4, y = 328.0, z = 417.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26011, monster_id = 20030101, pos = { x = 1648.4, y = 339.6, z = 444.4 }, rot = { x = 0.0, y = 215.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26012, monster_id = 20030101, pos = { x = 1642.8, y = 333.3, z = 425.0 }, rot = { x = 0.0, y = 239.5, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26013, monster_id = 20030101, pos = { x = 1669.6, y = 345.0, z = 453.4 }, rot = { x = 0.0, y = 239.5, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26004, gadget_id = 70900008, pos = { x = 1587.8, y = 317.7, z = 402.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 26005, gadget_id = 70360025, pos = { x = 1665.9, y = 360.8, z = 495.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 26006, gadget_id = 70900201, pos = { x = 1665.9, y = 360.8, z = 495.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 26007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1665.9, y = 360.8, z = 495.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_26007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26007", action = "", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_26008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_26008", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_26009", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_26009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_26010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26010", action = "action_EVENT_GADGET_STATE_CHANGE_26010", trigger_count = 0 }
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
		gadgets = { 26004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_26010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 26001, 26002, 26003, 26011, 26012, 26013 },
		gadgets = { 26005, 26006 },
		regions = { 26007 },
		triggers = { "ENTER_REGION_26007", "CHALLENGE_SUCCESS_26008", "CHALLENGE_FAIL_26009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26007(context, evt)
	if evt.param1 ~= 26007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_26008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015026, 2)
	
	-- 将configid为 26004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_26009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015026, 2)
	
	-- 将configid为 26004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26010(context, evt)
	if 26004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015026, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 5) then
		return -1
	end
	
	return 0
end

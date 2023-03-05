--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 20010801, pos = { x = 1373.7, y = 200.0, z = 873.1 }, rot = { x = 0.0, y = 343.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 41002, monster_id = 20010801, pos = { x = 1369.2, y = 200.0, z = 876.3 }, rot = { x = 0.0, y = 343.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 41003, monster_id = 20010801, pos = { x = 1364.4, y = 200.0, z = 880.5 }, rot = { x = 0.0, y = 343.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 41011, monster_id = 20010801, pos = { x = 1360.5, y = 200.0, z = 885.9 }, rot = { x = 0.0, y = 343.6, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 41012, monster_id = 20010801, pos = { x = 1355.0, y = 200.0, z = 892.6 }, rot = { x = 0.0, y = 343.6, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41004, gadget_id = 70900008, pos = { x = 1377.3, y = 200.0, z = 871.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 41005, gadget_id = 70360025, pos = { x = 1349.5, y = 200.0, z = 902.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 41006, gadget_id = 70900201, pos = { x = 1349.5, y = 200.0, z = 902.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 41007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1349.5, y = 200.0, z = 901.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_41007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41007", action = "", tag = "222", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_41008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "111", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_41008", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_41009", event = EventType.EVENT_CHALLENGE_FAIL, source = "111", condition = "", action = "action_EVENT_CHALLENGE_FAIL_41009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_41010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41010", action = "action_EVENT_GADGET_STATE_CHANGE_41010", trigger_count = 0 }
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
		gadgets = { 41004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_41010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 41001, 41002, 41003, 41011, 41012 },
		gadgets = { 41005, 41006 },
		regions = { 41007 },
		triggers = { "ENTER_REGION_41007", "CHALLENGE_SUCCESS_41008", "CHALLENGE_FAIL_41009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_41007(context, evt)
	if evt.param1 ~= 41007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_41008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016041, 2)
	
	-- 将configid为 41004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_41009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016041, 2)
	
	-- 将configid为 41004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41010(context, evt)
	if 41004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016041, 2)
	
	-- 创建编号为111（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 111, 189, 10, 4, 222, 2) then
		return -1
	end
	
	return 0
end

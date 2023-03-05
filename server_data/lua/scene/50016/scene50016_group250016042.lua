--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 20011201, pos = { x = 1492.3, y = 264.9, z = 751.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 42002, monster_id = 20011201, pos = { x = 1488.4, y = 264.4, z = 750.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 42003, monster_id = 20011201, pos = { x = 1489.7, y = 264.8, z = 755.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 42011, monster_id = 20011401, pos = { x = 1536.5, y = 267.1, z = 732.8 }, rot = { x = 0.0, y = 307.3, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 42012, monster_id = 20011401, pos = { x = 1535.7, y = 267.0, z = 731.9 }, rot = { x = 0.0, y = 307.3, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 42014, monster_id = 20011401, pos = { x = 1564.0, y = 272.3, z = 754.1 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 42015, monster_id = 20010501, pos = { x = 1564.5, y = 272.2, z = 752.8 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42004, gadget_id = 70900008, pos = { x = 1476.3, y = 263.6, z = 760.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42005, gadget_id = 70360025, pos = { x = 1578.2, y = 275.1, z = 738.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42006, gadget_id = 70900201, pos = { x = 1578.2, y = 275.1, z = 738.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42013, gadget_id = 70220005, pos = { x = 1536.5, y = 267.1, z = 732.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 42007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1578.2, y = 275.1, z = 738.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_42007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42007", action = "", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_42008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_42008", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_42009", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_42009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_42010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42010", action = "action_EVENT_GADGET_STATE_CHANGE_42010", trigger_count = 0 }
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
		gadgets = { 42004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_42010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 42001, 42002, 42003, 42011, 42012, 42014, 42015 },
		gadgets = { 42005, 42006, 42013 },
		regions = { 42007 },
		triggers = { "ENTER_REGION_42007", "CHALLENGE_SUCCESS_42008", "CHALLENGE_FAIL_42009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_42007(context, evt)
	if evt.param1 ~= 42007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_42008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016042, 2)
	
	-- 将configid为 42004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_42009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016042, 2)
	
	-- 将configid为 42004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42010(context, evt)
	if 42004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016042, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 2) then
		return -1
	end
	
	return 0
end

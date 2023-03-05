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
	{ config_id = 130001, gadget_id = 70900039, pos = { x = -16.3, y = 3.5, z = -358.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 130003, gadget_id = 70900201, pos = { x = -16.3, y = 3.5, z = -398.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 130007, gadget_id = 70900007, pos = { x = -9.9, y = 3.5, z = -382.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 130009, gadget_id = 70900007, pos = { x = -21.3, y = 3.5, z = -382.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 130004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -16.3, y = 3.5, z = -398.0 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_130002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130002", action = "action_EVENT_GADGET_STATE_CHANGE_130002" },
	{ name = "ENTER_REGION_130004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130004", action = "", tag = "666" },
	{ name = "CHALLENGE_SUCCESS_130005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "" },
	{ name = "CHALLENGE_FAIL_130006", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_130008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130008", action = "action_EVENT_GADGET_STATE_CHANGE_130008" },
	{ name = "GADGET_STATE_CHANGE_130010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130010", action = "action_EVENT_GADGET_STATE_CHANGE_130010" }
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
		gadgets = { 130001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_130002", "CHALLENGE_SUCCESS_130005", "CHALLENGE_FAIL_130006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 130003, 130007, 130009 },
		regions = { 130004 },
		triggers = { "ENTER_REGION_130004", "GADGET_STATE_CHANGE_130008", "GADGET_STATE_CHANGE_130010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130002(context, evt)
	if 130001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250008130, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为122的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 122, 60, 4, 666, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_130004(context, evt)
	if evt.param1 ~= 130004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130008(context, evt)
	if 130007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130008(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130010(context, evt)
	if 130009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130010(context, evt)
	-- 终止识别id为888的挑战，并判定成功
		ScriptLib.StopChallenge(context, 888, 1)
	
	return 0
end

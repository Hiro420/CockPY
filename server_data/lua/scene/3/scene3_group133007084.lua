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
	{ config_id = 320, gadget_id = 70211111, pos = { x = 2872.6, y = 225.3, z = 87.8 }, rot = { x = 0.0, y = 107.4, z = 0.0 }, level = 23, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 332, gadget_id = 70380002, pos = { x = 2863.6, y = 227.0, z = 87.4 }, rot = { x = 0.0, y = 34.1, z = 0.0 }, level = 23, route_id = 3007073 },
	{ config_id = 333, gadget_id = 70380002, pos = { x = 2872.7, y = 225.8, z = 75.0 }, rot = { x = 0.0, y = 132.3, z = 0.0 }, level = 23, route_id = 3007074 },
	{ config_id = 334, gadget_id = 70380002, pos = { x = 2888.2, y = 227.5, z = 83.8 }, rot = { x = 0.0, y = 17.2, z = 0.0 }, level = 23, route_id = 3007075 },
	{ config_id = 384, gadget_id = 70900007, pos = { x = 2877.3, y = 225.5, z = 85.8 }, rot = { x = 0.0, y = 187.1, z = 0.0 }, level = 23, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_35", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35", action = "action_EVENT_GADGET_STATE_CHANGE_35", tlog_tag = "风龙_84_射击挑战_开始" },
	{ name = "CHALLENGE_SUCCESS_36", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "84", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_36", tlog_tag = "风龙_84_射击挑战_成功" },
	{ name = "CHALLENGE_FAIL_37", event = EventType.EVENT_CHALLENGE_FAIL, source = "84", condition = "", action = "action_EVENT_CHALLENGE_FAIL_37", tlog_tag = "风龙_84_射击挑战_失败" },
	{ name = "ANY_GADGET_DIE_53", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 3, tag = "901" }
}

-- 变量
variables = {
	{ name = "target332", value = 0, no_refresh = false },
	{ name = "target333", value = 0, no_refresh = false },
	{ name = "target334", value = 0, no_refresh = false }
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
		gadgets = { 384 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_35", "CHALLENGE_SUCCESS_36", "CHALLENGE_FAIL_37", "ANY_GADGET_DIE_53" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 332, 333, 334, 384 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_35", "CHALLENGE_SUCCESS_36", "CHALLENGE_FAIL_37", "ANY_GADGET_DIE_53" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_35(context, evt)
	if 384 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35(context, evt)
	-- 创建编号为84（该挑战的识别id),挑战内容为150的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 84, 150, 50, 2, 901, 3) then
		return -1
	end
	
	-- 创建id为332的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 332 }) then
	  return -1
	end
	
	-- 创建id为333的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 333 }) then
	  return -1
	end
	
	-- 创建id为334的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_36(context, evt)
	-- 创建id为320的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 320 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_37(context, evt)
	-- 将configid为 384 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007084, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作

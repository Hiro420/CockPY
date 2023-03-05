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
	{ config_id = 42001, gadget_id = 70900007, pos = { x = -227.4, y = 408.6, z = 493.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42002, gadget_id = 70220005, pos = { x = -205.0, y = 414.6, z = 488.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42003, gadget_id = 70220005, pos = { x = -211.2, y = 414.6, z = 512.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42004, gadget_id = 70220005, pos = { x = -217.9, y = 408.6, z = 481.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42005, gadget_id = 70220005, pos = { x = -242.6, y = 409.5, z = 500.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42006, gadget_id = 70900201, pos = { x = -205.0, y = 414.6, z = 488.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42007, gadget_id = 70900201, pos = { x = -211.2, y = 414.6, z = 512.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42008, gadget_id = 70900201, pos = { x = -217.9, y = 408.6, z = 481.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42009, gadget_id = 70900201, pos = { x = -242.6, y = 409.5, z = 500.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 42013, gadget_id = 70211121, pos = { x = -219.7, y = 408.2, z = 482.3 }, rot = { x = 7.2, y = 344.7, z = 23.2 }, level = 18, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_42010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42010", action = "action_EVENT_GADGET_STATE_CHANGE_42010" },
	{ name = "CHALLENGE_SUCCESS_42011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "42", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_42011" },
	{ name = "CHALLENGE_FAIL_42012", event = EventType.EVENT_CHALLENGE_FAIL, source = "42", condition = "", action = "action_EVENT_CHALLENGE_FAIL_42012" },
	{ name = "ANY_GADGET_DIE_42014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_42014", action = "action_EVENT_ANY_GADGET_DIE_42014", trigger_count = 4, tag = "42" }
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
		gadgets = { 42001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_42010", "CHALLENGE_SUCCESS_42011", "CHALLENGE_FAIL_42012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 42002, 42003, 42004, 42005, 42006, 42007, 42008, 42009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_42014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42010(context, evt)
	if 42001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42010(context, evt)
	-- 创建编号为42（该挑战的识别id),挑战内容为201的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 42, 201, 60, 2, 42, 4) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107042, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_42011(context, evt)
	-- 创建id为42013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 42013 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_42012(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107042, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107042, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 42001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_42014(context, evt)
	if evt.param1 == 42002 or evt.param1 == 42003 or evt.param1 == 42004 or evt.param1 == 42005 then
		return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_42014(context, evt)
	local x = evt.param1 + 4
	ScriptLib.KillEntityByConfigId(context, { config_id = x })
	return 0
end

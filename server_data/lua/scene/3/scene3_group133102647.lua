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
	{ config_id = 647001, gadget_id = 70690006, pos = { x = 1734.1, y = 197.7, z = 583.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647002, gadget_id = 70690006, pos = { x = 1723.8, y = 205.6, z = 574.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647003, gadget_id = 70690006, pos = { x = 1694.6, y = 205.6, z = 574.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647004, gadget_id = 70690006, pos = { x = 1664.0, y = 205.6, z = 596.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647006, gadget_id = 70900007, pos = { x = 1734.6, y = 210.9, z = 597.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 647011, gadget_id = 70220005, pos = { x = 1734.1, y = 210.9, z = 583.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647012, gadget_id = 70220005, pos = { x = 1723.8, y = 218.8, z = 574.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647013, gadget_id = 70220005, pos = { x = 1694.6, y = 218.8, z = 574.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647014, gadget_id = 70220005, pos = { x = 1664.0, y = 218.8, z = 596.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647015, gadget_id = 70220005, pos = { x = 1657.3, y = 218.8, z = 634.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647016, gadget_id = 70900201, pos = { x = 1734.1, y = 211.8, z = 583.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647017, gadget_id = 70900201, pos = { x = 1723.8, y = 219.9, z = 574.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647018, gadget_id = 70900201, pos = { x = 1694.6, y = 219.9, z = 574.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647019, gadget_id = 70900201, pos = { x = 1664.0, y = 219.9, z = 596.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647020, gadget_id = 70900201, pos = { x = 1657.3, y = 219.9, z = 634.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 647021, gadget_id = 70211121, pos = { x = 1657.3, y = 219.0, z = 635.0 }, rot = { x = 0.0, y = 172.0, z = 0.0 }, level = 18, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_647007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_647007", action = "action_EVENT_GADGET_STATE_CHANGE_647007" },
	{ name = "CHALLENGE_FAIL_647008", event = EventType.EVENT_CHALLENGE_FAIL, source = "647", condition = "", action = "action_EVENT_CHALLENGE_FAIL_647008" },
	{ name = "CHALLENGE_SUCCESS_647009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "647", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_647009" },
	{ name = "ANY_GADGET_DIE_647010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_647010", action = "action_EVENT_ANY_GADGET_DIE_647010", trigger_count = 5, tag = "647" }
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
		gadgets = { 647006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_647007", "CHALLENGE_FAIL_647008", "CHALLENGE_SUCCESS_647009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 647001, 647002, 647003, 647004, 647011, 647012, 647013, 647014, 647015, 647016, 647017, 647018, 647019, 647020 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_647010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_647007(context, evt)
	if 647006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_647007(context, evt)
	-- 创建编号为647（该挑战的识别id),挑战内容为200的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 647, 200, 60, 2, 647, 5) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102647, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_647008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102647, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102647, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 647006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647006, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_647009(context, evt)
	-- 创建id为647021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 647021 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_647010(context, evt)
	if evt.param1 == 647011 or evt.param1 == 647012 or evt.param1 == 647013 or evt.param1 == 647014 or evt.param1 == 647015 then
		return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_647010(context, evt)
	local x = evt.param1 + 5
	ScriptLib.KillEntityByConfigId(context, { config_id = x })
	return 0
end

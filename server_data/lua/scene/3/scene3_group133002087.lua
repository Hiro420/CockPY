-- Trigger变量
local defs = {
	gadget_id_1 = 1053,
	gadget_id_2 = 1054,
	gadget_id_3 = 1055
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203, monster_id = 21010101, pos = { x = 1886.1, y = 226.8, z = -417.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_id = 1000100, disableWander = true, pose_id = 9002 },
	{ config_id = 204, monster_id = 21010101, pos = { x = 1887.6, y = 229.4, z = -416.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_id = 1000100, disableWander = true, pose_id = 9002 },
	{ config_id = 205, monster_id = 21010101, pos = { x = 1888.8, y = 228.6, z = -415.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_id = 1000100, disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1053, gadget_id = 70300013, pos = { x = 1883.4, y = 262.9, z = -533.0 }, rot = { x = 0.0, y = 27.8, z = 0.0 }, level = 10 },
	{ config_id = 1054, gadget_id = 70300013, pos = { x = 1840.7, y = 256.3, z = -565.3 }, rot = { x = 0.0, y = 327.2, z = 0.0 }, level = 10 },
	{ config_id = 1055, gadget_id = 70300013, pos = { x = 1849.6, y = 247.3, z = -511.3 }, rot = { x = 0.0, y = 324.0, z = 0.0 }, level = 10 },
	{ config_id = 1057, gadget_id = 70900201, pos = { x = 1849.6, y = 248.7, z = -511.2 }, rot = { x = 0.0, y = 209.6, z = 0.0 }, level = 10 },
	{ config_id = 1058, gadget_id = 70900201, pos = { x = 1840.6, y = 257.6, z = -565.4 }, rot = { x = 0.0, y = 110.7, z = 0.0 }, level = 10 },
	{ config_id = 1059, gadget_id = 70900201, pos = { x = 1883.5, y = 264.2, z = -533.0 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_242", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_242", action = "action_EVENT_GADGET_CREATE_242", trigger_count = 0, tlog_tag = "酒庄_87_酒庄射击挑战_开始" },
	{ name = "CHALLENGE_SUCCESS_243", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "133002087", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_243", tlog_tag = "酒庄_87_酒庄射击挑战_成功" },
	{ name = "CHALLENGE_FAIL_244", event = EventType.EVENT_CHALLENGE_FAIL, source = "133002087", condition = "", action = "action_EVENT_CHALLENGE_FAIL_244", tlog_tag = "酒庄_87_酒庄射击挑战_失败" },
	{ name = "ANY_GADGET_DIE_245", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_245", action = "", trigger_count = 0, tag = "87" },
	{ name = "ANY_GADGET_DIE_246", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_246", action = "action_EVENT_ANY_GADGET_DIE_246" },
	{ name = "ANY_GADGET_DIE_247", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_247", action = "action_EVENT_ANY_GADGET_DIE_247" },
	{ name = "ANY_GADGET_DIE_248", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_248", action = "action_EVENT_ANY_GADGET_DIE_248" }
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
	suite = 2,
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
		gadgets = { 1053, 1054, 1055, 1057, 1058, 1059 },
		regions = { },
		triggers = { "GADGET_CREATE_242", "CHALLENGE_SUCCESS_243", "CHALLENGE_FAIL_244", "ANY_GADGET_DIE_245", "ANY_GADGET_DIE_246", "ANY_GADGET_DIE_247", "ANY_GADGET_DIE_248" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_GADGET_CREATE_242(context, evt)
	if 1053 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_242(context, evt)
	-- 创建编号为133002087（该挑战的识别id),挑战内容为111的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 133002087, 111, 30, 2, 87, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_243(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002221, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_244(context, evt)
	-- 改变指定group组133002220中， configid为1773的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133002220, 1773, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002087, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_245(context, evt)
	if defs.gadget_id_1 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_2 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_3 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_246(context, evt)
	if 1053 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_246(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002087, monsters = {}, gadgets = {1059} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_247(context, evt)
	if 1054 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_247(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002087, monsters = {}, gadgets = {1058} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_248(context, evt)
	if 1055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_248(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002087, monsters = {}, gadgets = {1057} }) then
			return -1
		end
	
	return 0
end

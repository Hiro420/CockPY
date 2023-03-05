--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010301, pos = { x = 202.2, y = 57.0, z = 390.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2, monster_id = 21010301, pos = { x = 180.8, y = 57.0, z = 391.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 3, monster_id = 21010301, pos = { x = 205.4, y = 57.0, z = 379.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4, monster_id = 21010301, pos = { x = 178.1, y = 57.0, z = 379.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5, monster_id = 21010301, pos = { x = 191.7, y = 57.0, z = 389.7 }, rot = { x = 0.0, y = 179.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 126, gadget_id = 70360001, pos = { x = 177.5, y = 57.0, z = 396.6 }, rot = { x = 0.0, y = 254.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_46", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_46", action = "action_EVENT_ANY_MONSTER_LIVE_46" },
	{ name = "CHALLENGE_SUCCESS_47", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_47" },
	{ name = "CHALLENGE_FAIL_48", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_48" }
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
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_46", "CHALLENGE_SUCCESS_47", "CHALLENGE_FAIL_48" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1, 2, 3, 4, 5 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_46", "CHALLENGE_SUCCESS_47", "CHALLENGE_FAIL_48" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_46(context, evt)
	if 2005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_46(context, evt)
	-- 创建编号为501（该挑战的识别id),挑战内容为146的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 501, 146, 90, 220014005, 5, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_47(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220014002, 2036, {11})  then
		return -1
	end
	
	if 0 ~= ScriptLib.ShowReminder(context, 10060501) then
		return -1
	end
	
	-- 触发镜头注目
		local pos = {x=191, y=57, z=377}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_48(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014005, suite = 1 }) then
	ScriptLib.SetWorktopOptionsByGroupId(context, 220014002, 2036, {10})
			return -1
		end
	
	return 0
end

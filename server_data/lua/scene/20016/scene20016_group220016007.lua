--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 20011301, pos = { x = 342.6, y = -28.9, z = 424.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1002, 1003, 1004 }, isElite = true },
	{ config_id = 7, monster_id = 20011201, pos = { x = 348.3, y = -29.1, z = 428.5 }, rot = { x = 0.0, y = 341.9, z = 0.0 }, level = 1 },
	{ config_id = 8, monster_id = 20011201, pos = { x = 338.2, y = -29.0, z = 427.8 }, rot = { x = 0.0, y = 24.6, z = 0.0 }, level = 1 },
	{ config_id = 11, monster_id = 20011201, pos = { x = 344.9, y = -29.0, z = 426.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1001 }, isElite = true },
	{ config_id = 12, monster_id = 20011201, pos = { x = 342.8, y = -29.0, z = 426.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1001 }, isElite = true },
	{ config_id = 13, monster_id = 20011201, pos = { x = 336.4, y = -29.0, z = 427.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_2", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2" },
	{ name = "CHALLENGE_FAIL_3", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3" },
	{ name = "ANY_MONSTER_LIVE_7001", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7001", action = "action_EVENT_ANY_MONSTER_LIVE_7001" }
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
		monsters = { 6, 7, 8, 11, 12, 13 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2", "CHALLENGE_FAIL_3", "ANY_MONSTER_LIVE_7001" },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2(context, evt)
	-- 改变指定group组220016002中， configid为6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 6, GadgetState.GearStart) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（343，-25，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=343, y=-25, z=404}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3(context, evt)
	-- 改变指定group组220016002中， configid为20的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 20, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220016002中， configid为21的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 21, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220016007, suite = 2 }) then
			return -1
		end
	
	-- 改变指定group组220016002中， configid为43的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 43, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220016002, 43, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7001(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7001(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为186的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 186, 60, 220016007, 6, 0) then
		return -1
	end
	
	return 0
end

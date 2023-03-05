--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14, monster_id = 21010201, pos = { x = -151.5, y = 18.0, z = 41.1 }, rot = { x = 0.0, y = 36.4, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 15, monster_id = 21010201, pos = { x = -142.6, y = 17.9, z = 41.3 }, rot = { x = 0.0, y = 319.8, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 16, monster_id = 21010201, pos = { x = -147.2, y = 18.0, z = 42.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_21", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21", action = "action_EVENT_ANY_MONSTER_DIE_21" }
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
		monsters = { 14, 15, 16 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240010005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240010007, suite = 1 }) then
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（-147，21，36），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-147, y=21, z=36}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

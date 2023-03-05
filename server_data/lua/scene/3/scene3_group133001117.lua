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
}

-- 区域
regions = {
	{ config_id = 207, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1467.1, y = 309.8, z = -2055.7 } }
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_158", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_158", action = "action_EVENT_VARIABLE_CHANGE_158" },
	{ name = "ENTER_REGION_207", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_207", action = "action_EVENT_ENTER_REGION_207" }
}

-- 变量
variables = {
	{ name = "key", value = 0, no_refresh = true }
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
	rand_suite = true
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
		regions = { 207 },
		triggers = { "VARIABLE_CHANGE_158", "ENTER_REGION_207" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_158(context, evt)
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_158(context, evt)
	-- 解锁目标37
	if 0 ~= ScriptLib.UnlockForce(context, 37) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1542，333，-2080），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1542, y=333, z=-2080}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_207(context, evt)
	if evt.param1 ~= 207 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_207(context, evt)
	-- 触发镜头注目，注目位置为坐标（1558，376，-2085），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1558, y=376, z=-2085}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

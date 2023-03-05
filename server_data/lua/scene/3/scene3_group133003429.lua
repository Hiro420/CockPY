--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1430, monster_id = 20011001, pos = { x = 2701.0, y = 194.5, z = -1663.2 }, rot = { x = 0.0, y = 163.1, z = 0.0 }, level = 2, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 429001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2680.6, y = 197.2, z = -1637.9 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_520", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_520", action = "action_EVENT_ANY_MONSTER_DIE_520" },
	{ name = "TIMER_EVENT_527", event = EventType.EVENT_TIMER_EVENT, source = "camera", condition = "condition_EVENT_TIMER_EVENT_527", action = "action_EVENT_TIMER_EVENT_527" },
	{ name = "ENTER_REGION_429001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_429001", action = "action_EVENT_ENTER_REGION_429001" }
}

-- 变量
variables = {
	{ name = "isoff", value = 0, no_refresh = false }
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
		monsters = { 1430 },
		gadgets = { },
		regions = { 429001 },
		triggers = { "ANY_MONSTER_DIE_520", "TIMER_EVENT_527", "ENTER_REGION_429001" },
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
function condition_EVENT_ANY_MONSTER_DIE_520(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_520(context, evt)
	-- 延迟1.5秒后,向groupId为：133003429的对象,请求一次调用,并将string参数："camera" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003429, "camera", 1.5) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_527(context, evt)
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_527(context, evt)
	-- 触发镜头注目，注目位置为坐标（2679，199，-1636），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2679, y=199, z=-1636}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_429001(context, evt)
	if evt.param1 ~= 429001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_429001(context, evt)
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  return -1
	end
	
	return 0
end

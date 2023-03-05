--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 779, monster_id = 20011001, pos = { x = 1839.9, y = 226.3, z = -1103.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" },
	{ config_id = 780, monster_id = 20011001, pos = { x = 1840.3, y = 226.5, z = -1107.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" },
	{ config_id = 781, monster_id = 20011001, pos = { x = 1836.4, y = 226.6, z = -1101.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" },
	{ config_id = 1076, monster_id = 20011101, pos = { x = 1834.8, y = 225.8, z = -1099.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 190, shape = RegionShape.SPHERE, radius = 27.7, pos = { x = 1999.8, y = 197.3, z = -1281.6 } },
	{ config_id = 191, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 2004.9, y = 199.9, z = -1214.7 } },
	{ config_id = 262, shape = RegionShape.SPHERE, radius = 46.3, pos = { x = 1925.7, y = 197.2, z = -1391.1 } },
	{ config_id = 324, shape = RegionShape.SPHERE, radius = 23.1, pos = { x = 1954.8, y = 193.7, z = -1220.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_190", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190", action = "action_EVENT_ENTER_REGION_190", trigger_count = 0 },
	{ name = "ENTER_REGION_191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191", action = "action_EVENT_ENTER_REGION_191", trigger_count = 0 },
	{ name = "ENTER_REGION_262", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262", action = "action_EVENT_ENTER_REGION_262" },
	{ name = "ENTER_REGION_324", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_324", action = "action_EVENT_ENTER_REGION_324", trigger_count = 0 },
	{ name = "TIMER_EVENT_325", event = EventType.EVENT_TIMER_EVENT, source = "s_unlock", condition = "", action = "action_EVENT_TIMER_EVENT_325", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "lock", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { 190, 191, 324 },
		triggers = { "ENTER_REGION_190", "ENTER_REGION_191", "ENTER_REGION_324", "TIMER_EVENT_325" },
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
function condition_EVENT_ENTER_REGION_190(context, evt)
	if evt.param1 ~= 190 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{780,781}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {780,781}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	-- 将本组内变量名为 "lock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 1) then
	  return -1
	end
	
	-- 延迟90秒后,向groupId为：133001152的对象,请求一次调用,并将string参数："s_unlock" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001152, "s_unlock", 90) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_191(context, evt)
	if evt.param1 ~= 191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{781,779}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {781,779}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	-- 将本组内变量名为 "lock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 1) then
	  return -1
	end
	
	-- 延迟90秒后,向groupId为：133001152的对象,请求一次调用,并将string参数："s_unlock" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001152, "s_unlock", 90) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262(context, evt)
	if evt.param1 ~= 262 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{781,779,780,1076}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {781,779,780,1076}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_324(context, evt)
	if evt.param1 ~= 324 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_324(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{780,781}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {780,781}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	-- 将本组内变量名为 "lock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 1) then
	  return -1
	end
	
	-- 延迟90秒后,向groupId为：133001152的对象,请求一次调用,并将string参数："s_unlock" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001152, "s_unlock", 90) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_325(context, evt)
	-- 将本组内变量名为 "lock" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 0) then
	  return -1
	end
	
	return 0
end

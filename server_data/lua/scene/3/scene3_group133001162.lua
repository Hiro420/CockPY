--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 818, monster_id = 20010501, pos = { x = 1839.4, y = 225.7, z = -1103.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" },
	{ config_id = 819, monster_id = 20010601, pos = { x = 1839.7, y = 225.9, z = -1108.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" },
	{ config_id = 820, monster_id = 20010501, pos = { x = 1835.9, y = 225.8, z = -1101.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 192, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1854.7, y = 228.9, z = -1104.1 } },
	{ config_id = 194, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1999.2, y = 197.2, z = -1281.9 } },
	{ config_id = 195, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 2051.6, y = 199.9, z = -1207.7 } },
	{ config_id = 235, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1600.4, y = 288.2, z = -1166.7 } },
	{ config_id = 236, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1599.4, y = 288.1, z = -1221.9 } },
	{ config_id = 237, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1469.6, y = 295.3, z = -1219.0 } },
	{ config_id = 238, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1490.0, y = 303.4, z = -1158.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_192", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_192", action = "action_EVENT_ENTER_REGION_192" },
	{ name = "ENTER_REGION_194", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_194", action = "action_EVENT_ENTER_REGION_194" },
	{ name = "ENTER_REGION_195", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_195", action = "action_EVENT_ENTER_REGION_195" },
	{ name = "ENTER_REGION_235", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_235", action = "action_EVENT_ENTER_REGION_235" },
	{ name = "ENTER_REGION_236", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236", action = "action_EVENT_ENTER_REGION_236" },
	{ name = "ENTER_REGION_237", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_237", action = "action_EVENT_ENTER_REGION_237" },
	{ name = "ENTER_REGION_238", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_238", action = "action_EVENT_ENTER_REGION_238" }
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
		gadgets = { },
		regions = { 192, 194, 195, 235, 236, 237, 238 },
		triggers = { "ENTER_REGION_192", "ENTER_REGION_194", "ENTER_REGION_195", "ENTER_REGION_235", "ENTER_REGION_236", "ENTER_REGION_237", "ENTER_REGION_238" },
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
function condition_EVENT_ENTER_REGION_192(context, evt)
	if evt.param1 ~= 192 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_192(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{819,818}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {819,818}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_194(context, evt)
	if evt.param1 ~= 194 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_194(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{819,820,818}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {819,820,818}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_195(context, evt)
	if evt.param1 ~= 195 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_195(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{818,820}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {818,820}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_235(context, evt)
	if evt.param1 ~= 235 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_235(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{818,820,819}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {818,820,819}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_236(context, evt)
	if evt.param1 ~= 236 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_236(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{818,820,819}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {818,820,819}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_237(context, evt)
	if evt.param1 ~= 237 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_237(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{818,820,819}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {818,820,819}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_238(context, evt)
	if evt.param1 ~= 238 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_238(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{818,820,819}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {818,820,819}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

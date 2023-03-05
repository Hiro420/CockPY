--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335004, monster_id = 25030201, pos = { x = 945.9, y = 356.9, z = 1475.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 335005, monster_id = 25020201, pos = { x = 943.6, y = 357.1, z = 1477.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 335001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 943.9, y = 357.4, z = 1474.7 } },
	{ config_id = 335002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 730.0, y = 316.0, z = 1512.8 } },
	{ config_id = 335003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 799.4, y = 331.9, z = 1833.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_335001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335001", action = "action_EVENT_ENTER_REGION_335001" },
	{ name = "ENTER_REGION_335002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335002", action = "action_EVENT_ENTER_REGION_335002" },
	{ name = "ENTER_REGION_335003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335003", action = "action_EVENT_ENTER_REGION_335003" }
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
		gadgets = { },
		regions = { 335001, 335002, 335003 },
		triggers = { "ENTER_REGION_335001", "ENTER_REGION_335002", "ENTER_REGION_335003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 335004, 335005 },
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
function condition_EVENT_ENTER_REGION_335001(context, evt)
	if evt.param1 ~= 335001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335001(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103335, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{335004,335005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {335004,335005}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335002(context, evt)
	if evt.param1 ~= 335002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103335, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{335004,335005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {335004,335005}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335003(context, evt)
	if evt.param1 ~= 335003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335003(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103335, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{335004,335005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {335004,335005}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

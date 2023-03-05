--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271, monster_id = 20010301, pos = { x = 2973.7, y = 209.3, z = 140.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 272, monster_id = 20010301, pos = { x = 2972.3, y = 209.2, z = 138.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 273, monster_id = 20010301, pos = { x = 2974.6, y = 209.0, z = 138.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 193, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2970.0, y = 207.1, z = 92.1 } },
	{ config_id = 195, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2814.7, y = 208.8, z = 186.4 } },
	{ config_id = 196, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2792.3, y = 207.6, z = 337.6 } },
	{ config_id = 197, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2738.4, y = 227.0, z = 486.4 } },
	{ config_id = 198, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2514.3, y = 182.9, z = 339.0 } },
	{ config_id = 199, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2437.7, y = 222.5, z = 395.3 } },
	{ config_id = 200, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2413.5, y = 208.1, z = 106.9 } },
	{ config_id = 205, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2564.6, y = 208.0, z = -55.0 } },
	{ config_id = 206, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2669.7, y = 208.7, z = -66.1 } },
	{ config_id = 207, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2618.4, y = 213.0, z = -177.3 } },
	{ config_id = 208, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2743.3, y = 206.8, z = 7.0 } },
	{ config_id = 209, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2876.5, y = 207.2, z = -5.3 } },
	{ config_id = 238, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2697.9, y = 190.0, z = 412.4 } },
	{ config_id = 239, shape = RegionShape.SPHERE, radius = 13, pos = { x = 2558.6, y = 216.3, z = 447.9 } },
	{ config_id = 241, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2905.3, y = 208.3, z = 203.5 } },
	{ config_id = 242, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2524.2, y = 245.1, z = 500.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_193", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193", action = "action_EVENT_ENTER_REGION_193", tlog_tag = "风龙_185_伏击组1_触发" },
	{ name = "ENTER_REGION_195", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_195", action = "action_EVENT_ENTER_REGION_195", tlog_tag = "风龙_185_伏击组2_触发" },
	{ name = "ENTER_REGION_196", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196", action = "action_EVENT_ENTER_REGION_196", tlog_tag = "风龙_185_伏击组3_触发" },
	{ name = "ENTER_REGION_197", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_197", action = "action_EVENT_ENTER_REGION_197", tlog_tag = "风龙_185_伏击组4_触发" },
	{ name = "ENTER_REGION_198", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_198", action = "action_EVENT_ENTER_REGION_198", tlog_tag = "风龙_185_伏击组5_触发" },
	{ name = "ENTER_REGION_199", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_199", action = "action_EVENT_ENTER_REGION_199", tlog_tag = "风龙_185_伏击组6_触发" },
	{ name = "ENTER_REGION_200", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_200", action = "action_EVENT_ENTER_REGION_200", tlog_tag = "风龙_185_伏击组7_触发" },
	{ name = "ENTER_REGION_205", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_205", action = "action_EVENT_ENTER_REGION_205", tlog_tag = "风龙_185_伏击组7_触发" },
	{ name = "ENTER_REGION_206", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206", action = "action_EVENT_ENTER_REGION_206", tlog_tag = "风龙_185_伏击组8_触发" },
	{ name = "ENTER_REGION_207", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_207", action = "action_EVENT_ENTER_REGION_207", tlog_tag = "风龙_185_伏击组9_触发" },
	{ name = "ENTER_REGION_208", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_208", action = "action_EVENT_ENTER_REGION_208", tlog_tag = "风龙_185_伏击组10_触发" },
	{ name = "ENTER_REGION_209", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209", action = "action_EVENT_ENTER_REGION_209", tlog_tag = "风龙_185_伏击组11_触发" },
	{ name = "ENTER_REGION_238", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_238", action = "action_EVENT_ENTER_REGION_238" },
	{ name = "ENTER_REGION_239", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_239", action = "action_EVENT_ENTER_REGION_239" },
	{ name = "ENTER_REGION_241", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_241", action = "action_EVENT_ENTER_REGION_241", tlog_tag = "风龙_185_伏击组12_触发" },
	{ name = "ENTER_REGION_242", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_242", action = "action_EVENT_ENTER_REGION_242", tlog_tag = "风龙_185_伏击组13_触发" }
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
		regions = { 193, 195, 196, 197, 198, 199, 200, 205, 206, 207, 208, 209, 238, 239, 241, 242 },
		triggers = { "ENTER_REGION_193", "ENTER_REGION_195", "ENTER_REGION_196", "ENTER_REGION_197", "ENTER_REGION_198", "ENTER_REGION_199", "ENTER_REGION_200", "ENTER_REGION_205", "ENTER_REGION_206", "ENTER_REGION_207", "ENTER_REGION_208", "ENTER_REGION_209", "ENTER_REGION_238", "ENTER_REGION_239", "ENTER_REGION_241", "ENTER_REGION_242" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_193(context, evt)
	if evt.param1 ~= 193 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
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
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_196(context, evt)
	if evt.param1 ~= 196 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_196(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_197(context, evt)
	if evt.param1 ~= 197 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_197(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_198(context, evt)
	if evt.param1 ~= 198 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_198(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_199(context, evt)
	if evt.param1 ~= 199 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_200(context, evt)
	if evt.param1 ~= 200 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_200(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_205(context, evt)
	if evt.param1 ~= 205 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_205(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_206(context, evt)
	if evt.param1 ~= 206 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
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
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_208(context, evt)
	if evt.param1 ~= 208 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_208(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_209(context, evt)
	if evt.param1 ~= 209 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
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
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_239(context, evt)
	if evt.param1 ~= 239 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_239(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_241(context, evt)
	if evt.param1 ~= 241 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_241(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_242(context, evt)
	if evt.param1 ~= 242 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_242(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007185, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{271,272,273}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {271,272,273}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

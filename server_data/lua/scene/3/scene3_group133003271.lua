--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 918, monster_id = 28030101, pos = { x = 2652.2, y = 266.7, z = -1335.0 }, rot = { x = 0.0, y = 298.1, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 919, monster_id = 28030101, pos = { x = 2710.1, y = 261.7, z = -1367.6 }, rot = { x = 0.0, y = 97.3, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 923, monster_id = 20010501, pos = { x = 2678.9, y = 262.5, z = -1418.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 924, monster_id = 20010501, pos = { x = 2677.5, y = 262.5, z = -1417.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 925, monster_id = 20010501, pos = { x = 2676.0, y = 262.3, z = -1418.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70211101, pos = { x = 2690.5, y = 262.9, z = -1407.9 }, rot = { x = 0.4, y = 336.2, z = 354.5 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 185, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2677.1, y = 262.4, z = -1419.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_185", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185", action = "action_EVENT_ENTER_REGION_185" }
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
		monsters = { 918, 919 },
		gadgets = { 3015 },
		regions = { 185 },
		triggers = { "ENTER_REGION_185" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_185(context, evt)
	if evt.param1 ~= 185 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 923, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 924, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 925, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

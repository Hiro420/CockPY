--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187, monster_id = 20011001, pos = { x = 2119.2, y = 211.6, z = -31.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 188, monster_id = 20011001, pos = { x = 2112.7, y = 210.6, z = -36.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411, gadget_id = 70500000, pos = { x = 2117.5, y = 211.3, z = -35.0 }, rot = { x = 0.0, y = 213.8, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 412, gadget_id = 70500000, pos = { x = 2115.9, y = 211.5, z = -32.0 }, rot = { x = 0.0, y = 79.9, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 413, gadget_id = 70500000, pos = { x = 2113.3, y = 210.9, z = -34.8 }, rot = { x = 0.0, y = 246.4, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 637, gadget_id = 70211101, pos = { x = 2115.5, y = 211.3, z = -34.0 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 58, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2115.7, y = 210.2, z = -32.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_58", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58", action = "action_EVENT_ENTER_REGION_58", tlog_tag = "风龙_115_伏击_触发" },
	{ name = "ANY_MONSTER_DIE_144", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144", action = "action_EVENT_ANY_MONSTER_DIE_144", tlog_tag = "风龙_115_小灯草宝箱_触发" }
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
		gadgets = { 411, 412, 413 },
		regions = { 58 },
		triggers = { "ENTER_REGION_58", "ANY_MONSTER_DIE_144" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_58(context, evt)
	if evt.param1 ~= 58 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 187, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 188, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144(context, evt)
	-- 创建id为637的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 637 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 241, monster_id = 28030101, pos = { x = 1928.4, y = 255.9, z = -845.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 242, monster_id = 28030101, pos = { x = 1930.6, y = 256.5, z = -839.3 }, rot = { x = 0.0, y = 180.6, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 243, monster_id = 28030101, pos = { x = 1931.6, y = 256.6, z = -841.4 }, rot = { x = 0.0, y = 290.1, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 244, monster_id = 20011201, pos = { x = 1933.7, y = 257.0, z = -843.0 }, rot = { x = 0.0, y = 295.4, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 245, monster_id = 20011201, pos = { x = 1930.0, y = 256.4, z = -838.4 }, rot = { x = 0.0, y = 179.8, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 246, monster_id = 20011201, pos = { x = 1929.6, y = 256.1, z = -844.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 896, gadget_id = 70500000, pos = { x = 1931.6, y = 264.0, z = -840.2 }, rot = { x = 0.0, y = 137.8, z = 0.0 }, level = 10, point_type = 4001001, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 121, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1929.9, y = 256.4, z = -841.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_121", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121", action = "action_EVENT_ENTER_REGION_121" }
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
		monsters = { 241, 242, 243 },
		gadgets = { 896 },
		regions = { 121 },
		triggers = { "ENTER_REGION_121" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_121(context, evt)
	if evt.param1 ~= 121 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 244, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 245, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 246, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

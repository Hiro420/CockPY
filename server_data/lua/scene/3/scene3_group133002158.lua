--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 466, monster_id = 28010201, pos = { x = 1672.2, y = 262.9, z = -846.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 467, monster_id = 28030101, pos = { x = 1619.5, y = 267.3, z = -756.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 468, monster_id = 28010201, pos = { x = 1668.7, y = 267.1, z = -786.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 469, monster_id = 28010201, pos = { x = 1634.7, y = 269.6, z = -820.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 470, monster_id = 28010201, pos = { x = 1720.2, y = 272.0, z = -882.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 472, monster_id = 28010201, pos = { x = 1816.1, y = 203.5, z = -308.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 474, monster_id = 20010301, pos = { x = 1865.3, y = 241.9, z = -794.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 475, monster_id = 20010301, pos = { x = 1861.9, y = 242.5, z = -786.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 160, shape = RegionShape.SPHERE, radius = 1.7, pos = { x = 1863.7, y = 237.8, z = -791.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_160", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160", action = "action_EVENT_ENTER_REGION_160" }
}

-- 变量
variables = {
	{ name = "door1", value = 0, no_refresh = false },
	{ name = "door2", value = 0, no_refresh = false }
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
		monsters = { 466, 467, 468, 469, 470, 472 },
		gadgets = { },
		regions = { 160 },
		triggers = { "ENTER_REGION_160" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_160(context, evt)
	if evt.param1 ~= 160 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 474, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 475, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

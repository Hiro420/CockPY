--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11, monster_id = 20011101, pos = { x = 731.5, y = 200.4, z = -22.2 }, rot = { x = 0.0, y = 80.6, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 12, monster_id = 20011101, pos = { x = 730.8, y = 200.7, z = -27.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 13, monster_id = 20011001, pos = { x = 733.7, y = 200.4, z = -23.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 14, monster_id = 20011001, pos = { x = 733.0, y = 200.5, z = -26.1 }, rot = { x = 0.0, y = 44.8, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 15, monster_id = 20011001, pos = { x = 730.1, y = 200.5, z = -24.2 }, rot = { x = 0.0, y = 120.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.SPHERE, radius = 5, pos = { x = 732.6, y = 200.4, z = -22.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5" }
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
		monsters = { 13, 14, 15 },
		gadgets = { },
		regions = { 5 },
		triggers = { "ENTER_REGION_5" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

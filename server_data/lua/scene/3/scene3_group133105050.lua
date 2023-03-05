--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124, monster_id = 20011101, pos = { x = 214.2, y = 200.3, z = -123.6 }, rot = { x = 0.0, y = 80.6, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 125, monster_id = 20011101, pos = { x = 213.5, y = 200.1, z = -128.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 126, monster_id = 20011001, pos = { x = 216.4, y = 200.4, z = -124.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 127, monster_id = 20011001, pos = { x = 215.7, y = 200.3, z = -127.4 }, rot = { x = 0.0, y = 44.8, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 128, monster_id = 20011001, pos = { x = 212.8, y = 200.2, z = -125.6 }, rot = { x = 0.0, y = 120.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 66, shape = RegionShape.SPHERE, radius = 5, pos = { x = 215.2, y = 200.6, z = -124.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_66" }
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
		monsters = { 126, 127, 128 },
		gadgets = { },
		regions = { 66 },
		triggers = { "ENTER_REGION_66" },
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
function action_EVENT_ENTER_REGION_66(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 125, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

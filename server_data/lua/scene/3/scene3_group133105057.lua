--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135, monster_id = 20011101, pos = { x = 558.8, y = 200.8, z = -170.6 }, rot = { x = 0.0, y = 339.4, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 136, monster_id = 20011101, pos = { x = 564.2, y = 201.4, z = -170.3 }, rot = { x = 0.0, y = 258.9, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 137, monster_id = 20011001, pos = { x = 562.9, y = 201.6, z = -172.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 138, monster_id = 20011001, pos = { x = 562.2, y = 201.7, z = -175.4 }, rot = { x = 0.0, y = 44.8, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 139, monster_id = 20011001, pos = { x = 559.3, y = 201.0, z = -173.6 }, rot = { x = 0.0, y = 120.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 112, gadget_id = 70290008, pos = { x = 561.0, y = 201.3, z = -173.8 }, rot = { x = 5.3, y = 0.5, z = 10.6 }, level = 19 },
	{ config_id = 113, gadget_id = 70500000, pos = { x = 561.0, y = 201.3, z = -173.8 }, rot = { x = 5.3, y = 0.5, z = 10.6 }, level = 19, point_type = 3008, owner = 112 }
}

-- 区域
regions = {
	{ config_id = 76, shape = RegionShape.SPHERE, radius = 5, pos = { x = 561.8, y = 201.6, z = -172.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_76", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_76" }
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
		gadgets = { 112, 113 },
		regions = { 76 },
		triggers = { "ENTER_REGION_76" },
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
function action_EVENT_ENTER_REGION_76(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 137, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 138, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 135, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 136, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

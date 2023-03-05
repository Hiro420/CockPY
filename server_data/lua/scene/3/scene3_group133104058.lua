--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121, monster_id = 20010801, pos = { x = 645.2, y = 200.0, z = 569.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 122, monster_id = 20010801, pos = { x = 646.1, y = 200.0, z = 564.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 123, monster_id = 20010801, pos = { x = 652.1, y = 200.0, z = 569.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 124, monster_id = 20010901, pos = { x = 648.5, y = 200.0, z = 566.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 96, shape = RegionShape.SPHERE, radius = 10, pos = { x = 649.3, y = 200.0, z = 568.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_96", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_96" }
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
		regions = { 96 },
		triggers = { "ENTER_REGION_96" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_96(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 121, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 122, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 123, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

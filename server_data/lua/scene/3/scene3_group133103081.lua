--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72, monster_id = 20011201, pos = { x = 810.6, y = 333.6, z = 1848.0 }, rot = { x = 315.4, y = 288.3, z = 350.9 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 73, monster_id = 20011201, pos = { x = 807.1, y = 334.9, z = 1849.2 }, rot = { x = 305.9, y = 293.7, z = 342.1 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 74, monster_id = 20011301, pos = { x = 808.7, y = 334.1, z = 1846.8 }, rot = { x = 353.7, y = 284.3, z = 4.4 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 255, gadget_id = 70290009, pos = { x = 807.2, y = 334.6, z = 1852.4 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 24 },
	{ config_id = 256, gadget_id = 70500000, pos = { x = 807.2, y = 334.6, z = 1852.4 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 24, point_type = 3005, owner = 255 },
	{ config_id = 257, gadget_id = 70290009, pos = { x = 808.9, y = 334.0, z = 1850.5 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 24 },
	{ config_id = 258, gadget_id = 70500000, pos = { x = 808.9, y = 334.0, z = 1850.5 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 24, point_type = 3005, owner = 257 }
}

-- 区域
regions = {
	{ config_id = 86, shape = RegionShape.SPHERE, radius = 5, pos = { x = 807.1, y = 334.4, z = 1855.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_86", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86", action = "action_EVENT_ENTER_REGION_86" }
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
		gadgets = { 255, 256, 257, 258 },
		regions = { 86 },
		triggers = { "ENTER_REGION_86" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 72, 73, 74 },
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
function condition_EVENT_ENTER_REGION_86(context, evt)
	if evt.param1 ~= 86 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103081, 2)
	
	return 0
end

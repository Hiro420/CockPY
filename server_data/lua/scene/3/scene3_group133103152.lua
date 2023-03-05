--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 20011401, pos = { x = 990.6, y = 270.6, z = 1521.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 152002, monster_id = 20011401, pos = { x = 992.7, y = 270.2, z = 1521.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 152003, monster_id = 20011501, pos = { x = 991.6, y = 269.9, z = 1522.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152004, gadget_id = 70290016, pos = { x = 990.7, y = 270.8, z = 1520.2 }, rot = { x = 0.0, y = 251.8, z = 0.0 }, level = 24 },
	{ config_id = 152005, gadget_id = 70500000, pos = { x = 990.7, y = 270.8, z = 1520.2 }, rot = { x = 0.0, y = 251.8, z = 0.0 }, level = 24, point_type = 3010, owner = 152004 },
	{ config_id = 152006, gadget_id = 70290016, pos = { x = 988.1, y = 271.3, z = 1520.8 }, rot = { x = 5.9, y = 17.8, z = 12.7 }, level = 24 },
	{ config_id = 152007, gadget_id = 70500000, pos = { x = 988.1, y = 271.3, z = 1520.8 }, rot = { x = 5.9, y = 17.8, z = 12.7 }, level = 24, point_type = 3010, owner = 152006 }
}

-- 区域
regions = {
	{ config_id = 152008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 991.1, y = 270.6, z = 1521.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_152008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152008", action = "action_EVENT_ENTER_REGION_152008" }
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
		gadgets = { 152004, 152005, 152006, 152007 },
		regions = { 152008 },
		triggers = { "ENTER_REGION_152008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 152001, 152002, 152003 },
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
function condition_EVENT_ENTER_REGION_152008(context, evt)
	if evt.param1 ~= 152008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103152, 2)
	
	return 0
end

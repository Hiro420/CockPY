--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178001, monster_id = 20011401, pos = { x = 627.5, y = 262.6, z = 1476.2 }, rot = { x = 0.0, y = 278.5, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 178002, monster_id = 20011401, pos = { x = 627.8, y = 262.4, z = 1478.2 }, rot = { x = 0.0, y = 278.5, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 178003, monster_id = 20011501, pos = { x = 626.2, y = 262.6, z = 1477.4 }, rot = { x = 0.0, y = 278.5, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 178004, gadget_id = 70290016, pos = { x = 629.9, y = 262.1, z = 1479.4 }, rot = { x = 13.1, y = 0.7, z = 6.2 }, level = 24 },
	{ config_id = 178006, gadget_id = 70500000, pos = { x = 629.9, y = 262.1, z = 1479.4 }, rot = { x = 13.1, y = 0.7, z = 6.2 }, level = 24, point_type = 3010, owner = 178004 },
	{ config_id = 178009, gadget_id = 70290016, pos = { x = 628.5, y = 262.8, z = 1475.5 }, rot = { x = 4.5, y = 0.1, z = 3.6 }, level = 24 },
	{ config_id = 178010, gadget_id = 70500000, pos = { x = 628.5, y = 262.8, z = 1475.5 }, rot = { x = 4.5, y = 0.1, z = 3.6 }, level = 24, point_type = 3010, owner = 178009 }
}

-- 区域
regions = {
	{ config_id = 178008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 626.8, y = 262.7, z = 1476.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_178008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178008", action = "action_EVENT_ENTER_REGION_178008" }
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
		gadgets = { 178004, 178006, 178009, 178010 },
		regions = { 178008 },
		triggers = { "ENTER_REGION_178008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 178001, 178002, 178003 },
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
function condition_EVENT_ENTER_REGION_178008(context, evt)
	if evt.param1 ~= 178008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_178008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103178, 2)
	
	return 0
end

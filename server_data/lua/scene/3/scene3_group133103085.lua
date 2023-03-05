--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79, monster_id = 20011201, pos = { x = 738.7, y = 228.0, z = 1344.3 }, rot = { x = 0.0, y = 265.1, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 80, monster_id = 20011201, pos = { x = 733.7, y = 227.2, z = 1341.7 }, rot = { x = 0.0, y = 265.1, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 81, monster_id = 20011301, pos = { x = 736.5, y = 227.4, z = 1341.7 }, rot = { x = 0.0, y = 265.1, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267, gadget_id = 70290009, pos = { x = 740.7, y = 228.1, z = 1344.5 }, rot = { x = 0.0, y = 265.1, z = 0.0 }, level = 24 },
	{ config_id = 268, gadget_id = 70500000, pos = { x = 740.7, y = 228.1, z = 1344.5 }, rot = { x = 0.0, y = 265.1, z = 0.0 }, level = 24, point_type = 3005, owner = 267 },
	{ config_id = 269, gadget_id = 70290009, pos = { x = 736.9, y = 227.9, z = 1344.1 }, rot = { x = 0.0, y = 162.6, z = 0.0 }, level = 24 },
	{ config_id = 270, gadget_id = 70500000, pos = { x = 736.9, y = 227.9, z = 1344.1 }, rot = { x = 0.0, y = 162.6, z = 0.0 }, level = 24, point_type = 3005, owner = 269 }
}

-- 区域
regions = {
	{ config_id = 89, shape = RegionShape.SPHERE, radius = 5, pos = { x = 736.2, y = 227.5, z = 1342.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_89", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_89", action = "action_EVENT_ENTER_REGION_89" }
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
		gadgets = { 267, 268, 269, 270 },
		regions = { 89 },
		triggers = { "ENTER_REGION_89" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 79, 80, 81 },
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
function condition_EVENT_ENTER_REGION_89(context, evt)
	if evt.param1 ~= 89 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_89(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103085, 2)
	
	return 0
end

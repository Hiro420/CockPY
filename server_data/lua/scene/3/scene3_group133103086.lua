--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82, monster_id = 20010801, pos = { x = 814.1, y = 255.7, z = 1269.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 83, monster_id = 20010801, pos = { x = 813.2, y = 255.3, z = 1272.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271, gadget_id = 70290008, pos = { x = 812.7, y = 252.2, z = 1277.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 272, gadget_id = 70500000, pos = { x = 812.7, y = 252.2, z = 1277.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 271 },
	{ config_id = 273, gadget_id = 70290008, pos = { x = 810.9, y = 255.8, z = 1270.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 274, gadget_id = 70500000, pos = { x = 810.9, y = 255.8, z = 1270.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 273 }
}

-- 区域
regions = {
	{ config_id = 90, shape = RegionShape.SPHERE, radius = 3, pos = { x = 813.0, y = 255.6, z = 1271.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_90", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_90", action = "action_EVENT_ENTER_REGION_90" }
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
		gadgets = { 271, 272, 273, 274 },
		regions = { 90 },
		triggers = { "ENTER_REGION_90" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 82, 83 },
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
function condition_EVENT_ENTER_REGION_90(context, evt)
	if evt.param1 ~= 90 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_90(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103086, 2)
	
	return 0
end

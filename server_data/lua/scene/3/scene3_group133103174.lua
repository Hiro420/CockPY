--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 174001, monster_id = 20011201, pos = { x = 608.4, y = 235.8, z = 1603.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 174002, monster_id = 20011201, pos = { x = 606.3, y = 235.5, z = 1608.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 174003, monster_id = 20011301, pos = { x = 606.0, y = 236.3, z = 1605.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 174004, gadget_id = 70290009, pos = { x = 605.0, y = 237.4, z = 1603.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 174006, gadget_id = 70500000, pos = { x = 605.0, y = 237.4, z = 1603.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 174004 },
	{ config_id = 174009, gadget_id = 70290009, pos = { x = 607.5, y = 235.4, z = 1607.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 174010, gadget_id = 70500000, pos = { x = 607.5, y = 235.4, z = 1607.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 174009 }
}

-- 区域
regions = {
	{ config_id = 174008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 606.8, y = 236.0, z = 1605.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_174008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_174008", action = "action_EVENT_ENTER_REGION_174008" }
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
		gadgets = { 174004, 174006, 174009, 174010 },
		regions = { 174008 },
		triggers = { "ENTER_REGION_174008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 174001, 174002, 174003 },
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
function condition_EVENT_ENTER_REGION_174008(context, evt)
	if evt.param1 ~= 174008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_174008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103174, 2)
	
	return 0
end

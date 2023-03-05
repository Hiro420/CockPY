--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 166001, monster_id = 20010801, pos = { x = 539.7, y = 231.3, z = 1686.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 166002, monster_id = 20010801, pos = { x = 539.6, y = 230.7, z = 1690.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 166003, monster_id = 20010901, pos = { x = 539.2, y = 230.7, z = 1688.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 166004, gadget_id = 70290008, pos = { x = 541.0, y = 230.8, z = 1689.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 166005, gadget_id = 70500000, pos = { x = 541.0, y = 230.8, z = 1689.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 166004 },
	{ config_id = 166006, gadget_id = 70290008, pos = { x = 538.1, y = 230.7, z = 1687.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 166007, gadget_id = 70500000, pos = { x = 538.1, y = 230.7, z = 1687.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 166006 }
}

-- 区域
regions = {
	{ config_id = 166008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 540.0, y = 230.7, z = 1688.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_166008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_166008", action = "action_EVENT_ENTER_REGION_166008" }
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
		gadgets = { 166004, 166005, 166006, 166007 },
		regions = { 166008 },
		triggers = { "ENTER_REGION_166008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 166001, 166002, 166003 },
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
function condition_EVENT_ENTER_REGION_166008(context, evt)
	if evt.param1 ~= 166008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_166008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103166, 2)
	
	return 0
end

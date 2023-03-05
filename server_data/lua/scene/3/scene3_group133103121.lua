--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 20011401, pos = { x = 522.4, y = 172.4, z = 1109.9 }, rot = { x = 0.0, y = 152.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 121002, monster_id = 20011401, pos = { x = 521.2, y = 172.1, z = 1106.4 }, rot = { x = 0.0, y = 152.7, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 121003, monster_id = 20011501, pos = { x = 521.3, y = 172.1, z = 1108.3 }, rot = { x = 0.0, y = 152.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121004, gadget_id = 70290016, pos = { x = 525.2, y = 173.2, z = 1108.0 }, rot = { x = 31.8, y = 212.1, z = 334.5 }, level = 19 },
	{ config_id = 121005, gadget_id = 70500000, pos = { x = 525.2, y = 173.2, z = 1108.0 }, rot = { x = 31.8, y = 212.1, z = 334.5 }, level = 19, point_type = 3010, owner = 121004 },
	{ config_id = 121006, gadget_id = 70290016, pos = { x = 523.2, y = 172.4, z = 1104.9 }, rot = { x = 350.9, y = 159.8, z = 333.2 }, level = 19 },
	{ config_id = 121007, gadget_id = 70500000, pos = { x = 523.2, y = 172.4, z = 1104.9 }, rot = { x = 350.9, y = 159.8, z = 333.2 }, level = 19, point_type = 3010, owner = 121006 }
}

-- 区域
regions = {
	{ config_id = 121008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 522.9, y = 172.4, z = 1106.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_121008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121008", action = "action_EVENT_ENTER_REGION_121008" }
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
		gadgets = { 121004, 121005, 121006, 121007 },
		regions = { 121008 },
		triggers = { "ENTER_REGION_121008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 121001, 121002, 121003 },
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
function condition_EVENT_ENTER_REGION_121008(context, evt)
	if evt.param1 ~= 121008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103121, 2)
	
	return 0
end

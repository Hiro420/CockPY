--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48002, monster_id = 20011301, pos = { x = 1199.2, y = 254.7, z = 1232.5 }, rot = { x = 3.6, y = 359.9, z = 4.5 }, level = 17, drop_tag = "史莱姆" },
	{ config_id = 48004, monster_id = 20011301, pos = { x = 1200.9, y = 254.7, z = 1232.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 17, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 48001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1200.5, y = 254.8, z = 1235.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_48001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48001", action = "action_EVENT_ENTER_REGION_48001" }
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
	end_suite = 2,
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
		regions = { 48001 },
		triggers = { "ENTER_REGION_48001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 48002, 48004 },
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
function condition_EVENT_ENTER_REGION_48001(context, evt)
	if evt.param1 ~= 48001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101048, 2)
	
	return 0
end

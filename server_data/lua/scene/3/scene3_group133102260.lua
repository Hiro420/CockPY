--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457, monster_id = 20010801, pos = { x = 1022.8, y = 200.0, z = 214.8 }, rot = { x = 359.1, y = 359.9, z = 10.6 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 458, monster_id = 20010801, pos = { x = 1025.2, y = 200.0, z = 215.5 }, rot = { x = 5.4, y = 310.5, z = 12.8 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 459, monster_id = 20010801, pos = { x = 1023.0, y = 200.0, z = 217.7 }, rot = { x = 357.4, y = 359.5, z = 15.1 }, level = 16, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 260001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1023.9, y = 200.0, z = 216.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_260001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_260001", action = "action_EVENT_ENTER_REGION_260001" }
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
		regions = { 260001 },
		triggers = { "ENTER_REGION_260001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 457, 458, 459 },
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
function condition_EVENT_ENTER_REGION_260001(context, evt)
	if evt.param1 ~= 260001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_260001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102260, 2)
	
	return 0
end

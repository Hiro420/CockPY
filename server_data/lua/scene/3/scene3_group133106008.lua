--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 21010501, pos = { x = -847.5, y = 195.6, z = 755.9 }, rot = { x = 0.0, y = 27.1, z = 0.0 }, level = 28, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 23, monster_id = 21010501, pos = { x = -840.9, y = 196.3, z = 764.5 }, rot = { x = 0.0, y = 274.7, z = 0.0 }, level = 28, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 24, monster_id = 21010501, pos = { x = -849.8, y = 196.7, z = 765.3 }, rot = { x = 0.0, y = 140.4, z = 0.0 }, level = 28, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37, gadget_id = 70300086, pos = { x = -846.3, y = 195.8, z = 760.3 }, rot = { x = 0.0, y = 4.6, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
	{ config_id = 8001, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = -846.4, y = 200.3, z = 760.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8001", action = "action_EVENT_ENTER_REGION_8001" }
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
		gadgets = { 37 },
		regions = { 8001 },
		triggers = { "ENTER_REGION_8001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 22, 23, 24 },
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
function condition_EVENT_ENTER_REGION_8001(context, evt)
	if evt.param1 ~= 8001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106008, 2)
	
	return 0
end

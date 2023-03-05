--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 354002, monster_id = 20011001, pos = { x = 1192.8, y = 200.0, z = 477.8 }, rot = { x = 0.0, y = 205.2, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 354003, monster_id = 20011001, pos = { x = 1193.3, y = 200.0, z = 473.5 }, rot = { x = 0.0, y = 64.3, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 354001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1192.9, y = 200.0, z = 476.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_354001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354001", action = "action_EVENT_ENTER_REGION_354001" }
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
		regions = { 354001 },
		triggers = { "ENTER_REGION_354001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 354002, 354003 },
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
function condition_EVENT_ENTER_REGION_354001(context, evt)
	if evt.param1 ~= 354001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_354001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102354, 2)
	
	return 0
end

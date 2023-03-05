--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 28020102, pos = { x = -113.1, y = 256.0, z = -144.1 }, rot = { x = 0.0, y = 189.0, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 76002, monster_id = 28020102, pos = { x = -128.1, y = 255.0, z = -138.2 }, rot = { x = 0.0, y = 153.4, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 76003, monster_id = 28020102, pos = { x = -110.1, y = 254.7, z = -124.6 }, rot = { x = 0.0, y = 199.9, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 76005, monster_id = 28030101, pos = { x = -128.8, y = 255.7, z = -166.1 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 18, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 76006, monster_id = 28030101, pos = { x = -122.7, y = 256.2, z = -178.2 }, rot = { x = 0.0, y = 225.7, z = 0.0 }, level = 18, drop_tag = "鸟类", pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 76004, shape = RegionShape.SPHERE, radius = 17.1, pos = { x = -117.3, y = 254.3, z = -128.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_76004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76004", action = "action_EVENT_ENTER_REGION_76004" }
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
		regions = { 76004 },
		triggers = { "ENTER_REGION_76004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 76001, 76002, 76003, 76005, 76006 },
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
function condition_EVENT_ENTER_REGION_76004(context, evt)
	if evt.param1 ~= 76004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108076, 2)
	
	return 0
end

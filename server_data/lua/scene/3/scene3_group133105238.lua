--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 238004, gadget_id = 70211131, pos = { x = 391.9, y = 202.0, z = -747.6 }, rot = { x = 349.2, y = 146.6, z = 6.0 }, level = 1, drop_tag = "解谜超级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 238003, shape = RegionShape.SPHERE, radius = 3, pos = { x = 392.1, y = 201.8, z = -747.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_238003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_238003", action = "action_EVENT_ENTER_REGION_238003" }
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
		regions = { 238003 },
		triggers = { "ENTER_REGION_238003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 238004 },
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
function condition_EVENT_ENTER_REGION_238003(context, evt)
	if evt.param1 ~= 238003 then return false end
	
	-- 判断角色数量不少于2
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_238003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105238, 3)
	
	return 0
end

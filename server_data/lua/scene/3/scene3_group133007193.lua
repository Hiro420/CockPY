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
	{ config_id = 697, gadget_id = 70220014, pos = { x = 2542.1, y = 217.0, z = -46.0 }, rot = { x = 16.0, y = 203.0, z = 0.0 }, level = 23 },
	{ config_id = 698, gadget_id = 70210101, pos = { x = 2541.8, y = 217.0, z = -46.2 }, rot = { x = 0.0, y = 310.6, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德", type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 225, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2542.1, y = 217.2, z = -45.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_225", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225", action = "action_EVENT_ENTER_REGION_225", trigger_count = 0, tlog_tag = "风龙_193_隐藏风场机关_触发" }
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
	rand_suite = true
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
		gadgets = { 697, 698 },
		regions = { 225 },
		triggers = { "ENTER_REGION_225" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_225(context, evt)
	if evt.param1 ~= 225 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007186, suite = 2 }) then
			return -1
		end
	
	return 0
end

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
	{ config_id = 222001, gadget_id = 70211101, pos = { x = 874.5, y = 345.1, z = 1283.7 }, rot = { x = 0.0, y = 116.6, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 222002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 874.8, y = 344.9, z = 1283.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_222002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_222002", action = "action_EVENT_ENTER_REGION_222002" }
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
		regions = { 222002 },
		triggers = { "ENTER_REGION_222002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_222002(context, evt)
	if evt.param1 ~= 222002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_222002(context, evt)
	-- 创建id为222001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222001 }) then
	  return -1
	end
	
	return 0
end

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
	{ config_id = 219001, gadget_id = 70360040, pos = { x = -246.3, y = 190.2, z = 848.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 219002, gadget_id = 70360040, pos = { x = -230.7, y = 188.5, z = 840.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 219003, gadget_id = 70360040, pos = { x = -221.9, y = 184.2, z = 834.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 219004, gadget_id = 70360040, pos = { x = -215.2, y = 185.8, z = 830.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 219005, gadget_id = 70360040, pos = { x = -209.6, y = 186.8, z = 824.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 219011, gadget_id = 70211121, pos = { x = -204.8, y = 185.3, z = 818.6 }, rot = { x = 2.9, y = 359.8, z = 353.6 }, level = 24, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 219006, shape = RegionShape.SPHERE, radius = 1, pos = { x = -246.2, y = 190.3, z = 848.2 } },
	{ config_id = 219007, shape = RegionShape.SPHERE, radius = 1, pos = { x = -230.5, y = 188.5, z = 840.2 } },
	{ config_id = 219008, shape = RegionShape.SPHERE, radius = 1, pos = { x = -222.0, y = 184.3, z = 834.4 } },
	{ config_id = 219009, shape = RegionShape.SPHERE, radius = 1, pos = { x = -215.2, y = 185.8, z = 830.3 } },
	{ config_id = 219010, shape = RegionShape.SPHERE, radius = 1, pos = { x = -209.6, y = 186.9, z = 824.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_219006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219006", action = "action_EVENT_ENTER_REGION_219006" },
	{ name = "ENTER_REGION_219007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219007", action = "action_EVENT_ENTER_REGION_219007" },
	{ name = "ENTER_REGION_219008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219008", action = "action_EVENT_ENTER_REGION_219008" },
	{ name = "ENTER_REGION_219009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219009", action = "action_EVENT_ENTER_REGION_219009" },
	{ name = "ENTER_REGION_219010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219010", action = "action_EVENT_ENTER_REGION_219010" }
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
		gadgets = { 219001 },
		regions = { 219006, 219007, 219008, 219009, 219010 },
		triggers = { "ENTER_REGION_219006", "ENTER_REGION_219007", "ENTER_REGION_219008", "ENTER_REGION_219009", "ENTER_REGION_219010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_219006(context, evt)
	if evt.param1 ~= 219006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219006(context, evt)
	-- 创建id为219002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 219002 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 219001 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219007(context, evt)
	if evt.param1 ~= 219007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219007(context, evt)
	-- 创建id为219003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 219003 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 219002 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219008(context, evt)
	if evt.param1 ~= 219008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219008(context, evt)
	-- 创建id为219004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 219004 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 219003 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219009(context, evt)
	if evt.param1 ~= 219009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219009(context, evt)
	-- 创建id为219005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 219005 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 219004 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219010(context, evt)
	if evt.param1 ~= 219010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219010(context, evt)
	-- 创建id为219011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 219011 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 219005 }) then
		    return -1
		end
		
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 609, monster_id = 20011201, pos = { x = 1793.7, y = 246.2, z = -522.9 }, rot = { x = 0.0, y = 128.6, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 610, monster_id = 20011201, pos = { x = 1799.4, y = 246.8, z = -522.3 }, rot = { x = 0.0, y = 181.1, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 613, monster_id = 20010801, pos = { x = 1983.0, y = 219.3, z = -541.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 614, monster_id = 20010801, pos = { x = 1984.6, y = 219.3, z = -540.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 615, monster_id = 20010501, pos = { x = 1957.0, y = 231.5, z = -409.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "史莱姆" },
	{ config_id = 616, monster_id = 20010501, pos = { x = 1958.4, y = 231.5, z = -411.1 }, rot = { x = 0.0, y = 124.3, z = 0.0 }, level = 9, drop_tag = "史莱姆" },
	{ config_id = 679, monster_id = 28040103, pos = { x = 1955.3, y = 210.5, z = -900.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 680, monster_id = 28040102, pos = { x = 1952.9, y = 210.5, z = -897.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 214, shape = RegionShape.SPHERE, radius = 3.4, pos = { x = 1796.7, y = 246.5, z = -523.7 } },
	{ config_id = 224, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1957.2, y = 231.6, z = -410.4 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_209", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_209", trigger_count = 0 },
	{ name = "ENTER_REGION_214", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214", action = "action_EVENT_ENTER_REGION_214" },
	{ name = "ENTER_REGION_224", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224", action = "action_EVENT_ENTER_REGION_224" }
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
		monsters = { 609, 610, 613, 614, 679, 680 },
		gadgets = { },
		regions = { 214, 224 },
		triggers = { "CLIENT_EXECUTE_209", "ENTER_REGION_214", "ENTER_REGION_224" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_209(context, evt)
	-- 针对groupid为 133002207 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	  ScriptLib.SetGadgetEnableInteract(context, 133002207, this_gadget, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214(context, evt)
	if evt.param1 ~= 214 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 609, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 610, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_224(context, evt)
	if evt.param1 ~= 224 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_224(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 616, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 615, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 317, monster_id = 20011301, pos = { x = 2343.1, y = 262.6, z = -421.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 318, monster_id = 20011201, pos = { x = 2344.5, y = 262.9, z = -422.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 319, monster_id = 20011201, pos = { x = 2343.9, y = 262.9, z = -420.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 456, gadget_id = 70500000, pos = { x = 2342.8, y = 287.5, z = -421.1 }, rot = { x = 0.0, y = 281.4, z = 0.0 }, level = 15, point_type = 4001001, isOneoff = true },
	{ config_id = 457, gadget_id = 70690001, pos = { x = 2342.8, y = 267.8, z = -421.1 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
	{ config_id = 116001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2343.5, y = 262.7, z = -421.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_116001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_116001", action = "action_EVENT_ENTER_REGION_116001" }
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
		gadgets = { 456, 457 },
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
function condition_EVENT_ENTER_REGION_116001(context, evt)
	if evt.param1 ~= 116001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_116001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 317, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 318, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 319, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

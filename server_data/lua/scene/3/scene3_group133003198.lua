--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 782, monster_id = 28020201, pos = { x = 2216.4, y = 207.2, z = -1111.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 807, monster_id = 20011201, pos = { x = 2212.7, y = 212.7, z = -1115.2 }, rot = { x = 0.0, y = 36.8, z = 0.0 }, level = 5, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 808, monster_id = 20011201, pos = { x = 2214.3, y = 209.1, z = -1108.9 }, rot = { x = 0.0, y = 92.6, z = 0.0 }, level = 5, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 163, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2214.0, y = 207.6, z = -1112.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_163", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_163", action = "action_EVENT_ENTER_REGION_163" }
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
		monsters = { 782 },
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
function condition_EVENT_ENTER_REGION_163(context, evt)
	if evt.param1 ~= 163 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_163(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 807, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 808, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

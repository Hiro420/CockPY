--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224, monster_id = 20011401, pos = { x = 2233.7, y = 203.7, z = -476.5 }, rot = { x = 0.0, y = 282.3, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 233, gadget_id = 70211101, pos = { x = 2235.4, y = 202.9, z = -476.7 }, rot = { x = 357.9, y = 296.4, z = 359.1 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 290, gadget_id = 70211101, pos = { x = 2208.6, y = 220.9, z = -477.4 }, rot = { x = 9.3, y = 19.8, z = 2.3 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 65001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2234.8, y = 202.9, z = -476.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_65001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_65001", action = "action_EVENT_ENTER_REGION_65001" }
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
		gadgets = { 233, 290 },
		regions = { 65001 },
		triggers = { "ENTER_REGION_65001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_65001(context, evt)
	if evt.param1 ~= 65001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 224, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

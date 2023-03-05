--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75, monster_id = 23020101, pos = { x = 954.8, y = 274.1, z = -236.1 }, rot = { x = 0.0, y = 126.9, z = 0.0 }, level = 25, drop_tag = "债务处理人", disableWander = true, affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 181, shape = RegionShape.SPHERE, radius = 6.9, pos = { x = 954.1, y = 274.3, z = -235.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_181", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181", action = "action_EVENT_ENTER_REGION_181" }
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
		regions = { 181 },
		triggers = { "ENTER_REGION_181" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_181(context, evt)
	if evt.param1 ~= 181 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 75, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

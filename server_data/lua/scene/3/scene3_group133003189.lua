--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 758, monster_id = 28030101, pos = { x = 2609.2, y = 223.0, z = -1258.8 }, rot = { x = 0.0, y = 112.3, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 759, monster_id = 28030101, pos = { x = 2608.4, y = 222.2, z = -1255.5 }, rot = { x = 0.0, y = 142.5, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 760, monster_id = 20011001, pos = { x = 2613.6, y = 221.2, z = -1244.5 }, rot = { x = 0.0, y = 145.8, z = 0.0 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 155, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2613.5, y = 217.4, z = -1251.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_155", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_155", action = "action_EVENT_ENTER_REGION_155" }
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
		monsters = { 758, 759 },
		gadgets = { },
		regions = { 155 },
		triggers = { "ENTER_REGION_155" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_155(context, evt)
	if evt.param1 ~= 155 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_155(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 760, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

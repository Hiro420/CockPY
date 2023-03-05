--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 21010701, pos = { x = -368.7, y = 200.2, z = -588.0 }, rot = { x = 0.0, y = 280.7, z = 0.0 }, level = 33, drop_tag = "丘丘人" },
	{ config_id = 58002, monster_id = 21010701, pos = { x = -370.8, y = 200.2, z = -591.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 33, drop_tag = "丘丘人" },
	{ config_id = 58003, monster_id = 21011201, pos = { x = -369.0, y = 200.2, z = -590.4 }, rot = { x = 0.0, y = 292.9, z = 0.0 }, level = 33, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58005, gadget_id = 70211011, pos = { x = -372.8, y = 200.3, z = -588.6 }, rot = { x = 3.7, y = 104.0, z = 3.7 }, level = 32, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 58004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -372.6, y = 200.3, z = -588.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_58004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58004", action = "action_EVENT_ENTER_REGION_58004" },
	{ name = "ANY_MONSTER_DIE_58006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58006", action = "action_EVENT_ANY_MONSTER_DIE_58006" }
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
		regions = { 58004 },
		triggers = { "ENTER_REGION_58004", "ANY_MONSTER_DIE_58006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 58005 },
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
function condition_EVENT_ENTER_REGION_58004(context, evt)
	if evt.param1 ~= 58004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108058, 2)
	
	return 0
end

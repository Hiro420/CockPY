--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 858, monster_id = 20010301, pos = { x = 1485.3, y = 330.4, z = -1992.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 859, monster_id = 20010301, pos = { x = 1488.0, y = 330.8, z = -1989.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 860, monster_id = 20010301, pos = { x = 1482.7, y = 330.6, z = -1986.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 861, monster_id = 20010401, pos = { x = 1484.6, y = 330.4, z = -1991.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 224, shape = RegionShape.SPHERE, radius = 16.5, pos = { x = 1483.9, y = 330.2, z = -1993.8 } }
}

-- 触发器
triggers = {
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
		monsters = { },
		gadgets = { },
		regions = { 224 },
		triggers = { "ENTER_REGION_224" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

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
	-- 在0面前， 5 到 9 范围里，30 角度内，刷{858,859,860,861}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {858,859,860,861}, ranges = { 5, 9 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

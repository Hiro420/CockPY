--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96, monster_id = 20011201, pos = { x = 1612.7, y = 318.3, z = 410.7 }, rot = { x = 0.0, y = 220.8, z = 0.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 97, monster_id = 20011201, pos = { x = 1614.0, y = 318.6, z = 410.2 }, rot = { x = 0.0, y = 242.5, z = 0.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 98, monster_id = 20011301, pos = { x = 1613.9, y = 318.5, z = 411.4 }, rot = { x = 0.0, y = 225.0, z = 0.0 }, level = 21, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 158, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1612.6, y = 319.8, z = 410.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_158", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_158", action = "action_EVENT_ENTER_REGION_158" }
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
		regions = { 158 },
		triggers = { "ENTER_REGION_158" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_158(context, evt)
	if evt.param1 ~= 158 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_158(context, evt)
	-- 在0面前， 5 到 8 范围里，20 角度内，刷{98,96,97}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {98,96,97}, ranges = { 5, 8 }, angle = 20 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

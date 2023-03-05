--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 755, monster_id = 20010401, pos = { x = 1752.7, y = 214.7, z = -1360.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" },
	{ config_id = 756, monster_id = 20010301, pos = { x = 1753.0, y = 214.9, z = -1364.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" },
	{ config_id = 757, monster_id = 20010301, pos = { x = 1749.2, y = 215.0, z = -1358.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 164, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 1729.1, y = 213.9, z = -1355.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_164", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_164", action = "action_EVENT_ENTER_REGION_164" }
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
		regions = { 164 },
		triggers = { "ENTER_REGION_164" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ENTER_REGION_164(context, evt)
	if evt.param1 ~= 164 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_164(context, evt)
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{756,757}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {756,757}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

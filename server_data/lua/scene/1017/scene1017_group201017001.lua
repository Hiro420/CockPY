--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010101, pos = { x = 14.8, y = 23.9, z = 123.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 21010101, pos = { x = -61.3, y = 23.9, z = 88.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70380013, pos = { x = -53.5, y = 18.5, z = 102.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1005, gadget_id = 70380001, pos = { x = 32.5, y = 23.9, z = 146.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1006, gadget_id = 70380005, pos = { x = 17.1, y = 19.4, z = 138.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1004", action = "action_EVENT_ANY_MONSTER_DIE_1004" }
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
	rand_suite = false,
	npcs = { }
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
		monsters = { 1001, 1003 },
		gadgets = { 1002, 1005, 1006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201017001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1002) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1005) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1006) then
	  return -1
	end
	
	return 0
end

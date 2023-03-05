--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 20011301, pos = { x = -763.4, y = 212.8, z = 1341.8 }, rot = { x = 348.6, y = 21.4, z = 354.3 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 204002, monster_id = 20011301, pos = { x = -762.9, y = 211.5, z = 1336.1 }, rot = { x = 348.6, y = 21.4, z = 354.3 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 204003, monster_id = 20011201, pos = { x = -766.3, y = 212.5, z = 1340.1 }, rot = { x = 355.5, y = 64.0, z = 348.1 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 204004, monster_id = 20011201, pos = { x = -762.4, y = 212.3, z = 1339.7 }, rot = { x = 348.2, y = 332.9, z = 4.7 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204005, gadget_id = 70290009, pos = { x = -761.1, y = 212.0, z = 1338.2 }, rot = { x = 348.6, y = 21.4, z = 354.3 }, level = 24 },
	{ config_id = 204006, gadget_id = 70500000, pos = { x = -761.1, y = 212.0, z = 1338.2 }, rot = { x = 348.6, y = 21.4, z = 354.3 }, level = 24, point_type = 3005, owner = 204005 },
	{ config_id = 204007, gadget_id = 70290009, pos = { x = -768.4, y = 211.9, z = 1338.2 }, rot = { x = 1.8, y = 92.8, z = 347.4 }, level = 24 },
	{ config_id = 204008, gadget_id = 70500000, pos = { x = -768.4, y = 211.9, z = 1338.2 }, rot = { x = 1.8, y = 92.8, z = 347.4 }, level = 24, point_type = 3005, owner = 204007 },
	{ config_id = 204009, gadget_id = 70290009, pos = { x = -768.0, y = 212.8, z = 1342.2 }, rot = { x = 354.4, y = 290.5, z = 11.4 }, level = 24 },
	{ config_id = 204010, gadget_id = 70500000, pos = { x = -768.0, y = 212.8, z = 1342.2 }, rot = { x = 354.4, y = 290.5, z = 11.4 }, level = 24, point_type = 3005, owner = 204009 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_204011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_204011", action = "action_EVENT_MONSTER_BATTLE_204011" }
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
		monsters = { 204003, 204004 },
		gadgets = { 204005, 204006, 204007, 204008, 204009, 204010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_204011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_204011(context, evt)
	if 204003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_204011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204002, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 205001, monster_id = 20011301, pos = { x = -957.7, y = 198.7, z = 904.9 }, rot = { x = 351.9, y = 20.6, z = 358.9 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 205002, monster_id = 20011301, pos = { x = -957.0, y = 198.2, z = 899.3 }, rot = { x = 351.9, y = 20.6, z = 358.9 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 205003, monster_id = 20011201, pos = { x = -960.5, y = 198.7, z = 903.4 }, rot = { x = 354.8, y = 63.5, z = 353.6 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 205004, monster_id = 20011201, pos = { x = -956.6, y = 198.6, z = 902.9 }, rot = { x = 353.7, y = 332.8, z = 5.2 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205005, gadget_id = 70290009, pos = { x = -955.3, y = 198.3, z = 901.3 }, rot = { x = 351.9, y = 20.6, z = 358.9 }, level = 32 },
	{ config_id = 205006, gadget_id = 70500000, pos = { x = -955.3, y = 198.3, z = 901.3 }, rot = { x = 351.9, y = 20.6, z = 358.9 }, level = 32, point_type = 3005, owner = 205005 },
	{ config_id = 205007, gadget_id = 70290009, pos = { x = -962.4, y = 198.6, z = 901.5 }, rot = { x = 358.6, y = 92.8, z = 351.9 }, level = 32 },
	{ config_id = 205008, gadget_id = 70500000, pos = { x = -962.4, y = 198.6, z = 901.5 }, rot = { x = 358.6, y = 92.8, z = 351.9 }, level = 32, point_type = 3005, owner = 205007 },
	{ config_id = 205009, gadget_id = 70290009, pos = { x = -962.2, y = 198.7, z = 905.4 }, rot = { x = 358.8, y = 290.7, z = 8.1 }, level = 32 },
	{ config_id = 205010, gadget_id = 70500000, pos = { x = -962.2, y = 198.7, z = 905.4 }, rot = { x = 358.8, y = 290.7, z = 8.1 }, level = 32, point_type = 3005, owner = 205009 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_205011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_205011", action = "action_EVENT_MONSTER_BATTLE_205011" }
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
		monsters = { 205003, 205004 },
		gadgets = { 205005, 205006, 205007, 205008, 205009, 205010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_205011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_205011(context, evt)
	if 205003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_205011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205002, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

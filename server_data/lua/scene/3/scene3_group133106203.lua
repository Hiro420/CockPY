--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 20011301, pos = { x = -284.4, y = 219.7, z = 773.8 }, rot = { x = 14.8, y = 0.6, z = 4.5 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 203002, monster_id = 20011301, pos = { x = -281.8, y = 220.6, z = 768.4 }, rot = { x = 14.8, y = 0.6, z = 4.5 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 203003, monster_id = 20011201, pos = { x = -286.5, y = 220.1, z = 771.1 }, rot = { x = 7.9, y = 43.6, z = 13.4 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 203004, monster_id = 20011201, pos = { x = -282.6, y = 220.1, z = 772.2 }, rot = { x = 13.2, y = 311.6, z = 351.9 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203005, gadget_id = 70290009, pos = { x = -280.9, y = 220.2, z = 771.0 }, rot = { x = 14.8, y = 0.6, z = 4.5 }, level = 32 },
	{ config_id = 203006, gadget_id = 70500000, pos = { x = -280.9, y = 220.2, z = 771.0 }, rot = { x = 14.8, y = 0.6, z = 4.5 }, level = 32, point_type = 3005, owner = 203005 },
	{ config_id = 203007, gadget_id = 70290009, pos = { x = -287.8, y = 220.5, z = 768.6 }, rot = { x = 0.4, y = 72.2, z = 15.5 }, level = 32 },
	{ config_id = 203008, gadget_id = 70500000, pos = { x = -287.8, y = 220.5, z = 768.6 }, rot = { x = 0.4, y = 72.2, z = 15.5 }, level = 32, point_type = 3005, owner = 203007 },
	{ config_id = 203009, gadget_id = 70290009, pos = { x = -288.8, y = 219.6, z = 772.5 }, rot = { x = 4.4, y = 269.7, z = 345.1 }, level = 32 },
	{ config_id = 203010, gadget_id = 70500000, pos = { x = -288.8, y = 219.6, z = 772.5 }, rot = { x = 4.4, y = 269.7, z = 345.1 }, level = 32, point_type = 3005, owner = 203009 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_203011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_203011", action = "action_EVENT_MONSTER_BATTLE_203011" }
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
		monsters = { 203003, 203004 },
		gadgets = { 203005, 203006, 203007, 203008, 203009, 203010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_203011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_203011(context, evt)
	if 203003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_203011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203002, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

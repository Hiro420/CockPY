--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202007, monster_id = 20011301, pos = { x = -430.3, y = 244.4, z = 980.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 202008, monster_id = 20011301, pos = { x = -427.6, y = 243.7, z = 974.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 202009, monster_id = 20011201, pos = { x = -432.4, y = 243.7, z = 977.2 }, rot = { x = 0.0, y = 42.7, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 202010, monster_id = 20011201, pos = { x = -428.5, y = 244.4, z = 978.2 }, rot = { x = 0.0, y = 312.6, z = 0.0 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 202001, gadget_id = 70290009, pos = { x = -426.7, y = 244.3, z = 977.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 202002, gadget_id = 70500000, pos = { x = -426.7, y = 244.3, z = 977.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3005, owner = 202001 },
	{ config_id = 202003, gadget_id = 70290009, pos = { x = -433.6, y = 243.1, z = 974.5 }, rot = { x = 0.0, y = 72.2, z = 0.0 }, level = 32 },
	{ config_id = 202004, gadget_id = 70500000, pos = { x = -433.6, y = 243.1, z = 974.5 }, rot = { x = 0.0, y = 72.2, z = 0.0 }, level = 32, point_type = 3005, owner = 202003 },
	{ config_id = 202005, gadget_id = 70290009, pos = { x = -434.8, y = 243.3, z = 978.8 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 32 },
	{ config_id = 202006, gadget_id = 70500000, pos = { x = -434.8, y = 243.3, z = 978.8 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 32, point_type = 3005, owner = 202005 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_202011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_202011", action = "action_EVENT_MONSTER_BATTLE_202011" }
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
		monsters = { 202009, 202010 },
		gadgets = { 202001, 202002, 202003, 202004, 202005, 202006 },
		regions = { },
		triggers = { "MONSTER_BATTLE_202011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_202011(context, evt)
	if 202009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_202011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 202007, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 202008, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

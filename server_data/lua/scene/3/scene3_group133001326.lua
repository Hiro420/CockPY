--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 326001, monster_id = 21010201, pos = { x = 1243.7, y = 261.1, z = -1657.1 }, rot = { x = 0.0, y = 350.5, z = 0.0 }, level = 21, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 326002, monster_id = 21010301, pos = { x = 1252.8, y = 261.9, z = -1648.6 }, rot = { x = 0.0, y = 176.3, z = 0.0 }, level = 21, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 326003, monster_id = 21010401, pos = { x = 1254.9, y = 261.9, z = -1647.8 }, rot = { x = 0.0, y = 189.1, z = 0.0 }, level = 21, drop_tag = "远程丘丘人" },
	{ config_id = 326004, monster_id = 21010401, pos = { x = 1250.5, y = 261.9, z = -1647.8 }, rot = { x = 0.0, y = 162.2, z = 0.0 }, level = 21, drop_tag = "远程丘丘人" },
	{ config_id = 326006, monster_id = 21010401, pos = { x = 1223.9, y = 263.4, z = -1672.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 402 },
	{ config_id = 326007, monster_id = 21010401, pos = { x = 1226.5, y = 263.6, z = -1672.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 326010, monster_id = 21010501, pos = { x = 1221.5, y = 263.4, z = -1671.4 }, rot = { x = 0.0, y = 118.8, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9010 },
	{ config_id = 326011, monster_id = 21010101, pos = { x = 1264.2, y = 261.8, z = -1724.5 }, rot = { x = 0.0, y = 122.7, z = 0.0 }, level = 21, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 326012, monster_id = 21010901, pos = { x = 1259.3, y = 262.3, z = -1723.5 }, rot = { x = 0.0, y = 92.9, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 326013, monster_id = 21011001, pos = { x = 1266.9, y = 261.9, z = -1721.1 }, rot = { x = 0.0, y = 299.7, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 326008, gadget_id = 70300088, pos = { x = 1225.3, y = 263.6, z = -1667.4 }, rot = { x = 0.0, y = 75.5, z = 0.0 }, level = 15 },
	{ config_id = 326009, gadget_id = 70300088, pos = { x = 1222.5, y = 263.4, z = -1668.4 }, rot = { x = 10.1, y = 76.9, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_326005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_326005", action = "action_EVENT_MONSTER_BATTLE_326005" }
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
		monsters = { 326001, 326002, 326006, 326007, 326010, 326011, 326012, 326013 },
		gadgets = { 326008, 326009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_326005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_326005(context, evt)
	if 326002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_326005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 326003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 326004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

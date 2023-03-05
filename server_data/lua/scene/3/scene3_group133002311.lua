--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 311001, monster_id = 21010301, pos = { x = 2004.8, y = 226.1, z = -693.4 }, rot = { x = 0.0, y = 76.6, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 311002, monster_id = 21010301, pos = { x = 2008.1, y = 226.1, z = -694.9 }, rot = { x = 0.0, y = 330.3, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 311005, monster_id = 21030201, pos = { x = 2002.5, y = 225.4, z = -695.9 }, rot = { x = 0.0, y = 79.3, z = 0.0 }, level = 15, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 311006, monster_id = 21010201, pos = { x = 2007.2, y = 226.5, z = -690.8 }, rot = { x = 0.0, y = 194.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 311007, monster_id = 21020101, pos = { x = 2010.2, y = 226.7, z = -690.8 }, rot = { x = 0.0, y = 239.3, z = 0.0 }, level = 15, drop_tag = "丘丘暴徒", pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 311003, gadget_id = 70310006, pos = { x = 2006.7, y = 226.2, z = -693.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 311008, gadget_id = 70220014, pos = { x = 2005.8, y = 225.3, z = -698.4 }, rot = { x = 0.0, y = 303.7, z = 0.0 }, level = 10 },
	{ config_id = 311009, gadget_id = 70220014, pos = { x = 2004.7, y = 225.3, z = -697.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 311010, gadget_id = 70220013, pos = { x = 2012.4, y = 226.8, z = -693.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 311011, gadget_id = 70220026, pos = { x = 2002.2, y = 225.9, z = -693.4 }, rot = { x = 0.0, y = 26.9, z = 0.0 }, level = 10 },
	{ config_id = 311012, gadget_id = 70220026, pos = { x = 2012.5, y = 226.6, z = -695.3 }, rot = { x = 0.0, y = 47.5, z = 0.0 }, level = 10 },
	{ config_id = 311014, gadget_id = 70500000, pos = { x = 2010.9, y = 226.4, z = -695.0 }, rot = { x = 0.0, y = 104.7, z = 0.0 }, level = 10, point_type = 9105, isOneoff = true },
	{ config_id = 311025, gadget_id = 70500000, pos = { x = 2011.0, y = 226.6, z = -693.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311026, gadget_id = 70500000, pos = { x = 2011.0, y = 226.5, z = -693.9 }, rot = { x = 0.0, y = 31.1, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311027, gadget_id = 70500000, pos = { x = 2005.5, y = 225.5, z = -697.1 }, rot = { x = 0.0, y = 206.8, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311028, gadget_id = 70500000, pos = { x = 2006.3, y = 225.5, z = -697.6 }, rot = { x = 21.5, y = 129.6, z = 337.2 }, level = 10, point_type = 9104 },
	{ config_id = 311029, gadget_id = 70500000, pos = { x = 2007.5, y = 226.2, z = -693.0 }, rot = { x = 0.0, y = 86.6, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311030, gadget_id = 70500000, pos = { x = 2006.1, y = 226.0, z = -693.7 }, rot = { x = 0.0, y = 74.1, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311031, gadget_id = 70500000, pos = { x = 2003.6, y = 226.1, z = -693.4 }, rot = { x = 0.0, y = 118.4, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311032, gadget_id = 70500000, pos = { x = 2002.8, y = 225.9, z = -693.8 }, rot = { x = 0.0, y = 183.8, z = 0.0 }, level = 10, point_type = 9104 },
	{ config_id = 311033, gadget_id = 70500000, pos = { x = 2002.8, y = 225.8, z = -694.2 }, rot = { x = 0.0, y = 57.8, z = 0.0 }, level = 10, point_type = 9104 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_311004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311004", action = "action_EVENT_ANY_MONSTER_DIE_311004", trigger_count = 0 }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 311001, 311002, 311005, 311006, 311007 },
		gadgets = { 311003, 311008, 311009, 311010, 311011, 311012, 311025, 311026, 311027, 311028, 311029, 311030, 311031, 311032, 311033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 311001, 311002, 311005, 311006, 311007 },
		gadgets = { 311003, 311008, 311009, 311010, 311011, 311012, 311014, 311025, 311026, 311027, 311028, 311029, 311030, 311031, 311032, 311033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023111") then
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 755, monster_id = 21010701, pos = { x = 2060.1, y = 248.8, z = -437.7 }, rot = { x = 0.0, y = 301.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 756, monster_id = 21010201, pos = { x = 2056.5, y = 248.9, z = -436.1 }, rot = { x = 0.0, y = 141.7, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 757, monster_id = 21010201, pos = { x = 2056.5, y = 248.5, z = -438.7 }, rot = { x = 0.0, y = 67.7, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 758, monster_id = 21010501, pos = { x = 2076.8, y = 251.3, z = -442.3 }, rot = { x = 0.0, y = 237.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 759, monster_id = 21020201, pos = { x = 2047.2, y = 247.1, z = -446.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1996, gadget_id = 70310001, pos = { x = 2045.9, y = 248.5, z = -427.7 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 1997, gadget_id = 70310001, pos = { x = 2043.0, y = 248.6, z = -430.6 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 1998, gadget_id = 70310001, pos = { x = 2064.3, y = 251.0, z = -427.2 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 1999, gadget_id = 70310001, pos = { x = 2072.8, y = 250.4, z = -437.1 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2000, gadget_id = 70310001, pos = { x = 2066.2, y = 248.4, z = -454.8 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2001, gadget_id = 70310001, pos = { x = 2053.1, y = 247.6, z = -467.7 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2002, gadget_id = 70310001, pos = { x = 2034.0, y = 250.1, z = -453.4 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2003, gadget_id = 70310001, pos = { x = 2035.2, y = 249.9, z = -471.9 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2004, gadget_id = 70310001, pos = { x = 2020.9, y = 246.9, z = -492.4 }, rot = { x = 0.0, y = 288.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2005, gadget_id = 70220019, pos = { x = 2054.6, y = 247.5, z = -447.2 }, rot = { x = 0.0, y = 356.4, z = 0.0 }, level = 15 },
	{ config_id = 2021, gadget_id = 70211102, pos = { x = 2054.7, y = 254.0, z = -447.1 }, rot = { x = 0.0, y = 176.1, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2022, gadget_id = 70220013, pos = { x = 2052.9, y = 248.5, z = -430.4 }, rot = { x = 6.5, y = 315.2, z = 355.3 }, level = 15 },
	{ config_id = 2023, gadget_id = 70220013, pos = { x = 2055.1, y = 248.7, z = -430.7 }, rot = { x = 6.5, y = 315.2, z = 355.3 }, level = 15 },
	{ config_id = 2024, gadget_id = 70220013, pos = { x = 2075.4, y = 249.8, z = -440.8 }, rot = { x = 0.0, y = 354.3, z = 0.0 }, level = 15 },
	{ config_id = 2025, gadget_id = 70220013, pos = { x = 2077.0, y = 249.7, z = -442.2 }, rot = { x = 0.0, y = 35.6, z = 0.0 }, level = 15 },
	{ config_id = 2026, gadget_id = 70220013, pos = { x = 2068.0, y = 248.4, z = -455.7 }, rot = { x = 0.0, y = 42.6, z = 0.0 }, level = 15 },
	{ config_id = 2027, gadget_id = 70220013, pos = { x = 2067.3, y = 248.3, z = -457.5 }, rot = { x = 0.0, y = 68.1, z = 0.0 }, level = 15 },
	{ config_id = 2028, gadget_id = 70220014, pos = { x = 2060.9, y = 254.1, z = -424.4 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 15 },
	{ config_id = 2029, gadget_id = 70220014, pos = { x = 2059.6, y = 254.1, z = -424.1 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 15 },
	{ config_id = 2030, gadget_id = 70220014, pos = { x = 2036.7, y = 254.4, z = -432.4 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 15 },
	{ config_id = 2031, gadget_id = 70220014, pos = { x = 2035.2, y = 254.5, z = -438.7 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 15 },
	{ config_id = 2032, gadget_id = 70220014, pos = { x = 2052.1, y = 247.3, z = -469.2 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 15 },
	{ config_id = 2033, gadget_id = 70220014, pos = { x = 2050.9, y = 247.5, z = -467.6 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 15 },
	{ config_id = 2034, gadget_id = 70310006, pos = { x = 2058.0, y = 248.7, z = -437.2 }, rot = { x = 0.0, y = 171.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 2035, gadget_id = 70220005, pos = { x = 2054.2, y = 248.8, z = -436.0 }, rot = { x = 0.0, y = 13.3, z = 0.0 }, level = 15 },
	{ config_id = 2036, gadget_id = 70220005, pos = { x = 2077.0, y = 249.7, z = -444.5 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 15 },
	{ config_id = 2037, gadget_id = 70220005, pos = { x = 2065.8, y = 248.2, z = -457.4 }, rot = { x = 0.0, y = 309.3, z = 0.0 }, level = 15 },
	{ config_id = 2038, gadget_id = 70220005, pos = { x = 2065.3, y = 248.1, z = -458.3 }, rot = { x = 0.0, y = 29.7, z = 0.0 }, level = 15 },
	{ config_id = 2039, gadget_id = 70220005, pos = { x = 2064.7, y = 248.2, z = -457.5 }, rot = { x = 0.0, y = 309.3, z = 0.0 }, level = 15 },
	{ config_id = 2045, gadget_id = 70220020, pos = { x = 2090.9, y = 246.6, z = -461.6 }, rot = { x = 0.0, y = 190.4, z = 0.0 }, level = 15 },
	{ config_id = 2046, gadget_id = 70220020, pos = { x = 2090.8, y = 247.1, z = -458.7 }, rot = { x = 0.0, y = 174.7, z = 0.0 }, level = 15 },
	{ config_id = 2047, gadget_id = 70220020, pos = { x = 2089.7, y = 246.9, z = -460.2 }, rot = { x = 0.0, y = 263.5, z = 0.0 }, level = 15 },
	{ config_id = 2048, gadget_id = 70220020, pos = { x = 2092.5, y = 246.3, z = -460.4 }, rot = { x = 0.0, y = 263.5, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_282", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_282", action = "action_EVENT_ANY_MONSTER_DIE_282", tlog_tag = "酒庄_232_醉汉峡右侧大营地清剿_清剿完成" }
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
		monsters = { 755, 756, 757, 758, 759 },
		gadgets = { 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2045, 2046, 2047, 2048 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_282" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_282(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_282(context, evt)
	-- 解锁目标2021
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2021, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

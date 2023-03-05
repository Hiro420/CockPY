--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1358, monster_id = 21011001, pos = { x = 2920.7, y = 243.1, z = -1811.4 }, rot = { x = 0.0, y = 348.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1359, monster_id = 21011001, pos = { x = 2906.1, y = 243.9, z = -1818.4 }, rot = { x = 0.0, y = 21.8, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1360, monster_id = 21011001, pos = { x = 2903.9, y = 245.5, z = -1818.7 }, rot = { x = 0.0, y = 21.9, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1361, monster_id = 21030101, pos = { x = 2918.2, y = 243.2, z = -1820.6 }, rot = { x = 0.0, y = 341.3, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1362, monster_id = 21010101, pos = { x = 2915.5, y = 240.3, z = -1814.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3931, gadget_id = 70220013, pos = { x = 2916.2, y = 243.5, z = -1824.6 }, rot = { x = 354.0, y = 298.7, z = 0.0 }, level = 15 },
	{ config_id = 3932, gadget_id = 70220013, pos = { x = 2921.5, y = 242.3, z = -1823.2 }, rot = { x = 359.8, y = 8.9, z = 348.6 }, level = 15 },
	{ config_id = 3933, gadget_id = 70220013, pos = { x = 2904.9, y = 241.4, z = -1816.6 }, rot = { x = 1.4, y = 336.1, z = 347.0 }, level = 15 },
	{ config_id = 3934, gadget_id = 70900025, pos = { x = 2903.8, y = 241.9, z = -1819.0 }, rot = { x = 0.0, y = 153.6, z = 0.0 }, level = 15 },
	{ config_id = 3935, gadget_id = 70900025, pos = { x = 2906.1, y = 240.3, z = -1818.6 }, rot = { x = 0.0, y = 259.2, z = 0.0 }, level = 15 },
	{ config_id = 3936, gadget_id = 70220005, pos = { x = 2920.4, y = 242.9, z = -1821.2 }, rot = { x = 0.0, y = 108.2, z = 0.0 }, level = 15 },
	{ config_id = 3937, gadget_id = 70220005, pos = { x = 2906.6, y = 241.1, z = -1816.9 }, rot = { x = 0.0, y = 156.2, z = 0.0 }, level = 15 },
	{ config_id = 3938, gadget_id = 70310003, pos = { x = 2916.4, y = 243.5, z = -1821.4 }, rot = { x = 0.0, y = 180.4, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3939, gadget_id = 70220013, pos = { x = 2918.4, y = 240.1, z = -1813.6 }, rot = { x = 0.0, y = 291.1, z = 0.0 }, level = 15 },
	{ config_id = 3940, gadget_id = 70220013, pos = { x = 2917.9, y = 239.3, z = -1810.9 }, rot = { x = 356.0, y = 214.4, z = 350.3 }, level = 15 },
	{ config_id = 3941, gadget_id = 70900025, pos = { x = 2921.0, y = 239.5, z = -1811.5 }, rot = { x = 0.0, y = 204.5, z = 0.0 }, level = 15 },
	{ config_id = 3942, gadget_id = 70211012, pos = { x = 2918.5, y = 242.8, z = -1825.7 }, rot = { x = 355.5, y = 358.2, z = 349.6 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 3985, gadget_id = 70310003, pos = { x = 2917.3, y = 238.4, z = -1807.6 }, rot = { x = 0.0, y = 32.2, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3986, gadget_id = 70310003, pos = { x = 2904.2, y = 240.1, z = -1807.8 }, rot = { x = 0.0, y = 110.6, z = 0.0 }, level = 15, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_491", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_491", action = "action_EVENT_ANY_MONSTER_DIE_491" }
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
		monsters = { 1358, 1359, 1360, 1361, 1362 },
		gadgets = { 3931, 3932, 3933, 3934, 3935, 3936, 3937, 3938, 3939, 3940, 3941, 3942, 3985, 3986 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_491" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_491(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_491(context, evt)
	-- 解锁目标3942
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3942, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

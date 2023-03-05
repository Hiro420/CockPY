--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1023, monster_id = 21010401, pos = { x = 1528.9, y = 287.5, z = -1294.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "远程丘丘人" },
	{ config_id = 1024, monster_id = 21010301, pos = { x = 1524.1, y = 287.7, z = -1288.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘人" },
	{ config_id = 1025, monster_id = 21010201, pos = { x = 1522.4, y = 287.8, z = -1293.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘人" },
	{ config_id = 1026, monster_id = 21010601, pos = { x = 1527.3, y = 287.6, z = -1290.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1027, monster_id = 21010101, pos = { x = 1522.3, y = 287.8, z = -1292.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1028, monster_id = 21010701, pos = { x = 1529.8, y = 287.4, z = -1296.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1029, monster_id = 21030201, pos = { x = 1525.7, y = 287.7, z = -1294.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1030, monster_id = 21010301, pos = { x = 1528.0, y = 287.6, z = -1290.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘人" },
	{ config_id = 1031, monster_id = 21010301, pos = { x = 1522.3, y = 287.7, z = -1295.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘人" },
	{ config_id = 1032, monster_id = 21030301, pos = { x = 1526.9, y = 287.7, z = -1291.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1033, monster_id = 21010701, pos = { x = 1522.0, y = 287.6, z = -1296.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘人" },
	{ config_id = 1034, monster_id = 21010701, pos = { x = 1523.3, y = 287.8, z = -1293.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2655, gadget_id = 70900019, pos = { x = 1528.3, y = 287.3, z = -1292.7 }, rot = { x = 0.0, y = 237.5, z = 0.0 }, level = 10 },
	{ config_id = 2656, gadget_id = 70220013, pos = { x = 1534.0, y = 286.6, z = -1285.2 }, rot = { x = 0.0, y = 346.9, z = 0.0 }, level = 10 },
	{ config_id = 2657, gadget_id = 70220013, pos = { x = 1534.6, y = 286.5, z = -1287.2 }, rot = { x = 0.0, y = 70.9, z = 0.0 }, level = 10 },
	{ config_id = 2658, gadget_id = 70220013, pos = { x = 1526.7, y = 287.1, z = -1305.5 }, rot = { x = 0.0, y = 327.4, z = 0.0 }, level = 10 },
	{ config_id = 2659, gadget_id = 70220013, pos = { x = 1529.0, y = 287.2, z = -1306.4 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 10 },
	{ config_id = 2660, gadget_id = 70220013, pos = { x = 1530.9, y = 287.0, z = -1307.6 }, rot = { x = 0.0, y = 164.8, z = 0.0 }, level = 10 },
	{ config_id = 2661, gadget_id = 70220014, pos = { x = 1532.3, y = 286.8, z = -1300.4 }, rot = { x = 0.0, y = 238.9, z = 0.0 }, level = 10 },
	{ config_id = 2662, gadget_id = 70220014, pos = { x = 1520.0, y = 287.7, z = -1287.2 }, rot = { x = 0.0, y = 306.6, z = 0.0 }, level = 10 },
	{ config_id = 2663, gadget_id = 70220014, pos = { x = 1521.1, y = 287.4, z = -1286.2 }, rot = { x = 0.0, y = 47.7, z = 0.0 }, level = 10 },
	{ config_id = 2665, gadget_id = 70220010, pos = { x = 1524.7, y = 287.2, z = -1303.7 }, rot = { x = 0.0, y = 163.5, z = 0.0 }, level = 10 },
	{ config_id = 2666, gadget_id = 70211012, pos = { x = 1529.7, y = 287.5, z = -1292.1 }, rot = { x = 0.0, y = 61.7, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2718, gadget_id = 70220010, pos = { x = 1534.0, y = 286.8, z = -1288.9 }, rot = { x = 0.0, y = 163.5, z = 0.0 }, level = 10 },
	{ config_id = 2719, gadget_id = 70220013, pos = { x = 1533.7, y = 286.8, z = -1299.1 }, rot = { x = 0.0, y = 164.8, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_434", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_434", action = "action_EVENT_ANY_MONSTER_DIE_434", tlog_tag = "小平原_营地3_交接山区_结束" }
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
		-- description = suite_2,
		monsters = { 1026, 1027, 1028 },
		gadgets = { 2655, 2656, 2657, 2658, 2659, 2660, 2661, 2662, 2663, 2665, 2666 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_434" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_434(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_434(context, evt)
	-- 将configid为 2666 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2666, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

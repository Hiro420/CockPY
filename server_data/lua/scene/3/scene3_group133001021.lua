--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 999, monster_id = 21010401, pos = { x = 1754.4, y = 251.6, z = -1153.2 }, rot = { x = 0.0, y = 94.3, z = 0.0 }, level = 9, drop_tag = "远程丘丘人" },
	{ config_id = 1000, monster_id = 21010301, pos = { x = 1759.0, y = 251.0, z = -1163.8 }, rot = { x = 0.0, y = 101.6, z = 0.0 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1001, monster_id = 21010201, pos = { x = 1755.9, y = 251.5, z = -1161.3 }, rot = { x = 0.0, y = 39.3, z = 358.9 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1002, monster_id = 21010601, pos = { x = 1754.6, y = 251.8, z = -1156.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1010, monster_id = 21010701, pos = { x = 1753.0, y = 251.8, z = -1160.9 }, rot = { x = 0.0, y = 78.4, z = 0.0 }, level = 8, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2631, gadget_id = 70900019, pos = { x = 1752.2, y = 251.9, z = -1157.7 }, rot = { x = 0.0, y = 237.5, z = 0.0 }, level = 10 },
	{ config_id = 2632, gadget_id = 70220013, pos = { x = 1745.7, y = 252.6, z = -1156.1 }, rot = { x = 0.0, y = 22.9, z = 0.0 }, level = 10 },
	{ config_id = 2633, gadget_id = 70220013, pos = { x = 1757.1, y = 251.0, z = -1152.1 }, rot = { x = 0.0, y = 70.9, z = 0.0 }, level = 10 },
	{ config_id = 2635, gadget_id = 70220013, pos = { x = 1749.3, y = 252.1, z = -1164.9 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 10 },
	{ config_id = 2636, gadget_id = 70220013, pos = { x = 1753.4, y = 251.7, z = -1164.4 }, rot = { x = 0.0, y = 164.8, z = 0.0 }, level = 10 },
	{ config_id = 2637, gadget_id = 70220014, pos = { x = 1754.4, y = 251.6, z = -1162.7 }, rot = { x = 0.0, y = 238.9, z = 0.0 }, level = 10 },
	{ config_id = 2641, gadget_id = 70220010, pos = { x = 1757.6, y = 251.3, z = -1162.4 }, rot = { x = 0.0, y = 163.5, z = 0.0 }, level = 10 },
	{ config_id = 2642, gadget_id = 70211012, pos = { x = 1751.2, y = 252.0, z = -1156.9 }, rot = { x = 0.0, y = 324.0, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2668, gadget_id = 70220013, pos = { x = 1750.2, y = 252.4, z = -1150.1 }, rot = { x = 0.0, y = 346.9, z = 0.0 }, level = 10 },
	{ config_id = 2670, gadget_id = 70220014, pos = { x = 1746.3, y = 252.0, z = -1160.1 }, rot = { x = 0.0, y = 238.9, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_432", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_432", action = "action_EVENT_ANY_MONSTER_DIE_432", tlog_tag = "小平原_营地1_交接山区_结束" }
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
		-- description = suite_1,
		monsters = { 999, 1000, 1001, 1002, 1010 },
		gadgets = { 2631, 2632, 2633, 2635, 2636, 2637, 2641, 2642, 2668, 2670 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_432" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_432(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_432(context, evt)
	-- 将configid为 2642 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2642, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

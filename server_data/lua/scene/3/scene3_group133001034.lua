--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 182, monster_id = 21010901, pos = { x = 1881.2, y = 195.5, z = -1561.5 }, rot = { x = 0.0, y = 68.0, z = 0.0 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 213, monster_id = 21010901, pos = { x = 1866.9, y = 196.6, z = -1550.3 }, rot = { x = 0.0, y = 31.2, z = 0.0 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 214, monster_id = 21010301, pos = { x = 1872.3, y = 196.5, z = -1552.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "丘丘人", ban_excel_drop = true },
	{ config_id = 215, monster_id = 21030101, pos = { x = 1874.9, y = 196.3, z = -1555.1 }, rot = { x = 0.0, y = 40.9, z = 0.0 }, level = 7, drop_tag = "丘丘萨满", ban_excel_drop = true },
	{ config_id = 683, monster_id = 21010201, pos = { x = 1876.0, y = 196.3, z = -1552.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "丘丘人" },
	{ config_id = 684, monster_id = 21010401, pos = { x = 1880.9, y = 195.6, z = -1561.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 685, monster_id = 21030301, pos = { x = 1872.1, y = 196.4, z = -1554.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "丘丘萨满" },
	{ config_id = 686, monster_id = 21010401, pos = { x = 1867.0, y = 196.6, z = -1550.4 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 7, drop_tag = "远程丘丘人", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 528, gadget_id = 70211012, pos = { x = 1873.5, y = 196.2, z = -1557.4 }, rot = { x = 0.0, y = 357.7, z = 0.0 }, level = 5, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 1926, gadget_id = 70310006, pos = { x = 1873.6, y = 196.4, z = -1553.8 }, rot = { x = 0.0, y = 313.1, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 1927, gadget_id = 70220005, pos = { x = 1871.8, y = 196.5, z = -1550.8 }, rot = { x = 0.0, y = 247.6, z = 0.0 }, level = 5 },
	{ config_id = 1928, gadget_id = 70220005, pos = { x = 1872.7, y = 196.5, z = -1550.6 }, rot = { x = 0.0, y = 274.7, z = 0.0 }, level = 5 },
	{ config_id = 1929, gadget_id = 70220005, pos = { x = 1870.9, y = 195.9, z = -1562.2 }, rot = { x = 0.0, y = 131.6, z = 0.0 }, level = 5 },
	{ config_id = 2710, gadget_id = 70220005, pos = { x = 1881.2, y = 195.8, z = -1559.7 }, rot = { x = 0.0, y = 131.6, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_8", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8", action = "action_EVENT_ANY_MONSTER_DIE_8", trigger_count = 0, tlog_tag = "小平原_营地_海滩_完成" }
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
		monsters = { 182, 213, 214, 215 },
		gadgets = { 528, 1926, 1927, 1928, 1929, 2710 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 683, 684, 685, 686 },
		gadgets = { 528, 1926, 1927, 1928, 1929 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001034) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 将configid为 528 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 528, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 25010201, pos = { x = 1276.2, y = 231.1, z = 1121.8 }, rot = { x = 0.0, y = 62.1, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 72004, monster_id = 25020201, pos = { x = 1277.8, y = 234.0, z = 1141.5 }, rot = { x = 0.0, y = 235.0, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 72005, monster_id = 25040201, pos = { x = 1279.3, y = 233.9, z = 1140.7 }, rot = { x = 0.0, y = 176.3, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 72006, monster_id = 25030201, pos = { x = 1287.4, y = 230.3, z = 1121.1 }, rot = { x = 0.0, y = 29.1, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 72008, monster_id = 25010201, pos = { x = 1276.5, y = 233.8, z = 1140.1 }, rot = { x = 0.0, y = 182.7, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72002, gadget_id = 70211022, pos = { x = 1285.2, y = 230.7, z = 1117.4 }, rot = { x = 354.8, y = 272.1, z = 354.5 }, level = 28, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 72007, gadget_id = 70310009, pos = { x = 1281.0, y = 232.4, z = 1131.6 }, rot = { x = 346.1, y = 1.5, z = 355.3 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 72009, gadget_id = 70210101, pos = { x = 1285.0, y = 232.4, z = 1114.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 72010, gadget_id = 70210101, pos = { x = 1275.7, y = 234.7, z = 1141.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 72011, gadget_id = 70210101, pos = { x = 1284.9, y = 231.5, z = 1119.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 72012, gadget_id = 70310001, pos = { x = 1298.4, y = 226.7, z = 1116.7 }, rot = { x = 351.9, y = 1.7, z = 336.4 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 72013, gadget_id = 70310001, pos = { x = 1295.8, y = 229.6, z = 1128.2 }, rot = { x = 336.5, y = 1.1, z = 354.6 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 72014, gadget_id = 70310001, pos = { x = 1276.9, y = 233.6, z = 1137.3 }, rot = { x = 355.5, y = 359.9, z = 2.7 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_72003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72003", action = "action_EVENT_ANY_MONSTER_DIE_72003" }
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
		monsters = { 72001, 72004, 72005, 72006, 72008 },
		gadgets = { 72002, 72007, 72009, 72010, 72011, 72012, 72013, 72014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72003(context, evt)
	-- 将configid为 72002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

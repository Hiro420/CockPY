--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117, monster_id = 21010201, pos = { x = 1050.9, y = 200.8, z = 173.9 }, rot = { x = 0.0, y = 321.2, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 127, monster_id = 21010301, pos = { x = 1048.2, y = 200.8, z = 178.0 }, rot = { x = 0.0, y = 147.7, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 128, monster_id = 21020201, pos = { x = 1047.4, y = 200.8, z = 170.8 }, rot = { x = 1.2, y = 45.8, z = 1.3 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 132, monster_id = 21010501, pos = { x = 1058.3, y = 200.8, z = 168.6 }, rot = { x = 0.0, y = 26.9, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 135, monster_id = 21030201, pos = { x = 1051.2, y = 200.8, z = 168.5 }, rot = { x = 358.9, y = 55.7, z = 1.4 }, level = 15, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 314, monster_id = 21020301, pos = { x = 1061.4, y = 200.8, z = 175.0 }, rot = { x = 359.4, y = 16.3, z = 358.9 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 315, monster_id = 21011201, pos = { x = 1057.8, y = 200.8, z = 183.4 }, rot = { x = 0.0, y = 75.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 316, monster_id = 21011201, pos = { x = 1067.4, y = 200.7, z = 175.1 }, rot = { x = 0.0, y = 350.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 317, monster_id = 21030301, pos = { x = 1045.1, y = 200.8, z = 175.3 }, rot = { x = 0.0, y = 45.7, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 318, monster_id = 21010501, pos = { x = 1053.7, y = 206.2, z = 179.9 }, rot = { x = 0.0, y = 16.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 324, monster_id = 21010301, pos = { x = 1039.7, y = 200.8, z = 180.3 }, rot = { x = 0.0, y = 322.0, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 325, monster_id = 21010301, pos = { x = 1037.5, y = 200.8, z = 180.8 }, rot = { x = 0.0, y = 123.1, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 279, gadget_id = 70211022, pos = { x = 1054.1, y = 200.6, z = 174.7 }, rot = { x = 353.6, y = 24.6, z = 359.0 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 293, gadget_id = 70220013, pos = { x = 1038.0, y = 200.3, z = 176.0 }, rot = { x = 354.6, y = 0.1, z = 1.8 }, level = 1 },
	{ config_id = 294, gadget_id = 70220013, pos = { x = 1034.9, y = 200.3, z = 177.7 }, rot = { x = 359.6, y = 319.3, z = 5.0 }, level = 1 },
	{ config_id = 73001, gadget_id = 70310009, pos = { x = 1038.8, y = 200.5, z = 180.6 }, rot = { x = 358.6, y = 100.1, z = 357.9 }, level = 1 },
	{ config_id = 73002, gadget_id = 70310001, pos = { x = 1057.4, y = 200.8, z = 190.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 73003, gadget_id = 70310001, pos = { x = 1064.3, y = 200.8, z = 190.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_165", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165", action = "action_EVENT_ANY_MONSTER_DIE_165" }
}

-- 变量
variables = {
	{ name = "finish", value = 0, no_refresh = false }
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
		monsters = { 314, 315, 316, 318, 324, 325 },
		gadgets = { 279, 293, 294, 73001, 73002, 73003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_165" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 117, 127, 128, 132, 135, 317 },
		gadgets = { 293, 294, 73001, 73002, 73003 },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 将configid为 279 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 22010101, pos = { x = -653.1, y = 212.5, z = 1295.9 }, rot = { x = 0.0, y = 41.3, z = 0.0 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013 },
	{ config_id = 113006, monster_id = 21030201, pos = { x = -645.5, y = 212.8, z = 1292.3 }, rot = { x = 0.0, y = 84.3, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 113007, monster_id = 21011001, pos = { x = -644.9, y = 212.7, z = 1288.6 }, rot = { x = 0.0, y = 283.6, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9002 },
	{ config_id = 113024, monster_id = 21010601, pos = { x = -672.7, y = 212.4, z = 1293.9 }, rot = { x = 0.0, y = 260.5, z = 0.0 }, level = 30, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 113025, monster_id = 21011201, pos = { x = -672.7, y = 211.7, z = 1286.1 }, rot = { x = 0.0, y = 239.9, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 113026, monster_id = 21020301, pos = { x = -654.4, y = 212.0, z = 1285.5 }, rot = { x = 0.0, y = 321.1, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 113028, monster_id = 21010201, pos = { x = -663.5, y = 213.0, z = 1307.9 }, rot = { x = 0.0, y = 216.2, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 113029, monster_id = 21010201, pos = { x = -659.9, y = 212.3, z = 1299.2 }, rot = { x = 0.0, y = 267.6, z = 0.0 }, level = 30, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113002, gadget_id = 70211022, pos = { x = -651.4, y = 212.8, z = 1298.2 }, rot = { x = 12.8, y = 218.9, z = 2.4 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 113004, gadget_id = 70300107, pos = { x = -653.6, y = 212.7, z = 1298.8 }, rot = { x = 0.0, y = 82.2, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 113005, gadget_id = 70300107, pos = { x = -650.1, y = 212.8, z = 1296.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 113008, gadget_id = 70310001, pos = { x = -669.5, y = 211.3, z = 1279.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 113009, gadget_id = 70310001, pos = { x = -674.4, y = 211.8, z = 1287.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 113010, gadget_id = 70310001, pos = { x = -666.6, y = 212.9, z = 1306.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 113011, gadget_id = 70310001, pos = { x = -643.2, y = 213.5, z = 1295.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 113012, gadget_id = 70220013, pos = { x = -661.9, y = 213.2, z = 1309.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113013, gadget_id = 70220013, pos = { x = -660.0, y = 211.7, z = 1275.7 }, rot = { x = 0.0, y = 56.8, z = 0.0 }, level = 32 },
	{ config_id = 113014, gadget_id = 70220013, pos = { x = -655.8, y = 212.0, z = 1282.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113015, gadget_id = 70220014, pos = { x = -661.0, y = 211.7, z = 1274.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113016, gadget_id = 70220014, pos = { x = -655.6, y = 212.1, z = 1281.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113017, gadget_id = 70220014, pos = { x = -657.3, y = 212.0, z = 1282.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113018, gadget_id = 70220014, pos = { x = -674.8, y = 212.6, z = 1293.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113019, gadget_id = 70220014, pos = { x = -674.7, y = 212.4, z = 1292.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113020, gadget_id = 70220014, pos = { x = -660.3, y = 213.2, z = 1308.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113021, gadget_id = 70220014, pos = { x = -640.6, y = 212.8, z = 1285.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113022, gadget_id = 70300085, pos = { x = -656.9, y = 212.0, z = 1290.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113023, gadget_id = 70300089, pos = { x = -674.3, y = 212.2, z = 1291.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 113027, gadget_id = 70300087, pos = { x = -657.1, y = 212.5, z = 1290.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_113003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113003", action = "action_EVENT_ANY_MONSTER_DIE_113003" }
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
		monsters = { 113001, 113006, 113007, 113024, 113025, 113026, 113028, 113029 },
		gadgets = { 113002, 113004, 113005, 113008, 113009, 113010, 113011, 113012, 113013, 113014, 113015, 113016, 113017, 113018, 113019, 113020, 113021, 113022, 113023, 113027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_113003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 将configid为 113002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end

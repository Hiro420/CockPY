--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011301, pos = { x = 343.1, y = -28.9, z = 429.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 20011201, pos = { x = 348.4, y = -29.0, z = 426.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20011201, pos = { x = 348.3, y = -29.0, z = 435.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1004, monster_id = 20011201, pos = { x = 338.3, y = -29.0, z = 425.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1005, monster_id = 20011201, pos = { x = 338.3, y = -29.0, z = 435.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1006, monster_id = 21010701, pos = { x = 350.6, y = -28.0, z = 414.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1007, monster_id = 21010701, pos = { x = 343.8, y = -28.0, z = 414.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1008, monster_id = 21010701, pos = { x = 335.2, y = -28.0, z = 414.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1009, monster_id = 21010201, pos = { x = 349.7, y = -29.0, z = 426.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1010, monster_id = 21010201, pos = { x = 338.2, y = -28.8, z = 435.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1011, monster_id = 20020101, pos = { x = 343.2, y = -28.9, z = 431.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1012, monster_id = 21010301, pos = { x = 347.9, y = -28.9, z = 428.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1013, monster_id = 21010301, pos = { x = 343.4, y = -28.9, z = 430.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1014, monster_id = 21010301, pos = { x = 338.4, y = -28.9, z = 428.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1015, monster_id = 21010601, pos = { x = 343.2, y = -27.9, z = 415.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1016, gadget_id = 70350003, pos = { x = 333.2, y = -28.1, z = 404.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350003, pos = { x = 343.0, y = -28.1, z = 404.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1018, gadget_id = 70350003, pos = { x = 353.1, y = -28.0, z = 404.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1019, gadget_id = 70220010, pos = { x = 348.3, y = -28.8, z = 435.7 }, rot = { x = 0.0, y = 101.8, z = 0.0 }, level = 1 },
	{ config_id = 1020, gadget_id = 70220010, pos = { x = 348.4, y = -28.8, z = 425.6 }, rot = { x = 0.0, y = 0.6, z = 0.0 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220010, pos = { x = 338.2, y = -28.8, z = 425.8 }, rot = { x = 0.0, y = 177.5, z = 0.0 }, level = 1 },
	{ config_id = 1022, gadget_id = 70220010, pos = { x = 338.3, y = -28.8, z = 435.8 }, rot = { x = 0.0, y = 88.9, z = 0.0 }, level = 1 },
	{ config_id = 1023, gadget_id = 70310001, pos = { x = 350.3, y = -29.0, z = 423.7 }, rot = { x = 0.0, y = 128.7, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1024, gadget_id = 70310001, pos = { x = 336.9, y = -29.0, z = 423.7 }, rot = { x = 0.0, y = 347.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1025, gadget_id = 70310001, pos = { x = 337.2, y = -29.0, z = 437.5 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1026, gadget_id = 70310001, pos = { x = 349.4, y = -29.0, z = 437.1 }, rot = { x = 0.0, y = 242.7, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { 1001, 1002, 1003, 1004, 1005 },
		gadgets = { 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 50
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1006, 1007, 1008, 1009, 1010 },
		gadgets = { 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 50
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1011 },
		gadgets = { 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 40
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 1012, 1013, 1014, 1015 },
		gadgets = { 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 将configid为 1016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1016, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1018, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

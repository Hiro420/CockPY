--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266, monster_id = 21010301, pos = { x = 1901.6, y = 241.4, z = -642.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 267, monster_id = 21010501, pos = { x = 1899.3, y = 241.6, z = -636.4 }, rot = { x = 0.0, y = 155.3, z = 0.0 }, level = 10, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 268, monster_id = 21010501, pos = { x = 1905.2, y = 242.4, z = -638.4 }, rot = { x = 0.0, y = 187.6, z = 0.0 }, level = 10, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 269, monster_id = 21010701, pos = { x = 1904.9, y = 242.3, z = -638.3 }, rot = { x = 0.0, y = 259.0, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 270, monster_id = 21010701, pos = { x = 1899.8, y = 241.5, z = -639.1 }, rot = { x = 0.0, y = 116.2, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 271, monster_id = 21010201, pos = { x = 1900.4, y = 241.7, z = -638.2 }, rot = { x = 0.0, y = 124.1, z = 0.0 }, level = 10, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 272, monster_id = 21010201, pos = { x = 1905.2, y = 242.1, z = -641.1 }, rot = { x = 0.0, y = 290.6, z = 0.0 }, level = 10, drop_tag = "丘丘人" },
	{ config_id = 273, monster_id = 21010201, pos = { x = 1902.3, y = 242.0, z = -637.4 }, rot = { x = 0.0, y = 189.4, z = 0.0 }, level = 10, drop_tag = "丘丘人", pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1942, gadget_id = 70310006, pos = { x = 1902.2, y = 241.8, z = -639.8 }, rot = { x = 0.0, y = 124.6, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1943, gadget_id = 70220013, pos = { x = 1900.0, y = 241.9, z = -634.4 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 10 },
	{ config_id = 1944, gadget_id = 70220013, pos = { x = 1906.2, y = 242.7, z = -635.5 }, rot = { x = 352.5, y = 4.7, z = 6.0 }, level = 10 },
	{ config_id = 1945, gadget_id = 70220014, pos = { x = 1901.8, y = 242.2, z = -634.5 }, rot = { x = 0.0, y = 87.7, z = 0.0 }, level = 10 },
	{ config_id = 1946, gadget_id = 70220014, pos = { x = 1907.5, y = 243.0, z = -636.1 }, rot = { x = 0.0, y = 212.5, z = 0.0 }, level = 10 },
	{ config_id = 2120, gadget_id = 70211012, pos = { x = 1908.8, y = 242.5, z = -640.3 }, rot = { x = 0.8, y = 279.9, z = 9.0 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_292", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_292", action = "action_EVENT_ANY_MONSTER_DIE_292" }
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
		monsters = { 266, 267, 268 },
		gadgets = { 1942, 1943, 1944, 1945, 1946, 2120 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_292" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 269, 270 },
		gadgets = { 1942, 1943, 1944, 1945, 1946, 2120 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_292" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 271, 272, 273 },
		gadgets = { 1942, 1943, 1944, 1945, 1946, 2120 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_292" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 解锁目标2120
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2120, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 484006, monster_id = 21010701, pos = { x = 1488.9, y = 219.9, z = 483.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 484002, gadget_id = 70310001, pos = { x = 1480.3, y = 219.3, z = 460.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 484003, gadget_id = 70310001, pos = { x = 1488.5, y = 219.8, z = 476.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 484004, gadget_id = 70310001, pos = { x = 1474.6, y = 220.4, z = 473.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 484005, gadget_id = 70211111, pos = { x = 1461.9, y = 229.0, z = 501.7 }, rot = { x = 0.0, y = 90.5, z = 360.0 }, level = 18, drop_tag = "解谜中级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 484007, gadget_id = 70310001, pos = { x = 1487.6, y = 219.8, z = 482.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 484008, gadget_id = 70310001, pos = { x = 1488.4, y = 221.9, z = 511.3 }, rot = { x = 0.0, y = 32.9, z = 0.0 }, level = 18, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { 484006 },
		gadgets = { 484002, 484003, 484004, 484005, 484007, 484008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

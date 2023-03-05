--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47001, gadget_id = 70310010, pos = { x = -470.5, y = 209.3, z = 352.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 47002, gadget_id = 70310010, pos = { x = -505.8, y = 203.2, z = 326.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 47003, gadget_id = 70310010, pos = { x = -603.0, y = 227.1, z = 328.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 47004, gadget_id = 70310010, pos = { x = -679.4, y = 220.8, z = 255.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 47005, gadget_id = 70310010, pos = { x = -674.1, y = 219.9, z = 230.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 47006, gadget_id = 70310010, pos = { x = -605.0, y = 205.0, z = 157.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart }
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
		monsters = { },
		gadgets = { 47001, 47002, 47003, 47004, 47005, 47006 },
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 346004, monster_id = 21010401, pos = { x = 197.2, y = 241.1, z = 117.0 }, rot = { x = 0.0, y = 303.6, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 346005, monster_id = 21010101, pos = { x = 177.9, y = 239.1, z = 107.9 }, rot = { x = 0.0, y = 286.1, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 346001, gadget_id = 70220013, pos = { x = 189.5, y = 236.4, z = 116.0 }, rot = { x = 8.0, y = 0.6, z = 359.2 }, level = 19 },
	{ config_id = 346002, gadget_id = 70220013, pos = { x = 191.9, y = 236.9, z = 116.8 }, rot = { x = 7.1, y = 0.5, z = 0.1 }, level = 19 },
	{ config_id = 346003, gadget_id = 70220014, pos = { x = 196.4, y = 237.8, z = 110.1 }, rot = { x = 6.2, y = 359.9, z = 3.5 }, level = 19 },
	{ config_id = 346006, gadget_id = 70220005, pos = { x = 177.0, y = 239.1, z = 108.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 346007, gadget_id = 70220005, pos = { x = 176.6, y = 239.2, z = 106.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
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
		monsters = { 346004, 346005 },
		gadgets = { 346001, 346002, 346003, 346006, 346007 },
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
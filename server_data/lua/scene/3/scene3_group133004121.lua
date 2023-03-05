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
	{ config_id = 498, gadget_id = 70220014, pos = { x = 2276.1, y = 277.5, z = -165.8 }, rot = { x = 0.0, y = 118.6, z = 0.0 }, level = 15 },
	{ config_id = 499, gadget_id = 70220014, pos = { x = 2364.7, y = 281.0, z = -329.4 }, rot = { x = 17.8, y = 285.4, z = 3.9 }, level = 15 },
	{ config_id = 500, gadget_id = 70220014, pos = { x = 2365.4, y = 281.1, z = -330.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 501, gadget_id = 70220014, pos = { x = 2182.7, y = 236.1, z = -449.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 502, gadget_id = 70220014, pos = { x = 2275.4, y = 277.2, z = -168.1 }, rot = { x = 0.0, y = 225.2, z = 0.0 }, level = 15 },
	{ config_id = 503, gadget_id = 70220014, pos = { x = 2276.4, y = 277.1, z = -167.8 }, rot = { x = 0.0, y = 159.8, z = 0.0 }, level = 15 },
	{ config_id = 504, gadget_id = 70220014, pos = { x = 2213.2, y = 215.1, z = -43.5 }, rot = { x = 0.0, y = 151.3, z = 0.0 }, level = 23 },
	{ config_id = 505, gadget_id = 70220014, pos = { x = 2214.2, y = 215.1, z = -42.9 }, rot = { x = 0.0, y = 85.9, z = 0.0 }, level = 23 },
	{ config_id = 506, gadget_id = 70220014, pos = { x = 2211.0, y = 214.6, z = -43.1 }, rot = { x = 0.0, y = 44.7, z = 0.0 }, level = 23 },
	{ config_id = 507, gadget_id = 70220014, pos = { x = 2209.8, y = 211.2, z = -516.4 }, rot = { x = 0.0, y = 217.3, z = 0.0 }, level = 15 },
	{ config_id = 508, gadget_id = 70220014, pos = { x = 2210.8, y = 211.1, z = -517.0 }, rot = { x = 0.0, y = 151.9, z = 0.0 }, level = 15 },
	{ config_id = 509, gadget_id = 70220014, pos = { x = 2209.2, y = 210.9, z = -514.5 }, rot = { x = 355.5, y = 110.4, z = 3.8 }, level = 15 },
	{ config_id = 510, gadget_id = 70220013, pos = { x = 2366.3, y = 281.4, z = -329.0 }, rot = { x = 0.0, y = 286.9, z = 0.0 }, level = 15 },
	{ config_id = 512, gadget_id = 70220013, pos = { x = 2067.2, y = 204.1, z = -70.2 }, rot = { x = 0.0, y = 21.4, z = 0.0 }, level = 15 }
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
		-- description = ,
		monsters = { },
		gadgets = { 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 512 },
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
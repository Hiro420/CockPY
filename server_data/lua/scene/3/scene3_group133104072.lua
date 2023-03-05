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
	{ config_id = 157, gadget_id = 70500000, pos = { x = 538.9, y = 203.2, z = 69.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 158, gadget_id = 70500000, pos = { x = 333.0, y = 234.0, z = 214.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 159, gadget_id = 70500000, pos = { x = 109.1, y = 208.7, z = 724.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 160, gadget_id = 70500000, pos = { x = 237.0, y = 260.7, z = 137.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 161, gadget_id = 70500000, pos = { x = 126.2, y = 293.9, z = 333.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 162, gadget_id = 70500000, pos = { x = 830.1, y = 203.5, z = 272.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 163, gadget_id = 70500000, pos = { x = 896.7, y = 287.1, z = 338.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 164, gadget_id = 70500000, pos = { x = 29.4, y = 284.6, z = 221.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 177, gadget_id = 70500000, pos = { x = 901.7, y = 242.2, z = 365.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 184, gadget_id = 70500000, pos = { x = 552.6, y = 223.6, z = 798.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 532, gadget_id = 70500000, pos = { x = 279.0, y = 227.3, z = 465.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 72001, gadget_id = 70500000, pos = { x = 452.9, y = 230.4, z = 476.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 72002, gadget_id = 70500000, pos = { x = -122.9, y = 308.4, z = 245.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true }
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
		gadgets = { 157, 158, 159, 160, 161, 162, 163, 164, 177, 184, 532, 72001, 72002 },
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

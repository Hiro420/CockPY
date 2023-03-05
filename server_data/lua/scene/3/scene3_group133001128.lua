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
	{ config_id = 1881, gadget_id = 70211001, pos = { x = 1295.4, y = 255.5, z = -1512.5 }, rot = { x = 0.0, y = 314.5, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1882, gadget_id = 70211001, pos = { x = 1263.4, y = 255.1, z = -1534.8 }, rot = { x = 0.0, y = 311.3, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1883, gadget_id = 70211001, pos = { x = 1458.3, y = 242.1, z = -1609.4 }, rot = { x = 0.0, y = 103.1, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1884, gadget_id = 70211001, pos = { x = 1490.7, y = 244.1, z = -1578.7 }, rot = { x = 0.0, y = 167.6, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1885, gadget_id = 70211101, pos = { x = 1586.8, y = 258.8, z = -1538.0 }, rot = { x = 0.0, y = 183.3, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1886, gadget_id = 70211001, pos = { x = 1299.0, y = 267.5, z = -1702.4 }, rot = { x = 0.0, y = 289.2, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1887, gadget_id = 70211001, pos = { x = 1246.9, y = 263.2, z = -1723.1 }, rot = { x = 0.0, y = 36.4, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1912, gadget_id = 70211001, pos = { x = 1356.1, y = 256.2, z = -1675.4 }, rot = { x = 0.0, y = 188.2, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2102, gadget_id = 70211101, pos = { x = 1493.7, y = 269.2, z = -1774.8 }, rot = { x = 0.0, y = 262.3, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2412, gadget_id = 70211001, pos = { x = 1312.9, y = 271.5, z = -1501.0 }, rot = { x = 0.0, y = 323.9, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2600, gadget_id = 70211101, pos = { x = 1474.5, y = 330.1, z = -1981.3 }, rot = { x = 0.0, y = 200.8, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
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
		gadgets = { 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1912, 2102, 2412, 2600 },
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

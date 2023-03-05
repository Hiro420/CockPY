--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 614, monster_id = 28010301, pos = { x = 1388.3, y = 234.9, z = -1490.1 }, rot = { x = 0.0, y = 92.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 615, monster_id = 28010301, pos = { x = 1372.0, y = 235.1, z = -1494.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 616, monster_id = 28010302, pos = { x = 1410.8, y = 234.4, z = -1494.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 617, monster_id = 28010302, pos = { x = 1409.2, y = 234.6, z = -1476.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 618, monster_id = 28010303, pos = { x = 1408.0, y = 234.4, z = -1510.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 619, monster_id = 28010303, pos = { x = 1414.3, y = 235.4, z = -1540.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 656, monster_id = 28030301, pos = { x = 1297.6, y = 257.4, z = -1677.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 658, monster_id = 28030301, pos = { x = 1325.7, y = 256.8, z = -1679.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 660, monster_id = 28030301, pos = { x = 1320.9, y = 254.4, z = -1672.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 661, monster_id = 28030301, pos = { x = 1317.0, y = 261.6, z = -1672.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 804, monster_id = 28020102, pos = { x = 1453.2, y = 242.2, z = -1532.2 }, rot = { x = 0.0, y = 105.9, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 805, monster_id = 28020102, pos = { x = 1453.5, y = 242.1, z = -1533.9 }, rot = { x = 0.0, y = 62.6, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 977, monster_id = 28020301, pos = { x = 1490.5, y = 264.6, z = -1720.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 978, monster_id = 28020102, pos = { x = 1477.1, y = 268.9, z = -1759.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 979, monster_id = 28020102, pos = { x = 1461.7, y = 271.1, z = -1767.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 980, monster_id = 28020102, pos = { x = 1328.7, y = 280.9, z = -1777.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 981, monster_id = 28020102, pos = { x = 1324.0, y = 275.4, z = -1735.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1164, monster_id = 28030401, pos = { x = 1385.3, y = 322.7, z = -1975.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1165, monster_id = 28030401, pos = { x = 1384.9, y = 322.5, z = -1973.8 }, rot = { x = 0.0, y = 163.7, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1166, monster_id = 28030401, pos = { x = 1385.2, y = 322.6, z = -1975.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1167, monster_id = 28020201, pos = { x = 1379.6, y = 323.0, z = -1983.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2592, gadget_id = 70211101, pos = { x = 1409.5, y = 300.7, z = -1845.2 }, rot = { x = 0.0, y = 53.6, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2593, gadget_id = 70211101, pos = { x = 1323.2, y = 303.3, z = -1862.4 }, rot = { x = 0.0, y = 25.9, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2594, gadget_id = 70211101, pos = { x = 1409.5, y = 304.9, z = -1888.9 }, rot = { x = 0.0, y = 339.6, z = 347.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
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
		monsters = { 614, 615, 616, 617, 618, 619, 656, 658, 660, 661, 804, 805, 977, 978, 979, 980, 981, 1165, 1166, 1167 },
		gadgets = { 2592, 2593, 2594 },
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

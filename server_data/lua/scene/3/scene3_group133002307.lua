--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 28040102, pos = { x = 1772.6, y = 200.0, z = -50.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307002, monster_id = 28040102, pos = { x = 1774.9, y = 200.0, z = -45.9 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307003, monster_id = 28040102, pos = { x = 1772.3, y = 200.0, z = -45.4 }, rot = { x = 0.0, y = 29.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307004, monster_id = 28040102, pos = { x = 1778.7, y = 200.0, z = -48.9 }, rot = { x = 0.0, y = 330.8, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307005, monster_id = 28040102, pos = { x = 1805.8, y = 200.0, z = -12.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307006, monster_id = 28040102, pos = { x = 1803.7, y = 200.0, z = -17.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307007, monster_id = 28040102, pos = { x = 1801.9, y = 200.0, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 307008, monster_id = 28030501, pos = { x = 1788.4, y = 200.0, z = -1.3 }, rot = { x = 0.0, y = 137.4, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 307009, monster_id = 28030501, pos = { x = 1792.4, y = 200.0, z = 2.0 }, rot = { x = 0.0, y = 227.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 307010, monster_id = 28030501, pos = { x = 1789.5, y = 200.0, z = 6.1 }, rot = { x = 0.0, y = 159.7, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 307011, monster_id = 28020102, pos = { x = 1639.0, y = 246.6, z = -130.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307012, monster_id = 28020102, pos = { x = 1660.3, y = 248.5, z = -120.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307013, monster_id = 28020102, pos = { x = 1635.4, y = 255.6, z = -86.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307014, monster_id = 28030402, pos = { x = 1647.5, y = 250.6, z = -106.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 307015, monster_id = 28030402, pos = { x = 1650.0, y = 250.9, z = -105.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 307016, monster_id = 28030402, pos = { x = 1649.0, y = 250.2, z = -107.7 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 307017, monster_id = 28020301, pos = { x = 1726.3, y = 261.7, z = -96.6 }, rot = { x = 345.6, y = 359.0, z = 8.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307018, monster_id = 28020301, pos = { x = 1713.8, y = 263.9, z = -80.5 }, rot = { x = 14.5, y = 193.6, z = 357.1 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307019, monster_id = 28020301, pos = { x = 1688.9, y = 283.4, z = -23.4 }, rot = { x = 0.0, y = 194.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307020, monster_id = 28020102, pos = { x = 1635.0, y = 229.6, z = 4.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307021, monster_id = 28020102, pos = { x = 1609.0, y = 234.1, z = 6.5 }, rot = { x = 0.0, y = 85.7, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307022, monster_id = 28020301, pos = { x = 1607.0, y = 242.9, z = -103.6 }, rot = { x = 344.4, y = 359.1, z = 6.3 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307023, monster_id = 28020301, pos = { x = 1603.5, y = 244.0, z = -100.2 }, rot = { x = 350.0, y = 92.2, z = 6.6 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307024, monster_id = 28020102, pos = { x = 1544.8, y = 231.8, z = -160.0 }, rot = { x = 0.0, y = 148.5, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307025, monster_id = 28030101, pos = { x = 1558.4, y = 234.0, z = -136.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 307026, monster_id = 28030101, pos = { x = 1558.5, y = 233.4, z = -138.5 }, rot = { x = 0.0, y = 275.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 307027, monster_id = 28020201, pos = { x = 1585.3, y = 237.1, z = -147.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307028, monster_id = 28020201, pos = { x = 1581.9, y = 236.6, z = -146.1 }, rot = { x = 0.0, y = 103.1, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 307029, monster_id = 28050101, pos = { x = 1669.5, y = 267.8, z = -45.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "魔法生物" },
	{ config_id = 307030, monster_id = 28050101, pos = { x = 1672.2, y = 268.0, z = -55.1 }, rot = { x = 0.0, y = 114.3, z = 0.0 }, level = 16, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 307001, 307002, 307003, 307004, 307005, 307006, 307007, 307008, 307009, 307010, 307011, 307012, 307013, 307014, 307015, 307016, 307017, 307018, 307019, 307020, 307021, 307022, 307023, 307024, 307025, 307026, 307027, 307028, 307029, 307030 },
		gadgets = { },
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 805001, monster_id = 28030401, pos = { x = 662.8, y = 244.3, z = 819.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805002, monster_id = 28030401, pos = { x = 656.1, y = 244.4, z = 813.3 }, rot = { x = 0.0, y = 112.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805003, monster_id = 28030402, pos = { x = 699.4, y = 245.5, z = 805.4 }, rot = { x = 0.0, y = 203.7, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805004, monster_id = 28020301, pos = { x = 712.5, y = 240.6, z = 797.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 805005, monster_id = 28020301, pos = { x = 717.7, y = 240.9, z = 798.3 }, rot = { x = 0.0, y = 287.6, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 805006, monster_id = 28020301, pos = { x = 715.0, y = 240.8, z = 800.7 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 805007, monster_id = 28030402, pos = { x = 685.6, y = 238.8, z = 788.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805008, monster_id = 28030402, pos = { x = 686.5, y = 238.9, z = 792.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805009, monster_id = 28030402, pos = { x = 684.6, y = 238.8, z = 791.6 }, rot = { x = 0.0, y = 295.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805010, monster_id = 28030402, pos = { x = 682.8, y = 239.1, z = 796.0 }, rot = { x = 0.0, y = 235.9, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805011, monster_id = 28030204, pos = { x = 664.7, y = 258.8, z = 840.5 }, rot = { x = 0.0, y = 275.6, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805012, monster_id = 28030204, pos = { x = 642.1, y = 253.6, z = 927.4 }, rot = { x = 0.0, y = 271.5, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 805013, monster_id = 28030204, pos = { x = 603.7, y = 276.6, z = 980.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 805014, monster_id = 28020201, pos = { x = 767.5, y = 222.0, z = 827.4 }, rot = { x = 0.0, y = 315.6, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 805015, monster_id = 28030401, pos = { x = 756.9, y = 225.4, z = 836.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 805016, monster_id = 28030401, pos = { x = 751.5, y = 227.9, z = 835.3 }, rot = { x = 0.0, y = 279.3, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 805017, monster_id = 28030401, pos = { x = 752.6, y = 227.8, z = 836.1 }, rot = { x = 0.0, y = 288.3, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 805018, monster_id = 28030402, pos = { x = 568.8, y = 206.1, z = 948.2 }, rot = { x = 0.0, y = 234.7, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805019, monster_id = 28020301, pos = { x = 732.0, y = 216.7, z = 864.7 }, rot = { x = 349.9, y = 352.9, z = 24.5 }, level = 1, drop_tag = "走兽" },
	{ config_id = 805020, monster_id = 28020201, pos = { x = 586.6, y = 206.1, z = 938.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "走兽", disableWander = true },
	{ config_id = 805021, monster_id = 28030401, pos = { x = 723.9, y = 244.5, z = 741.9 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805022, monster_id = 28030401, pos = { x = 729.6, y = 245.2, z = 743.9 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805023, monster_id = 28030401, pos = { x = 728.0, y = 243.7, z = 737.8 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805024, monster_id = 28030401, pos = { x = 727.2, y = 244.4, z = 740.3 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805025, monster_id = 28030401, pos = { x = 696.0, y = 235.2, z = 726.9 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805026, monster_id = 28030401, pos = { x = 695.9, y = 234.9, z = 725.6 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805027, monster_id = 28030401, pos = { x = 725.6, y = 245.7, z = 743.7 }, rot = { x = 0.0, y = 347.3, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 805028, monster_id = 28030101, pos = { x = 782.3, y = 247.9, z = 759.4 }, rot = { x = 0.0, y = 347.3, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805029, monster_id = 28030101, pos = { x = 782.7, y = 248.0, z = 758.0 }, rot = { x = 0.0, y = 94.5, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805030, monster_id = 28030401, pos = { x = 777.9, y = 248.3, z = 751.9 }, rot = { x = 0.0, y = 347.3, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 805031, monster_id = 28030401, pos = { x = 780.2, y = 248.4, z = 752.0 }, rot = { x = 0.0, y = 347.3, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 805032, monster_id = 28030401, pos = { x = 751.5, y = 247.3, z = 808.3 }, rot = { x = 0.0, y = 314.4, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 805033, monster_id = 28030401, pos = { x = 750.0, y = 247.3, z = 808.4 }, rot = { x = 0.0, y = 75.2, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 805034, monster_id = 28030402, pos = { x = 569.7, y = 206.1, z = 947.7 }, rot = { x = 0.0, y = 234.7, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805035, monster_id = 28030402, pos = { x = 568.8, y = 207.2, z = 946.9 }, rot = { x = 0.0, y = 234.7, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805036, monster_id = 28030402, pos = { x = 569.4, y = 207.6, z = 946.0 }, rot = { x = 0.0, y = 325.6, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805037, monster_id = 28030401, pos = { x = 620.8, y = 211.5, z = 931.3 }, rot = { x = 0.0, y = 222.5, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805038, monster_id = 28030401, pos = { x = 618.7, y = 211.4, z = 932.3 }, rot = { x = 0.0, y = 15.4, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805039, monster_id = 28020201, pos = { x = 802.3, y = 227.1, z = 735.1 }, rot = { x = 0.0, y = 129.9, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 805040, monster_id = 28030401, pos = { x = 710.2, y = 222.6, z = 683.3 }, rot = { x = 0.0, y = 288.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805041, monster_id = 28030401, pos = { x = 711.5, y = 222.5, z = 681.3 }, rot = { x = 0.0, y = 288.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805042, monster_id = 28030401, pos = { x = 712.1, y = 222.0, z = 678.5 }, rot = { x = 0.0, y = 288.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805043, monster_id = 28030401, pos = { x = 715.1, y = 221.5, z = 680.6 }, rot = { x = 0.0, y = 288.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805044, monster_id = 28020201, pos = { x = 814.7, y = 256.6, z = 876.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 805045, monster_id = 28020201, pos = { x = 762.7, y = 223.9, z = 818.7 }, rot = { x = 0.0, y = 165.2, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 805046, monster_id = 28020201, pos = { x = 748.8, y = 225.6, z = 675.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "走兽", disableWander = true },
	{ config_id = 805047, monster_id = 28020201, pos = { x = 746.3, y = 225.1, z = 678.3 }, rot = { x = 0.0, y = 85.2, z = 0.0 }, level = 19, drop_tag = "走兽", disableWander = true }
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
		monsters = { 805001, 805002, 805003, 805004, 805005, 805006, 805007, 805008, 805009, 805010, 805011, 805012, 805013, 805014, 805015, 805016, 805017, 805018, 805019, 805020, 805021, 805022, 805023, 805024, 805025, 805026, 805027, 805028, 805029, 805030, 805031, 805032, 805033, 805034, 805035, 805036, 805037, 805038, 805039, 805040, 805041, 805042, 805043, 805044, 805045, 805046, 805047 },
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

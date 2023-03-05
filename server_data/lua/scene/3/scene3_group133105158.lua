--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269, monster_id = 28020102, pos = { x = 659.3, y = 200.5, z = -21.3 }, rot = { x = 0.0, y = 262.5, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 270, monster_id = 28020102, pos = { x = 714.2, y = 204.3, z = -40.7 }, rot = { x = 0.0, y = 214.8, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 279, monster_id = 28030101, pos = { x = 596.1, y = 264.2, z = -149.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 280, monster_id = 28030101, pos = { x = 595.6, y = 264.5, z = -153.2 }, rot = { x = 0.0, y = 268.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 281, monster_id = 28030101, pos = { x = 591.6, y = 260.5, z = -158.8 }, rot = { x = 0.0, y = 266.7, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 282, monster_id = 28030101, pos = { x = 590.4, y = 260.5, z = -160.9 }, rot = { x = 0.0, y = 243.5, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 283, monster_id = 28030101, pos = { x = 582.5, y = 259.0, z = -167.4 }, rot = { x = 0.0, y = 89.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 284, monster_id = 28030101, pos = { x = 498.0, y = 200.0, z = -255.2 }, rot = { x = 0.0, y = 144.2, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 285, monster_id = 28030101, pos = { x = 488.8, y = 200.2, z = -267.0 }, rot = { x = 0.0, y = 163.6, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 286, monster_id = 28030101, pos = { x = 493.4, y = 200.3, z = -257.3 }, rot = { x = 0.0, y = 57.4, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 287, monster_id = 28030101, pos = { x = 480.4, y = 200.1, z = -263.2 }, rot = { x = 0.0, y = 266.7, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 288, monster_id = 28030101, pos = { x = 502.1, y = 199.9, z = -219.1 }, rot = { x = 0.0, y = 266.7, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 289, monster_id = 28030101, pos = { x = 424.0, y = 201.1, z = -146.4 }, rot = { x = 0.0, y = 239.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 290, monster_id = 28030101, pos = { x = 424.9, y = 201.2, z = -149.0 }, rot = { x = 0.0, y = 218.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 291, monster_id = 28030101, pos = { x = 431.7, y = 208.6, z = -263.0 }, rot = { x = 0.0, y = 89.0, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 292, monster_id = 28030101, pos = { x = 424.0, y = 202.5, z = -257.6 }, rot = { x = 0.0, y = 348.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 293, monster_id = 28030101, pos = { x = 522.7, y = 201.8, z = -60.9 }, rot = { x = 0.0, y = 261.8, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 294, monster_id = 28010301, pos = { x = 527.4, y = 199.9, z = -51.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 295, monster_id = 28010301, pos = { x = 506.9, y = 199.9, z = -38.5 }, rot = { x = 0.0, y = 236.5, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 296, monster_id = 28020301, pos = { x = 996.1, y = 249.0, z = -129.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 297, monster_id = 28020301, pos = { x = 973.2, y = 246.5, z = -108.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 298, monster_id = 28020301, pos = { x = 976.7, y = 245.7, z = -104.4 }, rot = { x = 0.0, y = 189.5, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 299, monster_id = 28020301, pos = { x = 943.0, y = 249.9, z = -160.0 }, rot = { x = 0.0, y = 189.5, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 300, monster_id = 28020301, pos = { x = 963.3, y = 250.6, z = -153.7 }, rot = { x = 0.0, y = 92.6, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 301, monster_id = 28020301, pos = { x = 965.5, y = 248.3, z = -119.0 }, rot = { x = 0.0, y = 92.6, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 302, monster_id = 28020301, pos = { x = 936.4, y = 243.1, z = -96.0 }, rot = { x = 0.0, y = 92.6, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 158001, monster_id = 28030101, pos = { x = 588.4, y = 254.8, z = -348.8 }, rot = { x = 0.0, y = 311.5, z = 0.0 }, level = 25, drop_tag = "鸟类" },
	{ config_id = 158002, monster_id = 28010203, pos = { x = 730.3, y = 251.5, z = -352.7 }, rot = { x = 359.0, y = 283.2, z = 350.3 }, level = 25, drop_tag = "采集动物" },
	{ config_id = 158003, monster_id = 28010203, pos = { x = 709.2, y = 247.8, z = -405.5 }, rot = { x = 351.4, y = 170.6, z = 4.6 }, level = 25, drop_tag = "采集动物" },
	{ config_id = 158004, monster_id = 28010201, pos = { x = 684.9, y = 248.7, z = -418.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "采集动物" },
	{ config_id = 158005, monster_id = 28010202, pos = { x = 683.3, y = 248.7, z = -416.7 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 25, drop_tag = "采集动物" },
	{ config_id = 158006, monster_id = 28030101, pos = { x = 588.7, y = 254.6, z = -350.5 }, rot = { x = 0.0, y = 172.9, z = 0.0 }, level = 25, drop_tag = "鸟类" },
	{ config_id = 158007, monster_id = 28030101, pos = { x = 488.4, y = 208.2, z = -425.6 }, rot = { x = 0.0, y = 172.9, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 158008, monster_id = 28030201, pos = { x = 647.7, y = 333.1, z = -267.4 }, rot = { x = 0.0, y = 181.7, z = 0.0 }, level = 25, drop_tag = "鸟类" },
	{ config_id = 158009, monster_id = 28010203, pos = { x = 728.4, y = 273.6, z = -110.9 }, rot = { x = 12.6, y = 176.5, z = 3.6 }, level = 25, drop_tag = "采集动物" },
	{ config_id = 158010, monster_id = 28030204, pos = { x = 257.5, y = 239.1, z = -279.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 158011, monster_id = 28020102, pos = { x = 638.4, y = 203.8, z = -77.2 }, rot = { x = 0.0, y = 214.8, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 158013, monster_id = 28010202, pos = { x = 738.9, y = 222.8, z = -245.9 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 25, drop_tag = "采集动物" },
	{ config_id = 158014, monster_id = 28030101, pos = { x = 574.8, y = 251.7, z = -282.6 }, rot = { x = 0.0, y = 38.4, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 158015, monster_id = 28030101, pos = { x = 573.5, y = 251.7, z = -283.9 }, rot = { x = 0.0, y = 318.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 158016, monster_id = 28030402, pos = { x = 456.6, y = 256.5, z = -418.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 158017, monster_id = 28030402, pos = { x = 455.6, y = 255.7, z = -418.2 }, rot = { x = 0.0, y = 112.2, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 158018, monster_id = 28020301, pos = { x = 1028.9, y = 232.8, z = -125.0 }, rot = { x = 0.0, y = 257.3, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 158019, monster_id = 28020301, pos = { x = 1023.7, y = 229.7, z = -102.7 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 25, drop_tag = "走兽" },
	{ config_id = 158020, monster_id = 28020301, pos = { x = 1024.1, y = 233.7, z = -121.6 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 25, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158012, gadget_id = 70500000, pos = { x = 637.0, y = 203.7, z = -75.6 }, rot = { x = 0.0, y = 314.9, z = 0.0 }, level = 19, point_type = 2004 }
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
		monsters = { 269, 270, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 158002, 158003, 158004, 158005, 158006, 158007, 158008, 158010, 158011, 158013, 158014, 158015, 158016, 158017, 158018, 158019, 158020 },
		gadgets = { 158012 },
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

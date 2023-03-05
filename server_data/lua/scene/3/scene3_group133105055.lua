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
	{ config_id = 49, gadget_id = 70210063, pos = { x = 554.5, y = 205.8, z = -112.0 }, rot = { x = 0.0, y = 299.3, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 52, gadget_id = 70211101, pos = { x = 609.5, y = 302.3, z = -269.9 }, rot = { x = 354.0, y = 45.6, z = 14.1 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 93, gadget_id = 70211101, pos = { x = 613.4, y = 200.2, z = -571.6 }, rot = { x = 10.8, y = 278.5, z = 7.2 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 94, gadget_id = 70211101, pos = { x = 626.5, y = 201.0, z = -572.1 }, rot = { x = 343.9, y = 290.7, z = 335.1 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 95, gadget_id = 70211103, pos = { x = 622.4, y = 200.2, z = -577.2 }, rot = { x = 348.4, y = 290.9, z = 8.2 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 96, gadget_id = 70211111, pos = { x = 380.4, y = 200.0, z = -354.6 }, rot = { x = 336.7, y = 355.1, z = 12.2 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true },
	{ config_id = 107, gadget_id = 70211101, pos = { x = 422.9, y = 199.3, z = -188.4 }, rot = { x = 343.9, y = 290.7, z = 335.1 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 108, gadget_id = 70211101, pos = { x = 366.4, y = 200.2, z = -201.9 }, rot = { x = 343.4, y = 205.7, z = 20.1 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 127, gadget_id = 70210063, pos = { x = 745.3, y = 238.9, z = -186.9 }, rot = { x = 324.7, y = 257.6, z = 13.9 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 128, gadget_id = 70211101, pos = { x = 694.4, y = 243.5, z = -81.0 }, rot = { x = 20.2, y = 298.3, z = 359.7 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 132, gadget_id = 70211103, pos = { x = 607.6, y = 289.6, z = -319.5 }, rot = { x = 0.0, y = 293.5, z = 0.0 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 164, gadget_id = 70211104, pos = { x = 640.1, y = 273.7, z = -178.9 }, rot = { x = 23.3, y = 125.1, z = 4.9 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 165, gadget_id = 70211101, pos = { x = 258.8, y = 211.8, z = -84.2 }, rot = { x = 0.0, y = 220.6, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 166, gadget_id = 70211101, pos = { x = 635.5, y = 199.4, z = 1.7 }, rot = { x = 0.3, y = 94.8, z = 6.5 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167, gadget_id = 70211101, pos = { x = 670.1, y = 243.3, z = -235.6 }, rot = { x = 351.1, y = 101.0, z = 346.8 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 180, gadget_id = 70210063, pos = { x = 634.8, y = 308.5, z = -243.8 }, rot = { x = 354.0, y = 31.7, z = 355.0 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 203, gadget_id = 70210063, pos = { x = 665.3, y = 262.0, z = -256.7 }, rot = { x = 16.3, y = 88.2, z = 352.7 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 226, gadget_id = 70211101, pos = { x = 662.6, y = 242.8, z = -507.3 }, rot = { x = 347.4, y = 174.8, z = 351.2 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 230, gadget_id = 70211101, pos = { x = 920.5, y = 255.1, z = -235.9 }, rot = { x = 12.3, y = 278.6, z = 19.0 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 261, gadget_id = 70211101, pos = { x = 676.2, y = 233.9, z = -243.5 }, rot = { x = 0.0, y = 21.3, z = 7.0 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 272, gadget_id = 70211001, pos = { x = 564.5, y = 233.4, z = -294.6 }, rot = { x = 351.5, y = 349.3, z = 8.8 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 289, gadget_id = 70210063, pos = { x = 622.1, y = 293.5, z = -338.6 }, rot = { x = 351.1, y = 10.0, z = 353.1 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 290, gadget_id = 70211101, pos = { x = 512.3, y = 199.1, z = -344.3 }, rot = { x = 351.1, y = 331.7, z = 20.3 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 306, gadget_id = 70211111, pos = { x = 952.2, y = 246.0, z = -237.4 }, rot = { x = 359.7, y = 114.9, z = 359.7 }, level = 25, drop_tag = "解谜中级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 364, gadget_id = 70211101, pos = { x = 195.6, y = 199.8, z = -140.3 }, rot = { x = 346.4, y = 82.9, z = 344.6 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 383, gadget_id = 70211101, pos = { x = 633.3, y = 223.4, z = -447.9 }, rot = { x = 0.0, y = 253.0, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 397, gadget_id = 70211101, pos = { x = 265.9, y = 199.4, z = -284.9 }, rot = { x = 8.0, y = 62.1, z = 18.3 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 399, gadget_id = 70211001, pos = { x = 1006.5, y = 245.0, z = -140.4 }, rot = { x = 350.3, y = 120.2, z = 3.2 }, level = 25, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 436, gadget_id = 70211101, pos = { x = 654.0, y = 206.1, z = 52.1 }, rot = { x = 0.2, y = 99.5, z = 356.6 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 443, gadget_id = 70211101, pos = { x = 523.8, y = 229.3, z = -96.9 }, rot = { x = 338.8, y = 255.5, z = 5.4 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 518, gadget_id = 70211101, pos = { x = 686.4, y = 237.9, z = -206.9 }, rot = { x = 0.0, y = 202.9, z = 0.0 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 530, gadget_id = 70210063, pos = { x = 662.5, y = 249.6, z = -441.3 }, rot = { x = 0.0, y = 325.6, z = 0.0 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55001, gadget_id = 70211103, pos = { x = 800.8, y = 213.5, z = -73.4 }, rot = { x = 352.8, y = 279.6, z = 330.7 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55002, gadget_id = 70211103, pos = { x = 680.8, y = 248.8, z = -419.3 }, rot = { x = 353.1, y = 296.1, z = 349.8 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55003, gadget_id = 70210105, pos = { x = 264.5, y = 199.9, z = -114.0 }, rot = { x = 0.0, y = 133.5, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55004, gadget_id = 70210105, pos = { x = 142.2, y = 199.9, z = -73.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55005, gadget_id = 70211101, pos = { x = 849.6, y = 253.2, z = -286.2 }, rot = { x = 3.7, y = 42.9, z = 8.9 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55006, gadget_id = 70211101, pos = { x = 612.1, y = 316.6, z = -232.7 }, rot = { x = 359.3, y = 290.9, z = 359.8 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55007, gadget_id = 70210063, pos = { x = 614.1, y = 294.6, z = -243.7 }, rot = { x = 3.5, y = 170.8, z = 357.5 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55008, gadget_id = 70211111, pos = { x = 1096.7, y = 206.6, z = 74.7 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true },
	{ config_id = 55009, gadget_id = 70211103, pos = { x = 869.2, y = 244.4, z = -88.7 }, rot = { x = 1.3, y = 341.6, z = 16.9 }, level = 25, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55010, gadget_id = 70211101, pos = { x = 746.5, y = 231.2, z = -63.0 }, rot = { x = 2.4, y = 342.3, z = 356.8 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55011, gadget_id = 70211101, pos = { x = 683.4, y = 262.1, z = -102.5 }, rot = { x = 357.6, y = 287.2, z = 356.6 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55012, gadget_id = 70211101, pos = { x = 608.1, y = 252.2, z = -140.2 }, rot = { x = 355.0, y = 320.1, z = 345.6 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55013, gadget_id = 70211101, pos = { x = 820.2, y = 246.5, z = -110.9 }, rot = { x = 0.3, y = 9.4, z = 359.6 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 55014, gadget_id = 70500000, pos = { x = 816.6, y = 242.9, z = -106.2 }, rot = { x = 0.0, y = 53.9, z = 0.0 }, level = 25, point_type = 2026 },
	{ config_id = 55015, gadget_id = 70211101, pos = { x = 1089.7, y = 250.7, z = -234.8 }, rot = { x = 358.8, y = 293.5, z = 10.6 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 49, 52, 93, 94, 95, 96, 107, 108, 127, 128, 132, 164, 165, 166, 167, 180, 203, 226, 230, 261, 272, 289, 290, 306, 364, 383, 397, 399, 436, 443, 518, 530, 55002, 55003, 55004, 55005, 55006, 55007, 55008, 55009, 55010, 55011, 55012, 55013, 55014, 55015 },
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

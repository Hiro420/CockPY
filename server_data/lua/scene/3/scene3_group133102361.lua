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
	{ config_id = 361001, gadget_id = 70210105, pos = { x = 1342.7, y = 199.9, z = 171.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361002, gadget_id = 70210101, pos = { x = 1513.8, y = 255.2, z = -153.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361003, gadget_id = 70210105, pos = { x = 1394.2, y = 200.0, z = 158.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361004, gadget_id = 70211101, pos = { x = 1240.1, y = 199.9, z = 50.0 }, rot = { x = 329.2, y = 29.7, z = 336.2 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361005, gadget_id = 70210063, pos = { x = 1609.4, y = 252.8, z = 293.8 }, rot = { x = 1.7, y = 227.0, z = 5.3 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361006, gadget_id = 70210101, pos = { x = 1297.2, y = 201.3, z = 207.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361007, gadget_id = 70210105, pos = { x = 1385.7, y = 200.0, z = 264.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361008, gadget_id = 70211101, pos = { x = 1398.5, y = 160.6, z = -285.3 }, rot = { x = 350.7, y = 81.0, z = 7.7 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361009, gadget_id = 70211101, pos = { x = 1405.2, y = 161.6, z = -248.0 }, rot = { x = 353.4, y = 191.8, z = 4.2 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361010, gadget_id = 70210063, pos = { x = 1395.0, y = 173.7, z = -188.4 }, rot = { x = 0.0, y = 211.6, z = 0.0 }, level = 1, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361011, gadget_id = 70211101, pos = { x = 1445.2, y = 201.3, z = 329.6 }, rot = { x = 0.0, y = 89.9, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361012, gadget_id = 70210105, pos = { x = 903.7, y = 200.0, z = 256.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361013, gadget_id = 70211101, pos = { x = 923.1, y = 199.8, z = 261.4 }, rot = { x = 0.0, y = 81.7, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361014, gadget_id = 70211101, pos = { x = 1551.5, y = 222.6, z = 41.4 }, rot = { x = 350.4, y = 177.3, z = 333.1 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361015, gadget_id = 70211103, pos = { x = 1493.6, y = 236.1, z = 111.2 }, rot = { x = 356.1, y = 288.7, z = 357.7 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361016, gadget_id = 70210063, pos = { x = 1685.9, y = 246.1, z = 274.1 }, rot = { x = 356.9, y = 103.9, z = 9.8 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361017, gadget_id = 70210101, pos = { x = 1235.9, y = 200.7, z = -89.9 }, rot = { x = 0.0, y = 156.5, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361018, gadget_id = 70210101, pos = { x = 1235.1, y = 200.6, z = -93.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361019, gadget_id = 70210101, pos = { x = 1239.5, y = 200.7, z = -94.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361020, gadget_id = 70210063, pos = { x = 1516.7, y = 262.7, z = -117.3 }, rot = { x = 347.4, y = 49.6, z = 353.3 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361021, gadget_id = 70210101, pos = { x = 1253.1, y = 201.6, z = 268.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜武器璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361022, gadget_id = 70210101, pos = { x = 1253.6, y = 201.6, z = 271.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361024, gadget_id = 70211101, pos = { x = 1137.9, y = 199.7, z = 242.7 }, rot = { x = 358.8, y = 199.8, z = 356.6 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361025, gadget_id = 70210105, pos = { x = 1297.9, y = 200.0, z = 273.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361026, gadget_id = 70210105, pos = { x = 1336.4, y = 200.0, z = 129.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361027, gadget_id = 70210105, pos = { x = 1329.2, y = 200.0, z = 135.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 361028, gadget_id = 70210101, pos = { x = 1182.3, y = 209.6, z = 256.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 361001, 361002, 361003, 361004, 361005, 361006, 361007, 361008, 361009, 361010, 361011, 361012, 361013, 361014, 361015, 361016, 361017, 361018, 361019, 361020, 361021, 361022, 361024, 361025, 361026, 361027, 361028 },
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

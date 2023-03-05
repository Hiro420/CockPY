--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 508, monster_id = 28030101, pos = { x = 2404.5, y = 276.8, z = -1227.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 509, monster_id = 28030101, pos = { x = 2397.1, y = 279.2, z = -1229.6 }, rot = { x = 0.0, y = 44.3, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 510, monster_id = 28020102, pos = { x = 2068.4, y = 197.1, z = -1183.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 511, monster_id = 28020102, pos = { x = 2527.7, y = 207.0, z = -1254.2 }, rot = { x = 0.0, y = 253.2, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 512, monster_id = 28020102, pos = { x = 2129.1, y = 209.5, z = -1073.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 513, monster_id = 28020102, pos = { x = 2337.9, y = 257.6, z = -1444.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 774, monster_id = 28020102, pos = { x = 2512.8, y = 204.0, z = -1158.4 }, rot = { x = 0.0, y = 264.3, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 775, monster_id = 28020102, pos = { x = 2511.6, y = 204.1, z = -1159.1 }, rot = { x = 0.0, y = 42.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 1203, monster_id = 28010201, pos = { x = 2608.7, y = 228.6, z = -1536.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1204, monster_id = 28010201, pos = { x = 2583.7, y = 234.4, z = -1529.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1205, monster_id = 28010201, pos = { x = 2651.8, y = 233.2, z = -1458.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1206, monster_id = 28010201, pos = { x = 2655.3, y = 234.8, z = -1431.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1207, monster_id = 28010201, pos = { x = 2630.5, y = 220.3, z = -1382.5 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1208, monster_id = 28010201, pos = { x = 2601.1, y = 211.9, z = -1380.1 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1209, monster_id = 28010201, pos = { x = 2552.0, y = 215.2, z = -1399.4 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1210, monster_id = 28010201, pos = { x = 2571.9, y = 216.4, z = -1462.0 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1211, monster_id = 28010201, pos = { x = 2535.7, y = 217.9, z = -1412.6 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1212, monster_id = 28010201, pos = { x = 2523.7, y = 215.1, z = -1289.2 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1213, monster_id = 28010201, pos = { x = 2487.8, y = 200.5, z = -1227.2 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1214, monster_id = 28010201, pos = { x = 2536.2, y = 205.4, z = -1202.8 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1215, monster_id = 28010201, pos = { x = 2593.6, y = 213.6, z = -1245.2 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1216, monster_id = 28010201, pos = { x = 2579.2, y = 217.2, z = -1222.6 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1217, monster_id = 28010201, pos = { x = 2494.4, y = 203.2, z = -1189.0 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1218, monster_id = 28010201, pos = { x = 2461.0, y = 199.1, z = -1181.7 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1219, monster_id = 28010201, pos = { x = 2445.2, y = 202.2, z = -1237.6 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1220, monster_id = 28010201, pos = { x = 2413.0, y = 209.2, z = -1221.8 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1221, monster_id = 28010201, pos = { x = 2483.3, y = 212.2, z = -1277.2 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1222, monster_id = 28010201, pos = { x = 2431.8, y = 209.4, z = -1297.9 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1223, monster_id = 28010201, pos = { x = 2465.6, y = 209.8, z = -1111.4 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1224, monster_id = 28010201, pos = { x = 2433.1, y = 210.1, z = -1129.8 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1225, monster_id = 28010201, pos = { x = 2395.4, y = 210.2, z = -1115.1 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1226, monster_id = 28010201, pos = { x = 2404.7, y = 212.6, z = -1092.7 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1286, monster_id = 28020301, pos = { x = 2442.0, y = 220.7, z = -1342.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1287, monster_id = 28020301, pos = { x = 2438.8, y = 220.8, z = -1336.7 }, rot = { x = 0.0, y = 99.4, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1288, monster_id = 28020301, pos = { x = 2460.3, y = 219.8, z = -1372.5 }, rot = { x = 0.0, y = 28.3, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1335, monster_id = 28020102, pos = { x = 2545.0, y = 218.7, z = -1428.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1336, monster_id = 28020102, pos = { x = 2488.0, y = 225.1, z = -1392.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1396, monster_id = 28010201, pos = { x = 2543.4, y = 219.2, z = -1449.2 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1414, monster_id = 28010201, pos = { x = 2490.8, y = 206.4, z = -1137.9 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1415, monster_id = 28010201, pos = { x = 2519.7, y = 204.1, z = -1142.8 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1416, monster_id = 28010201, pos = { x = 2484.2, y = 199.1, z = -1202.0 }, rot = { x = 0.0, y = 291.8, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1431, monster_id = 28010201, pos = { x = 2664.7, y = 196.4, z = -1633.4 }, rot = { x = 0.0, y = 315.4, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1432, monster_id = 28010201, pos = { x = 2632.2, y = 204.9, z = -1617.2 }, rot = { x = 0.0, y = 315.4, z = 0.0 }, level = 1, drop_tag = "采集动物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 477, shape = RegionShape.SPHERE, radius = 16.1, pos = { x = 2534.0, y = 208.2, z = -1270.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_477", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_477", action = "action_EVENT_ENTER_REGION_477" }
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
		monsters = { 508, 509, 510, 512, 513, 774, 775, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1286, 1287, 1288, 1335, 1336, 1396, 1414, 1415, 1416, 1431, 1432 },
		gadgets = { },
		regions = { 477 },
		triggers = { "ENTER_REGION_477" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_477(context, evt)
	if evt.param1 ~= 477 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_477(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 511, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

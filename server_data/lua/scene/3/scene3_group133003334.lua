--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1074, monster_id = 28030101, pos = { x = 2968.7, y = 240.4, z = -1722.2 }, rot = { x = 0.0, y = 218.4, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1075, monster_id = 28030401, pos = { x = 2964.8, y = 240.2, z = -1684.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1076, monster_id = 28030401, pos = { x = 2966.7, y = 240.2, z = -1683.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1077, monster_id = 28030401, pos = { x = 2965.8, y = 240.2, z = -1682.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1078, monster_id = 28030401, pos = { x = 2989.7, y = 239.2, z = -1712.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1079, monster_id = 28030401, pos = { x = 2986.6, y = 239.3, z = -1711.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1080, monster_id = 28030401, pos = { x = 2990.6, y = 239.1, z = -1722.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1353, monster_id = 20010301, pos = { x = 2956.5, y = 240.7, z = -1678.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 1354, monster_id = 20010301, pos = { x = 2958.4, y = 240.5, z = -1676.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 1355, monster_id = 20010301, pos = { x = 2955.8, y = 240.6, z = -1676.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 1356, monster_id = 20011401, pos = { x = 2964.5, y = 242.0, z = -1635.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 48, drop_tag = "史莱姆" },
	{ config_id = 1357, monster_id = 20011401, pos = { x = 2965.0, y = 242.4, z = -1632.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 48, drop_tag = "史莱姆" },
	{ config_id = 1364, monster_id = 28030401, pos = { x = 2946.9, y = 236.0, z = -1773.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1365, monster_id = 28030401, pos = { x = 2945.9, y = 236.0, z = -1773.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1366, monster_id = 28030401, pos = { x = 2945.7, y = 236.1, z = -1775.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1367, monster_id = 28030401, pos = { x = 2954.2, y = 237.0, z = -1796.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1368, monster_id = 28030401, pos = { x = 2955.5, y = 236.9, z = -1795.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1369, monster_id = 28030401, pos = { x = 2955.3, y = 236.9, z = -1798.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1370, monster_id = 28030401, pos = { x = 2953.6, y = 236.9, z = -1794.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1371, monster_id = 28030401, pos = { x = 2953.4, y = 236.0, z = -1774.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1372, monster_id = 28030401, pos = { x = 2953.8, y = 236.0, z = -1775.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1373, monster_id = 28030401, pos = { x = 2954.3, y = 236.0, z = -1774.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 1374, monster_id = 28030401, pos = { x = 2949.7, y = 234.9, z = -1758.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1375, monster_id = 28030401, pos = { x = 2950.9, y = 235.0, z = -1758.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1376, monster_id = 28030401, pos = { x = 2948.3, y = 235.0, z = -1758.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1391, monster_id = 20011201, pos = { x = 2907.6, y = 262.9, z = -1592.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1392, monster_id = 20011201, pos = { x = 2905.4, y = 262.9, z = -1593.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1393, monster_id = 20011201, pos = { x = 2906.8, y = 263.1, z = -1594.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3363, gadget_id = 70211101, pos = { x = 2963.6, y = 242.7, z = -1629.0 }, rot = { x = 6.5, y = 154.5, z = 3.6 }, level = 46, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 3364, gadget_id = 70211101, pos = { x = 2926.6, y = 211.2, z = -1580.2 }, rot = { x = 0.0, y = 257.2, z = 0.0 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 497, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2906.8, y = 263.0, z = -1593.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_497", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_497", action = "action_EVENT_ENTER_REGION_497" }
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
		monsters = { 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1353, 1354, 1355, 1356, 1357, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376 },
		gadgets = { 3363, 3364 },
		regions = { 497 },
		triggers = { "ENTER_REGION_497" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_497(context, evt)
	if evt.param1 ~= 497 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_497(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1391, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1392, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1393, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

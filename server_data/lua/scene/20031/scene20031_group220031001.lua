--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011401, pos = { x = -7.2, y = 42.0, z = 97.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20011401, pos = { x = -4.5, y = 42.0, z = 90.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20011401, pos = { x = 1.7, y = 42.0, z = 93.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1004, monster_id = 20011401, pos = { x = 1.5, y = 42.0, z = 100.8 }, rot = { x = 0.0, y = 315.0, z = 0.0 }, level = 1 },
	{ config_id = 1028, monster_id = 21010501, pos = { x = -3.4, y = 42.0, z = 114.7 }, rot = { x = 0.0, y = 187.7, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1029, monster_id = 21010501, pos = { x = -6.9, y = 42.0, z = 114.5 }, rot = { x = 0.0, y = 172.8, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1005, gadget_id = 70900201, pos = { x = 19.3, y = 51.0, z = 61.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1008, gadget_id = 70211001, pos = { x = 15.2, y = 47.0, z = 49.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = 15.4, y = 47.0, z = 51.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220013, pos = { x = 13.3, y = 47.0, z = 52.8 }, rot = { x = 0.0, y = 350.5, z = 0.0 }, level = 1 },
	{ config_id = 1011, gadget_id = 70220025, pos = { x = 15.4, y = 47.1, z = 52.1 }, rot = { x = 272.9, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220025, pos = { x = -9.5, y = 47.0, z = 52.9 }, rot = { x = 271.4, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220013, pos = { x = -8.3, y = 47.0, z = 52.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220013, pos = { x = -9.5, y = 47.0, z = 54.1 }, rot = { x = 0.0, y = 336.8, z = 0.0 }, level = 1 },
	{ config_id = 1015, gadget_id = 70220014, pos = { x = -6.3, y = 47.0, z = 52.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1016, gadget_id = 70220014, pos = { x = -9.5, y = 47.0, z = 55.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1017, gadget_id = 70220014, pos = { x = -7.3, y = 47.0, z = 54.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1018, gadget_id = 70220007, pos = { x = -3.7, y = 42.0, z = 119.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1019, gadget_id = 70220013, pos = { x = -7.0, y = 42.0, z = 118.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1020, gadget_id = 70220013, pos = { x = -5.0, y = 42.0, z = 117.8 }, rot = { x = 0.0, y = 336.1, z = 0.0 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220025, pos = { x = -6.3, y = 42.0, z = 117.8 }, rot = { x = 270.1, y = 0.2, z = 0.0 }, level = 1 },
	{ config_id = 1022, gadget_id = 70220013, pos = { x = -1.9, y = 42.0, z = 123.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1023, gadget_id = 70220013, pos = { x = -2.5, y = 42.0, z = 126.2 }, rot = { x = 0.0, y = 39.6, z = 0.0 }, level = 1 },
	{ config_id = 1024, gadget_id = 70220014, pos = { x = -3.5, y = 42.0, z = 123.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1025, gadget_id = 70220014, pos = { x = -1.1, y = 42.0, z = 122.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1026, gadget_id = 70220005, pos = { x = -3.0, y = 42.0, z = 117.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1027, gadget_id = 70220005, pos = { x = -2.1, y = 42.0, z = 117.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1030, gadget_id = 70310002, pos = { x = 21.0, y = 54.5, z = 42.5 }, rot = { x = 0.0, y = 276.7, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1031, gadget_id = 70310002, pos = { x = 14.0, y = 54.7, z = 50.0 }, rot = { x = 0.0, y = 91.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1032, gadget_id = 70310002, pos = { x = 21.4, y = 55.0, z = 60.0 }, rot = { x = 0.0, y = 272.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1033, gadget_id = 70310002, pos = { x = 2.5, y = 52.0, z = 51.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1034, gadget_id = 70310002, pos = { x = -10.5, y = 52.0, z = 59.9 }, rot = { x = 0.0, y = 92.5, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1035, gadget_id = 70310002, pos = { x = -11.0, y = 52.1, z = 71.0 }, rot = { x = 0.0, y = 88.9, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1036, gadget_id = 70220007, pos = { x = 40.1, y = 42.0, z = 88.9 }, rot = { x = 0.0, y = 275.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 50.0, y = 20.0, z = 10.0 }, pos = { x = -2.1, y = 47.0, z = 60.8 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	{ name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" }
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
		monsters = { 1001, 1002, 1003, 1004, 1028, 1029 },
		gadgets = { 1005, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1030, 1031, 1032, 1033, 1034, 1035, 1036 },
		regions = { 1007 },
		triggers = { "ANY_MONSTER_DIE_1006", "ENTER_REGION_1007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220031001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1005 }) then
		    return -1
		end
		
	
	return 0
end

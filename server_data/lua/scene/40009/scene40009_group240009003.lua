--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3005, monster_id = 21010501, pos = { x = -135.3, y = -12.5, z = 128.6 }, rot = { x = 0.0, y = 40.8, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3006, monster_id = 21010501, pos = { x = -135.0, y = -12.5, z = 132.8 }, rot = { x = 0.0, y = 119.8, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3007, monster_id = 20010601, pos = { x = -124.1, y = -12.5, z = 119.8 }, rot = { x = 0.0, y = 0.3, z = 0.0 }, level = 1 },
	{ config_id = 3008, monster_id = 20010601, pos = { x = -124.0, y = -12.5, z = 135.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 3013, monster_id = 21020101, pos = { x = -129.2, y = -12.5, z = 126.4 }, rot = { x = 0.0, y = 56.1, z = 0.0 }, level = 1, pose_id = 401 },
	{ config_id = 3020, monster_id = 21010301, pos = { x = -128.6, y = -12.5, z = 130.9 }, rot = { x = 0.0, y = 145.1, z = 0.0 }, level = 1, pose_id = 9003 },
	{ config_id = 3021, monster_id = 21010301, pos = { x = -132.4, y = -12.5, z = 138.2 }, rot = { x = 0.0, y = 12.2, z = 0.0 }, level = 1, pose_id = 9002 },
	{ config_id = 3034, monster_id = 20011001, pos = { x = -129.5, y = -12.5, z = 123.0 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 1 },
	{ config_id = 3035, monster_id = 20011001, pos = { x = -129.1, y = -12.5, z = 132.7 }, rot = { x = 0.0, y = 125.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70211001, pos = { x = -116.8, y = -12.4, z = 141.7 }, rot = { x = 0.0, y = 357.4, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 3002, gadget_id = 70220025, pos = { x = -129.8, y = -12.4, z = 125.9 }, rot = { x = 270.6, y = 180.0, z = 180.0 }, level = 1 },
	{ config_id = 3003, gadget_id = 70220005, pos = { x = -137.1, y = -12.5, z = 135.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3004, gadget_id = 70220005, pos = { x = -136.2, y = -12.5, z = 136.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3009, gadget_id = 70350003, pos = { x = -128.5, y = -12.3, z = 112.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3011, gadget_id = 70220005, pos = { x = -138.2, y = -12.5, z = 137.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3012, gadget_id = 70310002, pos = { x = -141.9, y = -7.0, z = 121.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3014, gadget_id = 70220013, pos = { x = -114.6, y = -12.5, z = 141.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3015, gadget_id = 70220025, pos = { x = -115.2, y = -12.4, z = 141.3 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220013, pos = { x = -117.6, y = -12.5, z = 140.2 }, rot = { x = 0.0, y = 20.3, z = 0.0 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220014, pos = { x = -116.0, y = -12.5, z = 139.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3018, gadget_id = 70310001, pos = { x = -134.0, y = -12.5, z = 130.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3019, gadget_id = 70310001, pos = { x = -134.1, y = -12.5, z = 123.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3022, gadget_id = 70220013, pos = { x = -140.3, y = -12.6, z = 117.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220013, pos = { x = -139.0, y = -12.6, z = 119.1 }, rot = { x = 0.0, y = 336.8, z = 0.0 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220025, pos = { x = -140.4, y = -12.6, z = 117.1 }, rot = { x = 271.9, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220014, pos = { x = -138.7, y = -12.6, z = 114.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220014, pos = { x = -138.4, y = -12.6, z = 117.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220014, pos = { x = -138.1, y = -12.6, z = 116.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220025, pos = { x = -133.6, y = -12.4, z = 140.6 }, rot = { x = 270.3, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3029, gadget_id = 70310004, pos = { x = -128.3, y = -12.5, z = 127.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3030, gadget_id = 70220025, pos = { x = -132.3, y = -12.5, z = 138.0 }, rot = { x = 271.2, y = 180.0, z = 180.0 }, level = 1 },
	{ config_id = 3031, gadget_id = 70220014, pos = { x = -138.6, y = -12.5, z = 135.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3032, gadget_id = 70220014, pos = { x = -139.6, y = -12.5, z = 136.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3033, gadget_id = 70310002, pos = { x = -142.0, y = -7.0, z = 133.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010" },
	{ name = "ANY_MONSTER_DIE_3036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3036", action = "action_EVENT_ANY_MONSTER_DIE_3036" }
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
		monsters = { 3005, 3006, 3013, 3020, 3021 },
		gadgets = { 3001, 3002, 3003, 3004, 3009, 3011, 3012, 3014, 3015, 3016, 3017, 3018, 3019, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3010", "ANY_MONSTER_DIE_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3007, 3008, 3034, 3035 },
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
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240009002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240009002, 2001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3036(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240009003) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3036(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009003, 2)
	
	return 0
end

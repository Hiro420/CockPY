--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 114.4, y = 39.5, z = 115.0 }, rot = { x = 0.0, y = 266.9, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 1002, monster_id = 21010501, pos = { x = 101.6, y = 39.5, z = 128.9 }, rot = { x = 0.0, y = 275.2, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1003, monster_id = 21010901, pos = { x = 99.9, y = 39.9, z = 116.9 }, rot = { x = 0.0, y = 275.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1004, monster_id = 21011001, pos = { x = 138.1, y = 39.5, z = 128.7 }, rot = { x = 0.0, y = 268.2, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1005, monster_id = 21010901, pos = { x = 138.0, y = 39.5, z = 121.4 }, rot = { x = 0.0, y = 272.5, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1006, monster_id = 21010201, pos = { x = 158.5, y = 39.5, z = 121.0 }, rot = { x = 0.0, y = 275.7, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 1007, monster_id = 21010301, pos = { x = 117.1, y = 39.5, z = 117.3 }, rot = { x = 0.0, y = 169.4, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1008, monster_id = 21010301, pos = { x = 117.2, y = 39.5, z = 113.9 }, rot = { x = 0.0, y = 355.4, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1009, monster_id = 21010701, pos = { x = 118.6, y = 39.5, z = 115.6 }, rot = { x = 0.0, y = 263.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1010, monster_id = 21020101, pos = { x = 168.8, y = 42.0, z = 121.1 }, rot = { x = 0.0, y = 269.9, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 1011, monster_id = 21010301, pos = { x = 159.3, y = 39.5, z = 124.3 }, rot = { x = 0.0, y = 268.7, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 1012, monster_id = 21010301, pos = { x = 159.2, y = 39.5, z = 117.5 }, rot = { x = 0.0, y = 273.8, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1013, gadget_id = 70350003, pos = { x = 55.0, y = 42.0, z = 121.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350002, pos = { x = 174.0, y = 42.0, z = 120.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1015, gadget_id = 70360002, pos = { x = 158.8, y = 39.5, z = 114.6 }, rot = { x = 0.0, y = 303.7, z = 0.0 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", forbid_guest = false }
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
	rand_suite = false,
	npcs = { }
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
		monsters = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012 },
		gadgets = { 1013, 1014, 1015 },
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
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 改变指定group组220024001中， configid为1015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024001, 1015, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220024001, 1015, {1}) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（159，40，115），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=159, y=40, z=115}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2(context, evt)
	-- 判断是gadgetid 1015 option_id 1
	if 1015 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
	-- 改变指定group组220024001中， configid为1015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024001, 1015, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 220024001 ；指定config：1015；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220024001, 1015, 1) then
		return -1
	end
	
	-- 改变指定group组220024001中， configid为1014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024001, 1014, GadgetState.GearStart) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（174，47，121），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=174, y=47, z=121}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

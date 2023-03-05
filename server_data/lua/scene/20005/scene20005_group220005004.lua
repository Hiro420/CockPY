--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 20010801, pos = { x = -168.2, y = 22.0, z = 46.3 }, rot = { x = 0.0, y = 107.6, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 4003, monster_id = 20010801, pos = { x = -170.3, y = 22.0, z = 39.3 }, rot = { x = 0.0, y = 42.2, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 4004, monster_id = 20010801, pos = { x = -169.6, y = 22.0, z = 36.1 }, rot = { x = 1.6, y = 107.5, z = 354.9 }, level = 1, pose_id = 901 },
	{ config_id = 4005, monster_id = 20010801, pos = { x = -167.1, y = 22.1, z = 37.0 }, rot = { x = 1.6, y = 107.5, z = 354.9 }, level = 1, pose_id = 901 },
	{ config_id = 4006, monster_id = 20010801, pos = { x = -169.7, y = 22.1, z = 49.3 }, rot = { x = 1.6, y = 33.2, z = 354.9 }, level = 1, pose_id = 901 },
	{ config_id = 4007, monster_id = 20010801, pos = { x = -167.2, y = 23.0, z = 49.6 }, rot = { x = 1.6, y = 130.8, z = 354.9 }, level = 1, pose_id = 901 },
	{ config_id = 4019, monster_id = 20010801, pos = { x = -178.2, y = 23.4, z = 52.0 }, rot = { x = 0.0, y = 122.4, z = 0.0 }, level = 1 },
	{ config_id = 4020, monster_id = 20010801, pos = { x = -181.7, y = 22.9, z = 53.7 }, rot = { x = 0.0, y = 122.4, z = 0.0 }, level = 1 },
	{ config_id = 4021, monster_id = 20010801, pos = { x = -180.6, y = 24.0, z = 50.6 }, rot = { x = 0.0, y = 122.4, z = 0.0 }, level = 1 },
	{ config_id = 4022, monster_id = 20010801, pos = { x = -181.9, y = 23.9, z = 33.7 }, rot = { x = 0.0, y = 33.1, z = 0.0 }, level = 1 },
	{ config_id = 4023, monster_id = 20010801, pos = { x = -181.3, y = 23.9, z = 31.8 }, rot = { x = 0.0, y = 38.5, z = 0.0 }, level = 1 },
	{ config_id = 4024, monster_id = 20010801, pos = { x = -180.5, y = 22.7, z = 34.1 }, rot = { x = 0.0, y = 167.5, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70350005, pos = { x = -184.0, y = 21.6, z = 43.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 4008, gadget_id = 70290008, pos = { x = -166.9, y = 21.6, z = 48.2 }, rot = { x = 0.0, y = 286.3, z = 0.0 }, level = 1, isOneoff = true },
	{ config_id = 4009, gadget_id = 70500000, pos = { x = -166.9, y = 21.6, z = 48.2 }, rot = { x = 0.0, y = 286.3, z = 0.0 }, level = 1, point_type = 3008, isOneoff = true, owner = 4008 },
	{ config_id = 4012, gadget_id = 70290008, pos = { x = -167.4, y = 21.7, z = 39.3 }, rot = { x = 0.0, y = 84.3, z = 0.0 }, level = 1, isOneoff = true },
	{ config_id = 4013, gadget_id = 70500000, pos = { x = -167.4, y = 21.7, z = 39.3 }, rot = { x = 0.0, y = 84.3, z = 0.0 }, level = 1, point_type = 3008, isOneoff = true, owner = 4012 },
	{ config_id = 4014, gadget_id = 70900201, pos = { x = -190.5, y = 27.8, z = 141.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010" },
	{ name = "ANY_MONSTER_DIE_4011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4011", action = "action_EVENT_ANY_MONSTER_DIE_4011" }
}

-- 变量
variables = {
	{ name = "is_4009", value = 0, no_refresh = true },
	{ name = "is_4013", value = 0, no_refresh = true }
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
		monsters = { 4002, 4003, 4004, 4005, 4006, 4007 },
		gadgets = { 4001, 4008, 4009, 4012, 4013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4019, 4020, 4021, 4022, 4023, 4024 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220005004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005005, suite = 2 }) then
			return -1
		end
	
	-- 调用提示id为 200050201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050201) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005003, monsters = {}, gadgets = {3011} }) then
			return -1
		end
	
	-- 创建id为4014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4014 }) then
	  return -1
	end
	
	return 0
end

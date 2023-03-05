--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 20010901, pos = { x = -1.4, y = 0.5, z = 4.2 }, rot = { x = 0.0, y = 219.7, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 40, monster_id = 20010901, pos = { x = -5.4, y = 0.5, z = -2.2 }, rot = { x = 0.0, y = 124.5, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 41, monster_id = 20010601, pos = { x = -5.7, y = 0.0, z = 3.5 }, rot = { x = 0.0, y = 49.4, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 42, monster_id = 20010701, pos = { x = 0.6, y = 0.0, z = -1.8 }, rot = { x = 0.0, y = 317.9, z = 0.0 }, level = 6, ban_excel_drop = true },
	{ config_id = 46, monster_id = 20030101, pos = { x = -2.0, y = 1.4, z = 2.1 }, rot = { x = 0.0, y = 249.7, z = 0.0 }, level = 1, ban_excel_drop = true },
	{ config_id = 47, monster_id = 20030101, pos = { x = -1.7, y = 1.4, z = -1.9 }, rot = { x = 0.0, y = 287.0, z = 0.0 }, level = 1, ban_excel_drop = true },
	{ config_id = 48, monster_id = 20030101, pos = { x = -6.3, y = 1.6, z = -0.2 }, rot = { x = 0.0, y = 113.6, z = 0.0 }, level = 1, ban_excel_drop = true },
	{ config_id = 49, monster_id = 22010201, pos = { x = -0.7, y = 0.0, z = 0.8 }, rot = { x = 0.0, y = 254.5, z = 0.0 }, level = 6, ban_excel_drop = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5, gadget_id = 70360002, pos = { x = -4.2, y = 0.0, z = 0.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6, gadget_id = 70211001, pos = { x = -9.2, y = 0.0, z = 0.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 7, gadget_id = 70900299, pos = { x = -3.8, y = 7.1, z = 0.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_19", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19", action = "action_EVENT_GADGET_CREATE_19", trigger_count = 0 },
	{ name = "SELECT_OPTION_20", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20", action = "action_EVENT_SELECT_OPTION_20", trigger_count = 0, forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_25", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "300703", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_25" },
	{ name = "CHALLENGE_FAIL_26", event = EventType.EVENT_CHALLENGE_FAIL, source = "300703", condition = "", action = "action_EVENT_CHALLENGE_FAIL_26", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_29", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29", action = "action_EVENT_ANY_MONSTER_DIE_29", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "DeadMonster", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
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
		monsters = { },
		gadgets = { 5 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "CHALLENGE_SUCCESS_25", "CHALLENGE_FAIL_26" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 41, 42 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28", "ANY_MONSTER_DIE_29" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 46, 47, 48, 49 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 39, 40 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
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
function condition_EVENT_GADGET_CREATE_19(context, evt)
	if 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {104}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_20(context, evt)
	if 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_20(context, evt)
	-- 将configid为 5 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5, GadgetState.GearStart) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250011003, 2)
	
	-- 创建id为7的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7 }) then
	  return -1
	end
	
	-- 创建编号为300703（该挑战的识别id),挑战内容为176的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 300703, 176, 60, 250011003, 8, 0) then
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_25(context, evt)
	-- 创建id为5的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5 }) then
	  return -1
	end
	
	-- 创建id为6的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7 }) then
		    return -1
		end
		
	
	-- 创建id为1的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1 }) then
	  return -1
	end
	
	-- 创建id为3的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_26(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250011003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	-- 创建id为5的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7 }) then
		    return -1
		end
		
	
	-- 创建id为1的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1 }) then
	  return -1
	end
	
	-- 创建id为3的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250011003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250011003, 3)
	
	return 0
end

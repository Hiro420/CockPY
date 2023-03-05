--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21020201, pos = { x = -21.1, y = -0.5, z = -270.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12002, monster_id = 20011201, pos = { x = -3.9, y = -0.5, z = -254.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12003, monster_id = 20011201, pos = { x = -4.7, y = -0.5, z = -247.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12004, monster_id = 20011201, pos = { x = -37.8, y = -0.5, z = -254.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12005, monster_id = 20011201, pos = { x = -35.5, y = -0.5, z = -248.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12006, monster_id = 21010201, pos = { x = -14.7, y = -0.5, z = -266.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12007, monster_id = 21010201, pos = { x = -27.9, y = -0.5, z = -267.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12008, monster_id = 21010601, pos = { x = -9.3, y = -0.5, z = -266.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12009, monster_id = 22010201, pos = { x = -20.6, y = -0.5, z = -268.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12010, monster_id = 21020101, pos = { x = -17.7, y = -0.5, z = -264.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12011, monster_id = 21010201, pos = { x = -22.7, y = -0.5, z = -261.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12012, monster_id = 21010201, pos = { x = -17.0, y = -0.5, z = -261.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12013, monster_id = 21020201, pos = { x = -20.8, y = -0.5, z = -264.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12014, monster_id = 21010701, pos = { x = -24.7, y = -0.5, z = -266.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12015, monster_id = 21010701, pos = { x = -19.1, y = -0.5, z = -266.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12016, monster_id = 21010701, pos = { x = -12.9, y = -0.5, z = -267.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12017, monster_id = 21010201, pos = { x = -15.8, y = -0.5, z = -259.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12018, monster_id = 21010201, pos = { x = -24.2, y = -0.5, z = -259.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12019, monster_id = 22010201, pos = { x = -20.4, y = -0.5, z = -268.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12020, monster_id = 21020201, pos = { x = -19.9, y = -0.5, z = -264.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12021, monster_id = 21010301, pos = { x = -24.4, y = -0.5, z = -259.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12022, monster_id = 21010301, pos = { x = -15.9, y = -0.5, z = -260.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12023, monster_id = 21010501, pos = { x = -30.4, y = -0.5, z = -266.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12024, monster_id = 21010501, pos = { x = -11.1, y = -0.5, z = -267.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12025, gadget_id = 70211012, pos = { x = -20.1, y = -0.5, z = -273.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 12026, gadget_id = 70211002, pos = { x = -13.8, y = -0.5, z = -273.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 12027, gadget_id = 70211002, pos = { x = -25.7, y = -0.5, z = -273.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_24", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24", action = "action_EVENT_ANY_MONSTER_DIE_24" },
	{ name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44" },
	{ name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45" },
	{ name = "ANY_MONSTER_DIE_46", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46", action = "action_EVENT_ANY_MONSTER_DIE_46" },
	{ name = "ANY_MONSTER_DIE_47", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47", action = "action_EVENT_ANY_MONSTER_DIE_47" },
	{ name = "ANY_MONSTER_DIE_48", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48", action = "action_EVENT_ANY_MONSTER_DIE_48" },
	{ name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49" }
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
	rand_suite = true,
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
		monsters = { 12001, 12002, 12003, 12004, 12005, 12006, 12007, 12008 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_44" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 12009, 12010, 12011, 12012 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_45", "ANY_MONSTER_DIE_46" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 12013, 12014, 12015, 12016, 12017, 12018 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_47" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 12019, 12020, 12021, 12022, 12023, 12024 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_48", "ANY_MONSTER_DIE_49" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24(context, evt)
	-- 调用提示id为 20010301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010301) then
		return -1
	end
	
	-- 解锁目标12025
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12025, state = GadgetState.Default }) then
		return -1
	end
	
	-- 解锁目标12026
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12026, state = GadgetState.Default }) then
		return -1
	end
	
	-- 解锁目标12027
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12027, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	--判断死亡怪物的configid是否为 12001
	if evt.param1 ~= 12001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	--判断死亡怪物的configid是否为 12009
	if evt.param1 ~= 12009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001020, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46(context, evt)
	--判断死亡怪物的configid是否为 12010
	if evt.param1 ~= 12010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001022, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47(context, evt)
	--判断死亡怪物的configid是否为 12013
	if evt.param1 ~= 12013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48(context, evt)
	--判断死亡怪物的configid是否为 12019
	if evt.param1 ~= 12019 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001020, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	--判断死亡怪物的configid是否为 12020
	if evt.param1 ~= 12020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001022, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

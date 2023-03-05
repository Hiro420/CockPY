--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553, monster_id = 21010501, pos = { x = 2456.3, y = 266.4, z = -1517.6 }, rot = { x = 0.0, y = 15.2, z = 0.0 }, level = 13, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 554, monster_id = 21010501, pos = { x = 2464.3, y = 264.9, z = -1508.3 }, rot = { x = 0.0, y = 80.1, z = 0.0 }, level = 13, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 555, monster_id = 21010201, pos = { x = 2457.1, y = 264.6, z = -1506.0 }, rot = { x = 0.0, y = 295.6, z = 0.0 }, level = 13, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 1201, monster_id = 21010301, pos = { x = 2452.9, y = 264.8, z = -1508.1 }, rot = { x = 0.0, y = 305.9, z = 0.0 }, level = 13, drop_tag = "丘丘人" },
	{ config_id = 1758, monster_id = 21010501, pos = { x = 2456.6, y = 266.6, z = -1518.7 }, rot = { x = 0.0, y = 15.2, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 1759, monster_id = 21010101, pos = { x = 2471.0, y = 264.7, z = -1514.1 }, rot = { x = 0.0, y = 80.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 1760, monster_id = 21020201, pos = { x = 2457.4, y = 264.6, z = -1507.0 }, rot = { x = 0.0, y = 163.3, z = 0.0 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 1761, monster_id = 21010301, pos = { x = 2453.2, y = 264.9, z = -1509.2 }, rot = { x = 0.0, y = 305.9, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 1762, monster_id = 21010501, pos = { x = 2464.4, y = 264.9, z = -1508.6 }, rot = { x = 0.0, y = 15.2, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3813, gadget_id = 70310001, pos = { x = 2466.7, y = 264.9, z = -1506.3 }, rot = { x = 0.0, y = 35.7, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 3814, gadget_id = 70211012, pos = { x = 2466.0, y = 264.9, z = -1508.1 }, rot = { x = 0.0, y = 91.5, z = 356.8 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 3815, gadget_id = 70220014, pos = { x = 2457.2, y = 264.9, z = -1503.4 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 10 },
	{ config_id = 3816, gadget_id = 70220014, pos = { x = 2458.1, y = 267.1, z = -1520.8 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 10 },
	{ config_id = 3817, gadget_id = 70220013, pos = { x = 2467.2, y = 264.7, z = -1510.2 }, rot = { x = 0.0, y = 181.6, z = 0.0 }, level = 10 },
	{ config_id = 3818, gadget_id = 70220013, pos = { x = 2460.0, y = 264.8, z = -1504.0 }, rot = { x = 0.0, y = 222.3, z = 0.0 }, level = 10 },
	{ config_id = 3819, gadget_id = 70220005, pos = { x = 2459.8, y = 264.6, z = -1505.6 }, rot = { x = 0.0, y = 270.6, z = 0.0 }, level = 10 },
	{ config_id = 3820, gadget_id = 70310001, pos = { x = 2452.2, y = 266.4, z = -1515.9 }, rot = { x = 4.5, y = 35.7, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 3822, gadget_id = 70310004, pos = { x = 2460.8, y = 264.6, z = -1509.3 }, rot = { x = 0.0, y = 5.8, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 4357, gadget_id = 70310001, pos = { x = 2466.6, y = 264.9, z = -1506.3 }, rot = { x = 0.0, y = 35.7, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 4358, gadget_id = 70220014, pos = { x = 2457.2, y = 264.9, z = -1503.4 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 10 },
	{ config_id = 4359, gadget_id = 70220014, pos = { x = 2458.0, y = 267.1, z = -1520.8 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 10 },
	{ config_id = 4360, gadget_id = 70220013, pos = { x = 2467.2, y = 264.7, z = -1510.2 }, rot = { x = 0.0, y = 181.6, z = 0.0 }, level = 10 },
	{ config_id = 4361, gadget_id = 70220013, pos = { x = 2460.0, y = 264.8, z = -1504.0 }, rot = { x = 0.0, y = 222.3, z = 0.0 }, level = 10 },
	{ config_id = 4362, gadget_id = 70220005, pos = { x = 2459.7, y = 264.7, z = -1505.7 }, rot = { x = 0.0, y = 270.6, z = 0.0 }, level = 10 },
	{ config_id = 4363, gadget_id = 70310001, pos = { x = 2452.2, y = 266.4, z = -1515.9 }, rot = { x = 4.5, y = 35.7, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 4364, gadget_id = 70310004, pos = { x = 2460.7, y = 264.6, z = -1509.3 }, rot = { x = 0.0, y = 5.8, z = 0.0 }, level = 10, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_476", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_476", action = "action_EVENT_ANY_MONSTER_DIE_476" },
	{ name = "ANY_MONSTER_DIE_591", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_591", action = "action_EVENT_ANY_MONSTER_DIE_591", trigger_count = 0 },
	{ name = "MONSTER_BATTLE_592", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_592", trigger_count = 0 },
	{ name = "QUEST_FINISH_593", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_593", action = "action_EVENT_QUEST_FINISH_593", trigger_count = 0 },
	{ name = "QUEST_FINISH_594", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_594", action = "action_EVENT_QUEST_FINISH_594", trigger_count = 0 }
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
		monsters = { 553, 554, 555, 1201 },
		gadgets = { 3813, 3814, 3815, 3816, 3817, 3818, 3819, 3820, 3822 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_476" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1758, 1760, 1761, 1762 },
		gadgets = { 4357, 4358, 4359, 4360, 4361, 4362, 4363, 4364 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_591", "MONSTER_BATTLE_592", "QUEST_FINISH_593", "QUEST_FINISH_594" },
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
function condition_EVENT_ANY_MONSTER_DIE_476(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_476(context, evt)
	-- 解锁目标3814
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3814, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_591(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_591(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330031231") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_MONSTER_BATTLE_592(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330031232") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_593(context, evt)
	--检查ID为2001007的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001007 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_593(context, evt)
	-- 通知groupid为133003123中,configid为：1758的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1758, 133003123) then
	  return -1
	end
	
	-- 通知groupid为133003123中,configid为：1760的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1760, 133003123) then
	  return -1
	end
	
	-- 通知groupid为133003123中,configid为：1761的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1761, 133003123) then
	  return -1
	end
	
	-- 通知groupid为133003123中,configid为：1762的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1762, 133003123) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1759, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_594(context, evt)
	--检查ID为2001010的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001010 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_594(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1759, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

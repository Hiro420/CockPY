--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65, monster_id = 21020101, pos = { x = 2776.2, y = 206.8, z = 104.8 }, rot = { x = 0.0, y = 14.8, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 130, monster_id = 21010401, pos = { x = 2771.7, y = 210.5, z = 91.4 }, rot = { x = 0.0, y = 158.9, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 131, monster_id = 21010401, pos = { x = 2766.1, y = 211.8, z = 104.4 }, rot = { x = 0.0, y = 164.9, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", pose_id = 402 },
	{ config_id = 137, monster_id = 21010401, pos = { x = 2776.4, y = 206.9, z = 110.0 }, rot = { x = 0.0, y = 161.6, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 447, monster_id = 21020101, pos = { x = 2776.1, y = 206.8, z = 104.8 }, rot = { x = 0.0, y = 14.8, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 448, monster_id = 21010401, pos = { x = 2771.7, y = 210.5, z = 91.4 }, rot = { x = 0.0, y = 158.9, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 449, monster_id = 21010401, pos = { x = 2766.1, y = 211.8, z = 104.3 }, rot = { x = 0.0, y = 164.9, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", pose_id = 9002 },
	{ config_id = 450, monster_id = 21010401, pos = { x = 2776.3, y = 206.9, z = 110.0 }, rot = { x = 0.0, y = 161.6, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 451, monster_id = 21010101, pos = { x = 2767.6, y = 207.1, z = 73.9 }, rot = { x = 0.0, y = 212.3, z = 0.0 }, level = 22, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70220013, pos = { x = 2767.2, y = 206.8, z = 113.7 }, rot = { x = 0.0, y = 82.8, z = 0.0 }, level = 23 },
	{ config_id = 309, gadget_id = 70220013, pos = { x = 2770.6, y = 207.2, z = 100.9 }, rot = { x = 0.0, y = 87.0, z = 0.0 }, level = 23 },
	{ config_id = 310, gadget_id = 70220013, pos = { x = 2784.9, y = 207.0, z = 89.8 }, rot = { x = 0.0, y = 312.1, z = 0.0 }, level = 23 },
	{ config_id = 311, gadget_id = 70220013, pos = { x = 2785.9, y = 207.1, z = 91.5 }, rot = { x = 0.0, y = 139.7, z = 0.0 }, level = 23 },
	{ config_id = 312, gadget_id = 70310004, pos = { x = 2782.5, y = 207.0, z = 97.5 }, rot = { x = 0.0, y = 102.0, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 989, gadget_id = 70220013, pos = { x = 2767.2, y = 206.8, z = 113.6 }, rot = { x = 0.0, y = 82.8, z = 0.0 }, level = 23 },
	{ config_id = 990, gadget_id = 70220013, pos = { x = 2770.5, y = 207.2, z = 100.8 }, rot = { x = 0.0, y = 87.0, z = 0.0 }, level = 23 },
	{ config_id = 991, gadget_id = 70220013, pos = { x = 2784.8, y = 207.0, z = 89.6 }, rot = { x = 0.0, y = 312.1, z = 0.0 }, level = 23 },
	{ config_id = 992, gadget_id = 70220013, pos = { x = 2785.9, y = 207.1, z = 91.4 }, rot = { x = 0.0, y = 139.7, z = 0.0 }, level = 23 },
	{ config_id = 993, gadget_id = 70310004, pos = { x = 2782.5, y = 207.1, z = 97.4 }, rot = { x = 0.0, y = 102.0, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 265, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2780.7, y = 207.0, z = 98.0 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_76", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76", action = "action_EVENT_ANY_MONSTER_DIE_76", tlog_tag = "风龙_32_大营��?1_成功" },
	{ name = "ENTER_REGION_265", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265", action = "", tlog_tag = "风龙_32_大营��?1_触发" },
	{ name = "ANY_MONSTER_DIE_329", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_329", action = "action_EVENT_ANY_MONSTER_DIE_329", trigger_count = 0 },
	{ name = "QUEST_FINISH_330", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_330", action = "action_EVENT_QUEST_FINISH_330", trigger_count = 0 },
	{ name = "QUEST_FINISH_331", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_331", action = "action_EVENT_QUEST_FINISH_331", trigger_count = 0 },
	{ name = "MONSTER_BATTLE_332", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_332", trigger_count = 0 }
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
		monsters = { 65, 130, 131, 137 },
		gadgets = { 308, 309, 310, 311, 312 },
		regions = { 265 },
		triggers = { "ANY_MONSTER_DIE_76", "ENTER_REGION_265" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 447, 448, 449, 450 },
		gadgets = { 989, 990, 991, 992, 993 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_329", "QUEST_FINISH_330", "QUEST_FINISH_331", "MONSTER_BATTLE_332" },
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
function condition_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 改变指定group组133007178中， configid为470的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007178, 470, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_265(context, evt)
	if evt.param1 ~= 265 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_329(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_329(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330070321") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_330(context, evt)
	--检查ID为2001507的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001507 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_330(context, evt)
	-- 通知groupid为133007032中,configid为：448的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 448, 133007032) then
	  return -1
	end
	
	-- 通知groupid为133007032中,configid为：449的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 449, 133007032) then
	  return -1
	end
	
	-- 通知groupid为133007032中,configid为：450的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 450, 133007032) then
	  return -1
	end
	
	-- 通知groupid为133007032中,configid为：447的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 447, 133007032) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 451, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_331(context, evt)
	--检查ID为2001510的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001510 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_331(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 451, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_MONSTER_BATTLE_332(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330070322") then
	  return -1
	end
	
	return 0
end

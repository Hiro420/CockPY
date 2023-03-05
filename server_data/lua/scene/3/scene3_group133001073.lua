--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277, monster_id = 21010101, pos = { x = 1955.9, y = 196.8, z = -1171.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 278, monster_id = 21010101, pos = { x = 1958.8, y = 197.0, z = -1171.9 }, rot = { x = 0.0, y = 198.2, z = 0.0 }, level = 4, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 279, monster_id = 21010101, pos = { x = 1950.4, y = 196.9, z = -1162.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 443, monster_id = 21010101, pos = { x = 1955.7, y = 196.8, z = -1169.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 713, monster_id = 21010401, pos = { x = 1953.4, y = 196.2, z = -1175.1 }, rot = { x = 0.0, y = 217.9, z = 0.0 }, level = 4, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 714, monster_id = 21010401, pos = { x = 1950.2, y = 196.9, z = -1162.8 }, rot = { x = 0.0, y = 357.3, z = 0.0 }, level = 4, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 715, monster_id = 21010201, pos = { x = 1957.9, y = 196.8, z = -1169.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1087, monster_id = 21010201, pos = { x = 1955.7, y = 196.8, z = -1168.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1308, monster_id = 21020101, pos = { x = 1958.1, y = 196.8, z = -1171.9 }, rot = { x = 0.0, y = 285.3, z = 0.0 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 1309, monster_id = 21010501, pos = { x = 1956.9, y = 196.8, z = -1163.8 }, rot = { x = 0.0, y = 241.0, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 1310, monster_id = 21010401, pos = { x = 1952.4, y = 196.4, z = -1174.7 }, rot = { x = 0.0, y = 309.8, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1761, gadget_id = 70211012, pos = { x = 1960.8, y = 196.8, z = -1169.7 }, rot = { x = 0.0, y = 292.0, z = 0.0 }, level = 5, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 1762, gadget_id = 70310001, pos = { x = 1959.6, y = 196.3, z = -1177.3 }, rot = { x = 0.0, y = 189.3, z = 0.0 }, level = 5 },
	{ config_id = 1763, gadget_id = 70310001, pos = { x = 1951.7, y = 196.9, z = -1163.1 }, rot = { x = 0.0, y = 189.3, z = 0.0 }, level = 5 },
	{ config_id = 1991, gadget_id = 70220005, pos = { x = 1955.3, y = 196.5, z = -1175.0 }, rot = { x = 0.0, y = 252.2, z = 0.0 }, level = 5 },
	{ config_id = 1992, gadget_id = 70220005, pos = { x = 1959.2, y = 196.4, z = -1176.1 }, rot = { x = 0.0, y = 315.7, z = 0.0 }, level = 5 },
	{ config_id = 2234, gadget_id = 70220005, pos = { x = 1951.3, y = 197.0, z = -1164.6 }, rot = { x = 0.0, y = 252.2, z = 0.0 }, level = 5 },
	{ config_id = 2235, gadget_id = 70220005, pos = { x = 1950.2, y = 197.0, z = -1164.1 }, rot = { x = 0.0, y = 252.2, z = 0.0 }, level = 5 },
	{ config_id = 2273, gadget_id = 70220005, pos = { x = 1961.0, y = 196.5, z = -1174.6 }, rot = { x = 0.0, y = 252.2, z = 0.0 }, level = 5 },
	{ config_id = 3228, gadget_id = 70220005, pos = { x = 1954.7, y = 196.5, z = -1175.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 3229, gadget_id = 70220005, pos = { x = 1958.5, y = 196.4, z = -1176.0 }, rot = { x = 0.0, y = 126.0, z = 0.0 }, level = 5 },
	{ config_id = 3230, gadget_id = 70220005, pos = { x = 1961.4, y = 196.6, z = -1174.1 }, rot = { x = 0.0, y = 62.5, z = 0.0 }, level = 5 },
	{ config_id = 3231, gadget_id = 70220005, pos = { x = 1950.9, y = 197.0, z = -1165.2 }, rot = { x = 0.0, y = 31.5, z = 0.0 }, level = 5 },
	{ config_id = 3232, gadget_id = 70220005, pos = { x = 1949.8, y = 197.1, z = -1164.9 }, rot = { x = 0.0, y = 169.1, z = 0.0 }, level = 5 },
	{ config_id = 3233, gadget_id = 70310001, pos = { x = 1951.6, y = 197.2, z = -1163.3 }, rot = { x = 0.0, y = 359.9, z = 0.0 }, level = 5 },
	{ config_id = 3234, gadget_id = 70310001, pos = { x = 1960.1, y = 196.3, z = -1177.4 }, rot = { x = 0.0, y = 129.5, z = 0.0 }, level = 5 },
	{ config_id = 3235, gadget_id = 70220014, pos = { x = 1960.5, y = 196.8, z = -1164.4 }, rot = { x = 0.0, y = 92.3, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_81", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81", action = "action_EVENT_ANY_MONSTER_DIE_81", trigger_count = 0, tlog_tag = "小平原_营地_g73_结束" },
	{ name = "MONSTER_BATTLE_461", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_461", action = "action_EVENT_MONSTER_BATTLE_461", trigger_count = 0 },
	{ name = "MONSTER_BATTLE_462", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_462", action = "action_EVENT_MONSTER_BATTLE_462" },
	{ name = "MONSTER_BATTLE_463", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_463", action = "action_EVENT_MONSTER_BATTLE_463" },
	{ name = "ANY_MONSTER_DIE_464", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_464", action = "action_EVENT_ANY_MONSTER_DIE_464", trigger_count = 0 },
	{ name = "QUEST_FINISH_465", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_465", action = "action_EVENT_QUEST_FINISH_465", trigger_count = 0 },
	{ name = "QUEST_FINISH_486", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_486", action = "action_EVENT_QUEST_FINISH_486", trigger_count = 0 },
	{ name = "QUEST_FINISH_487", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_487", action = "action_EVENT_QUEST_FINISH_487", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "allow_spawn_mon", value = 0, no_refresh = false }
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
		-- description = suite_2,
		monsters = { 278, 443, 713, 714 },
		gadgets = { 1761, 1762, 1763, 1991, 1992, 2234, 2235, 2273 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_81" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_3,
		monsters = { 1308, 1309, 1310 },
		gadgets = { 3228, 3229, 3230, 3231, 3232, 3233, 3234, 3235 },
		regions = { },
		triggers = { "MONSTER_BATTLE_461", "MONSTER_BATTLE_462", "MONSTER_BATTLE_463", "ANY_MONSTER_DIE_464", "QUEST_FINISH_465", "QUEST_FINISH_486", "QUEST_FINISH_487" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_4,
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
function condition_EVENT_ANY_MONSTER_DIE_81(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81(context, evt)
	-- 将configid为 1761 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1761, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_461(context, evt)
	if 1308 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_461(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330010732") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_462(context, evt)
	if 1309 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_462(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330010732") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_463(context, evt)
	if 1310 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_463(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330010732") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_464(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_464(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330010731") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_465(context, evt)
	--检查ID为2000907的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2000907 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_465(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279, delay_time = 0 }) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：1308的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1308, 133001073) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：1309的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1309, 133001073) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：1310的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1310, 133001073) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：279的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 279, 133001073) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_486(context, evt)
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
function action_EVENT_QUEST_FINISH_486(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279, delay_time = 0 }) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：1308的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1308, 133001073) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：1309的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1309, 133001073) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：1310的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1310, 133001073) then
	  return -1
	end
	
	-- 通知groupid为133001073中,configid为：279的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 279, 133001073) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_487(context, evt)
	--检查ID为2000910的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2000910 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_487(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- Trigger变量
local defs = {
	gadget_id_1 = 42
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 21010201, pos = { x = 186.1, y = 57.0, z = 386.4 }, rot = { x = 0.0, y = 31.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 23, monster_id = 21010201, pos = { x = 197.0, y = 57.0, z = 386.4 }, rot = { x = 0.0, y = 323.6, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 42, monster_id = 21020201, pos = { x = 191.7, y = 57.0, z = 389.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, disableWander = true },
	{ config_id = 61, monster_id = 21010701, pos = { x = 181.7, y = 57.0, z = 378.6 }, rot = { x = 0.0, y = 87.2, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 68, monster_id = 21010501, pos = { x = 183.0, y = 57.0, z = 383.4 }, rot = { x = 0.0, y = 36.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 69, monster_id = 21010501, pos = { x = 183.4, y = 57.0, z = 388.6 }, rot = { x = 0.0, y = 152.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 70, monster_id = 21010501, pos = { x = 182.9, y = 57.0, z = 381.2 }, rot = { x = 0.0, y = 33.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 91, monster_id = 20011201, pos = { x = 179.3, y = 57.0, z = 370.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 92, monster_id = 20011201, pos = { x = 204.5, y = 57.0, z = 370.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 93, monster_id = 20011201, pos = { x = 204.4, y = 57.0, z = 379.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 94, monster_id = 20011201, pos = { x = 179.2, y = 57.0, z = 379.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54, gadget_id = 70211011, pos = { x = 191.5, y = 57.1, z = 382.6 }, rot = { x = 0.0, y = 180.8, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true },
	{ config_id = 83, gadget_id = 70220005, pos = { x = 181.7, y = 57.0, z = 382.1 }, rot = { x = 0.0, y = 7.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "DUNGEON_SETTLE_9", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_9", action = "action_EVENT_DUNGEON_SETTLE_9" },
	{ name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" },
	{ name = "ANY_MONSTER_DIE_53", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53", action = "action_EVENT_ANY_MONSTER_DIE_53", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 22, 23, 42, 61, 68, 69, 70 },
		gadgets = { 83 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_9", "ANY_MONSTER_DIE_12", "ANY_MONSTER_DIE_53" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_9(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_9(context, evt)
	-- 创生gadget 54
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 54 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 92, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 93, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 94, delay_time = 0 }) then
	  return -1
	end
	
	-- 调用提示id为 1019001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1019001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53(context, evt)
	-- 判断角色数量不少于0
	if evt.type == EventType.EVENT_ANY_MONSTER_DIE and evt.param1 == defs.gadget_id_1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220006005, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

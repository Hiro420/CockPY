-- Trigger变量
local defs = {
	gadget_id_1 = 1717
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 429, monster_id = 21020101, pos = { x = 1257.6, y = 258.5, z = -1687.2 }, rot = { x = 0.0, y = 80.1, z = 0.0 }, level = 21, drop_tag = "丘丘暴徒", affix = { 1001, 1002 }, isElite = true, pose_id = 401 },
	{ config_id = 536, monster_id = 22010201, pos = { x = 1274.0, y = 258.5, z = -1692.6 }, rot = { x = 0.0, y = 319.5, z = 0.0 }, level = 21, drop_tag = "深渊法师", disableWander = true },
	{ config_id = 537, monster_id = 21030301, pos = { x = 1271.4, y = 258.6, z = -1676.0 }, rot = { x = 0.0, y = 196.6, z = 0.0 }, level = 21, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1717, gadget_id = 70900007, pos = { x = 1267.0, y = 259.4, z = -1688.5 }, rot = { x = 0.0, y = 79.8, z = 0.0 }, level = 15, state = GadgetState.GearStop, persistent = true },
	{ config_id = 1780, gadget_id = 70211111, pos = { x = 1366.0, y = 233.7, z = -1589.3 }, rot = { x = 0.0, y = 204.9, z = 0.0 }, level = 15, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 1793, gadget_id = 70211001, pos = { x = 1252.7, y = 261.9, z = -1647.3 }, rot = { x = 0.0, y = 175.9, z = 0.0 }, level = 15, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 3038, gadget_id = 70211022, pos = { x = 1260.9, y = 258.6, z = -1683.2 }, rot = { x = 0.0, y = 268.9, z = 0.0 }, level = 15, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 180, shape = RegionShape.SPHERE, radius = 19.1, pos = { x = 1269.7, y = 260.6, z = -1686.4 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_93", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93", action = "action_EVENT_GADGET_STATE_CHANGE_93", tlog_tag = "解除黑日族封印" },
	{ name = "ANY_MONSTER_DIE_100", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100", action = "action_EVENT_ANY_MONSTER_DIE_100" },
	{ name = "ENTER_REGION_180", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180", action = "action_EVENT_ENTER_REGION_180" },
	{ name = "TIMER_EVENT_199", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_199", action = "action_EVENT_TIMER_EVENT_199" }
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
	rand_suite = true
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
		monsters = { 429, 536, 537 },
		gadgets = { 1717, 1793, 3038 },
		regions = { 180 },
		triggers = { "GADGET_STATE_CHANGE_93", "ANY_MONSTER_DIE_100", "ENTER_REGION_180", "TIMER_EVENT_199" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93(context, evt)
	-- 延迟2秒后,向groupId为：133001090的对象,请求一次调用,并将string参数："KillPZ1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001090, "KillPZ1", 2) then
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为9 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 9, 0) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 将configid为 1717 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1717, GadgetState.Default) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（1267，260，-1689），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1267, y=260, z=-1689}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1 }) then
					return -1
				end 
	
	-- 将configid为 3038 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3038, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180(context, evt)
	if evt.param1 ~= 180 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180(context, evt)
	-- 通知groupid为133001090中,configid为：536的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 536, 133001090) then
	  return -1
	end
	
	-- 通知groupid为133001090中,configid为：537的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 537, 133001090) then
	  return -1
	end
	
	-- 通知groupid为133001090中,configid为：429的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 429, 133001090) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_199(context, evt)
	if "KillPZ1" ~= evt.source_name then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_199(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001088, monsters = {}, gadgets = {1776} }) then
			return -1
		end
	
	return 0
end

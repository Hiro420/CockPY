--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9, monster_id = 24010101, pos = { x = 343.3, y = -18.4, z = 317.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 22, monster_id = 24010101, pos = { x = 342.6, y = -19.3, z = 330.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1001 }, isElite = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8001, gadget_id = 70211021, pos = { x = 342.6, y = -19.3, z = 335.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, chest_drop_id = 18000500, drop_count = 1, isOneoff = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_11", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "22", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_11", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_11" },
	{ name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" },
	{ name = "DUNGEON_SETTLE_8002", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_8002", action = "action_EVENT_DUNGEON_SETTLE_8002" }
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
		monsters = { 9 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_11", "ANY_MONSTER_DIE_12", "DUNGEON_SETTLE_8002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 22 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_11", "ANY_MONSTER_DIE_12", "DUNGEON_SETTLE_8002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_11(context, evt)
	--[[判断指定configid的怪物的血量小于%75时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 75 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_11(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220016006, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组220016003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016003, 3001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组220016003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016003, 3002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 通知groupid为220016006中,configid为：18的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 18, 220016006) then
	  return -1
	end
	
	-- 通知groupid为220016006中,configid为：19的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 19, 220016006) then
	  return -1
	end
	
	-- 通知groupid为220016006中,configid为：20的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 20, 220016006) then
	  return -1
	end
	
	-- 通知groupid为220016006中,configid为：21的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 21, 220016006) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	--判断死亡怪物的configid是否为 22
	if evt.param1 ~= 22 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220016006, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_8002(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_8002(context, evt)
	-- 创生gadget 8001
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8001 }) then
		return -1
	end
	
	return 0
end

--================================================================
--
-- 配置
--
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 20103001, level = 10, pos = { x = 705, y = 64, z = 659 }, rot = { x = 0, y = 0, z = 0 } },
	{ config_id = 2, monster_id = 20103001, level = 10, pos = { x = 703, y = 64, z = 659 }, rot = { x = 0, y = 0, z = 0 } }
}

-- NPC
npcs = {
	{ config_id = 1, npc_id = 1, pos = { x = 674, y = 57, z = 635 }, rot = { x = 0, y = 0, z = 0 } },
	{ config_id = 2, npc_id = 2, pos = { x = 699, y = 57, z = 649 }, rot = { x = 0, y = 0, z = 0 } }
}

-- 地图物件
gadgets = {
	{ config_id = 1, gadget_id = 1, level = 10, pos = { x = 711, y = 64, z = 659 }, rot = { x = 0, y = 0, z = 0 } },
	{ config_id = 2, gadget_id = 2, level = 10, pos = { x = 721, y = 64, z = 659 }, rot = { x = 0, y = 0, z = 0 } },
}

-- 触发器
triggers = {
	{ name = "WAIT_MONSTER_DIE", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_WAIT_MONSTER_DIE", action = "action_WAIT_MONSTER_DIE" },
	{ name = "EVENT_VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "var_MONSTER_NUM", condition = "condition_WAIT_MONSTER_NUM_ZERO", action = "action_WAIT_MONSTER_NUM_ZERO" },
	{ name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION", action = "action_EVENT_ENTER_REGION" },
}

-- 变量
variables = {
	{ name = "var_MONSTER_NUM", value = 1 }
}

--================================================================
--
-- 初始化配置
--
--================================================================

-- 初始化时创建
init_config = {
	monsters = { 1, 2 },
	npcs = { 1, 2 },
	gadgets = { },
	triggers = { "WAIT_MONSTER_DIE", "EVENT_VARIABLE_CHANGE", "ENTER_REGION" }
}

--================================================================
--
-- 触发器
--
--================================================================

function condition_WAIT_MONSTER_DIE(context, evt)
	-- 判断触发死亡事件的怪是不是100001
	if ScriptLib.GetMonsterIdByEntityId(evt.source) == 20103001 then
		return true
	end
	return false
end


function action_WAIT_MONSTER_DIE(context)
	-- var_MONSTER_NUM = var_MONSTER_NUM - 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "var_MONSTER_NUM", -1) then
		return -1
	end
	return 0
end

--------------------------------------------------------

function condition_WAIT_MONSTER_NUM_ZERO(context, evt)
	-- 判断 var_MONSTER_NUM 是不是0
	if ScriptLib.GetGroupVariableValue(context, "var_MONSTER_NUM") == 0 then
		return true
	end
	return false
end

function action_WAIT_MONSTER_NUM_ZERO(context)
	-- 所有新创建的Entity都要保存
	if 0 ~= ScriptLib.CreateGadget(context, 1) then -- (临时)根据配置ID创建宝箱
		return -1
	end
	return 0
end

--------------------------------------------------------

function condition_EVENT_ENTER_REGION(context, evt)
	-- 判断触发死亡事件的区域是不是1
	if ScriptLib.GetGadgetIdByEntityId(evt.source) == 1 then
		return true
	end
	return false
end

function action_EVENT_ENTER_REGION(context)
	-- var_MONSTER_NUM = var_MONSTER_NUM - 1
	if 0 ~= ScriptLib.CreateMonster(context, 2) then
		return -1
	end
	ScriptLib.PrintLog(LogLevel.DEBUG, "CreateMonster succeed")
	return 0
end
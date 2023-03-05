--================================================================
--
-- Variables
--
--================================================================

group = {}

variables = 
{
	-- 这里需要事先声明好所有会用到的变量
	var_MONSTER_NUM = null,
	-- 如果Entity或Trigger会被别的Action或Event用到，也需要事先声明好名称
	trigger_WAIT_MONSTER_DIE = null,
	trigger_WAIT_MONSTER_NUM_ZERO = null,
}

group.create_all_variables = function(context)
	variables.var_MONSTER_NUM = ScriptLib.CreateVariable(context, "int", 3) -- 创建一个初始值为3的int的变量
end

--================================================================
--
-- Entities
--
--================================================================

group.create_all_entities = function(context)
	group.create_all_monsters(context)
	group.create_all_regions(context)
end

group.create_all_monsters = function(context)
	-- initialize all preset monsters
	-- 这里会初始化从编辑器里拖到场景里的怪
	-- 所有新创建的Entity都要保存
	--
	ScriptLib.CreateMonster(context, { id = 100001, level = 10, pos = {x = 0, y = 0, z = 10}, rot = { x = 0, y = 0, z = 0 } })
end


group.create_all_regions = function(context)
	-- initialize all preset regions
	-- 这里会初始化所有从编辑器里拖到场景里的陷阱
end


--================================================================
--
-- Triggers
--
--================================================================

group.create_all_triggers = function(context)
	-- initialize all preset triggers
	-- 这里会初始化从编辑器里拖到场景里的触发器
	-- 所有新创建的Trigger都要保存
	--
	variables.trigger_WAIT_MONSTER_DIE = ScriptLib.CreateGroupTrigger()
end


group.trigger_conditions_WAIT_MONSTER_DIE = function(context)
	-- 判断触发死亡事件的怪是不是100001
	if ScriptLib.GetMonsterID(evt.source) == 100001 then
		return true
	end
	return false
end


group.trigger_actions_WAIT_MONSTER_DIE = function(context)
	-- var_MONSTER_NUM = var_MONSTER_NUM - 1
	ScriptLib.SetVariableValue(var_MONSTER_NUM, ScriptLib.GetVariableValue(var_MONSTER_NUM) - 1)
end


group.trigger_conditions_WAIT_MONSTER_NUM_ZERO = function(context)
	-- 判断 var_MONSTER_NUM 是不是0
	if ScriptLib.GetVariableValue(evt.var_MONSTER_NUM) == 0 then
		return true
	end
	return false
end


group.trigger_actions_WAIT_MONSTER_NUM_ZERO = function(context)
	-- 所有新创建的Entity都要保存
	ScriptLib.CreateChest(context, {id = 10002}) -- (临时)根据ID创建宝箱
end

--================================================================
--
-- Group 初始化(第一次进入玩家的视野)
--
--================================================================
group.init = function(context)
	group.create_all_entities(context)
	group.create_all_triggers(context)
	return 0
end
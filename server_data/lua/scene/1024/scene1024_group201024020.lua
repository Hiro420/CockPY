--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46, monster_id = 22010201, pos = { x = 133.4, y = -92.3, z = -210.9 }, rot = { x = 0.0, y = 324.4, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 47, monster_id = 22010301, pos = { x = 134.1, y = -92.3, z = -189.1 }, rot = { x = 0.0, y = 248.9, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_BATTLE_48", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_48", action = "action_EVENT_MONSTER_BATTLE_48" },
	{ name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		monsters = { 46, 47 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_48", "ANY_MONSTER_DIE_49" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_48(context, evt)
	if 46 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_48(context, evt)
	-- 延迟1秒后,向groupId为：201024019的对象,请求一次调用,并将string参数："First" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201024019, "First", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201024020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 改变指定group组201024010中， configid为107的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024010, 107, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201024010, 107, {7}) then
		return -1
	end
	
	return 0
end

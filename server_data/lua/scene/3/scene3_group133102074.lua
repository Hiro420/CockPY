--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118, monster_id = 21010201, pos = { x = 1305.3, y = 201.2, z = 334.0 }, rot = { x = 354.7, y = 359.8, z = 4.5 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 136, monster_id = 21010301, pos = { x = 1304.4, y = 201.7, z = 337.7 }, rot = { x = 9.8, y = 213.1, z = 354.8 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 137, monster_id = 21010301, pos = { x = 1307.2, y = 201.8, z = 336.2 }, rot = { x = 7.2, y = 248.4, z = 8.5 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 281, gadget_id = 70211012, pos = { x = 1305.2, y = 201.6, z = 335.7 }, rot = { x = 8.0, y = 250.6, z = 9.3 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_166", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_166", action = "action_EVENT_ANY_MONSTER_DIE_166" },
	{ name = "ANY_MONSTER_DIE_261", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_261", action = "action_EVENT_ANY_MONSTER_DIE_261" },
	{ name = "ANY_MONSTER_DIE_262", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262", action = "action_EVENT_ANY_MONSTER_DIE_262" },
	{ name = "ANY_MONSTER_DIE_263", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_263", action = "action_EVENT_ANY_MONSTER_DIE_263" }
}

-- 变量
variables = {
	{ name = "deathcount", value = 0, no_refresh = false }
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
		monsters = { 118, 136, 137 },
		gadgets = { 281 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_166", "ANY_MONSTER_DIE_261", "ANY_MONSTER_DIE_262", "ANY_MONSTER_DIE_263" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 将configid为 281 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_261(context, evt)
	--判断死亡怪物的configid是否为 136
	if evt.param1 ~= 136 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_261(context, evt)
	-- 针对当前group内变量名为 "deathcount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathcount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262(context, evt)
	--判断死亡怪物的configid是否为 118
	if evt.param1 ~= 118 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262(context, evt)
	-- 针对当前group内变量名为 "deathcount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathcount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_263(context, evt)
	--判断死亡怪物的configid是否为 137
	if evt.param1 ~= 137 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_263(context, evt)
	-- 针对当前group内变量名为 "deathcount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathcount", 1) then
	  return -1
	end
	
	return 0
end

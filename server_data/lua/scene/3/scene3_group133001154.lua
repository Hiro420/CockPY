--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 787, monster_id = 20010401, pos = { x = 1474.1, y = 267.2, z = -1749.9 }, rot = { x = 0.0, y = 115.7, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 1137, monster_id = 28020201, pos = { x = 1446.5, y = 272.1, z = -1779.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" }
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
	{ name = "MONSTER_BATTLE_223", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_223", action = "action_EVENT_MONSTER_BATTLE_223" }
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
		monsters = { 787, 1137 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_223" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_223(context, evt)
	if 787 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_223(context, evt)
	-- 在0面前， 5 到 8 范围里，20 角度内，刷{788,789,790}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {788,789,790}, ranges = { 5, 8 }, angle = 20 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

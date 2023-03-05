--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 22010101, pos = { x = -295.9, y = -11.0, z = 34.0 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 10 },
	{ config_id = 2, monster_id = 22010201, pos = { x = -301.5, y = -11.0, z = 25.3 }, rot = { x = 0.0, y = 108.3, z = 0.0 }, level = 10 },
	{ config_id = 3, monster_id = 22010301, pos = { x = -290.5, y = -11.0, z = 24.9 }, rot = { x = 0.0, y = 261.0, z = 0.0 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 283, gadget_id = 70350004, pos = { x = -295.9, y = -11.3, z = 39.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_55", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55", action = "action_EVENT_ANY_MONSTER_DIE_55" }
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
		-- description = ,
		monsters = { 1 },
		gadgets = { 283 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004026) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 将configid为 283 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

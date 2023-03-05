--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 21030101, pos = { x = -213.7, y = -11.0, z = 33.1 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 10 },
	{ config_id = 5, monster_id = 21030201, pos = { x = -224.6, y = -11.0, z = 32.9 }, rot = { x = 0.0, y = 108.3, z = 0.0 }, level = 10 },
	{ config_id = 6, monster_id = 21030301, pos = { x = -218.8, y = -11.0, z = 41.7 }, rot = { x = 0.0, y = 261.0, z = 0.0 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 284, gadget_id = 70350004, pos = { x = -218.5, y = -11.0, z = 46.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 377, gadget_id = 71000004, pos = { x = -227.1, y = -11.0, z = 19.0 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 1 },
	{ config_id = 378, gadget_id = 71000004, pos = { x = -205.5, y = -11.0, z = 29.8 }, rot = { x = 0.0, y = 285.3, z = 0.0 }, level = 1 },
	{ config_id = 379, gadget_id = 71000004, pos = { x = -232.0, y = -11.0, z = 39.1 }, rot = { x = 0.0, y = 87.9, z = 0.0 }, level = 1 },
	{ config_id = 380, gadget_id = 71000004, pos = { x = -212.2, y = -11.0, z = 20.7 }, rot = { x = 0.0, y = 102.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_56", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56", action = "action_EVENT_ANY_MONSTER_DIE_56" }
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
		monsters = { 6 },
		gadgets = { 284, 377, 378, 379 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_56" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004027) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 将configid为 284 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

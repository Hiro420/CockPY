--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8, monster_id = 20010601, pos = { x = 255.1, y = -11.0, z = 104.0 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 10 },
	{ config_id = 9, monster_id = 20010601, pos = { x = 252.1, y = -11.0, z = 103.4 }, rot = { x = 0.0, y = 108.3, z = 0.0 }, level = 10 },
	{ config_id = 10, monster_id = 20010701, pos = { x = 253.1, y = -11.0, z = 106.4 }, rot = { x = 0.0, y = 261.0, z = 0.0 }, level = 10 },
	{ config_id = 11, monster_id = 21010901, pos = { x = 246.5, y = -8.7, z = 104.1 }, rot = { x = 0.0, y = 132.5, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 12, monster_id = 21010501, pos = { x = 263.2, y = -8.7, z = 104.1 }, rot = { x = 0.0, y = 218.5, z = 0.0 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286, gadget_id = 70350004, pos = { x = 255.0, y = -11.2, z = 109.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 287, gadget_id = 70900207, pos = { x = 249.0, y = -11.3, z = 112.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 288, gadget_id = 70900207, pos = { x = 261.1, y = -11.6, z = 112.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 289, gadget_id = 70900208, pos = { x = 251.8, y = -11.2, z = 112.7 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 1 },
	{ config_id = 290, gadget_id = 70900208, pos = { x = 252.6, y = -11.2, z = 111.3 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 1 },
	{ config_id = 291, gadget_id = 70900208, pos = { x = 257.5, y = -11.3, z = 111.4 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 1 },
	{ config_id = 292, gadget_id = 70900208, pos = { x = 258.6, y = -11.2, z = 112.7 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58" }
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
		monsters = { 11, 12 },
		gadgets = { 286, 287, 288, 289, 290, 291, 292 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004029) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 将configid为 286 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31, monster_id = 21010901, pos = { x = 1118.2, y = 204.6, z = 243.9 }, rot = { x = 0.0, y = 119.2, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 32, monster_id = 20011001, pos = { x = 1129.8, y = 200.4, z = 239.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 33, monster_id = 20011001, pos = { x = 1130.5, y = 200.4, z = 244.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 34, monster_id = 20011001, pos = { x = 1133.0, y = 200.4, z = 241.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 445, gadget_id = 70900221, pos = { x = 1125.2, y = 200.4, z = 236.2 }, rot = { x = 0.0, y = 12.0, z = 0.0 }, level = 1 },
	{ config_id = 446, gadget_id = 70900221, pos = { x = 1128.1, y = 200.4, z = 249.9 }, rot = { x = 0.0, y = 281.5, z = 0.0 }, level = 1 },
	{ config_id = 447, gadget_id = 70900221, pos = { x = 1109.9, y = 200.4, z = 238.1 }, rot = { x = 0.0, y = 99.2, z = 0.0 }, level = 1 },
	{ config_id = 448, gadget_id = 70900221, pos = { x = 1111.9, y = 200.1, z = 252.9 }, rot = { x = 0.0, y = 188.3, z = 0.0 }, level = 1 },
	{ config_id = 453, gadget_id = 70900221, pos = { x = 1109.9, y = 201.4, z = 238.1 }, rot = { x = 0.0, y = 7.9, z = 0.0 }, level = 1 },
	{ config_id = 454, gadget_id = 70900221, pos = { x = 1111.9, y = 201.1, z = 252.9 }, rot = { x = 0.0, y = 99.0, z = 0.0 }, level = 1 },
	{ config_id = 455, gadget_id = 70900221, pos = { x = 1128.1, y = 201.4, z = 249.9 }, rot = { x = 0.0, y = 193.2, z = 0.0 }, level = 1 },
	{ config_id = 456, gadget_id = 70900221, pos = { x = 1125.2, y = 201.4, z = 236.2 }, rot = { x = 0.0, y = 283.2, z = 0.0 }, level = 1 },
	{ config_id = 457, gadget_id = 70211001, pos = { x = 1117.9, y = 204.6, z = 246.5 }, rot = { x = 0.0, y = 141.4, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_89", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89", action = "action_EVENT_ANY_MONSTER_DIE_89" }
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
		monsters = { 31, 32, 33, 34 },
		gadgets = { 445, 446, 447, 448, 453, 454, 455, 456, 457 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004050) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89(context, evt)
	-- 将configid为 457 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457, GadgetState.ChestOpened) then
			return -1
		end 
	
	return 0
end

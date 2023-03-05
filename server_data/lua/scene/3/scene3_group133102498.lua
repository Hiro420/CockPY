--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 498001, monster_id = 21010201, pos = { x = 1404.1, y = 200.5, z = 745.4 }, rot = { x = 0.0, y = 321.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 498004, monster_id = 21020301, pos = { x = 1399.8, y = 200.2, z = 746.5 }, rot = { x = 0.0, y = 77.0, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 498005, monster_id = 21011201, pos = { x = 1403.7, y = 200.0, z = 749.7 }, rot = { x = 0.0, y = 310.4, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 498002, gadget_id = 70211012, pos = { x = 1400.6, y = 200.5, z = 752.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 498006, gadget_id = 70310006, pos = { x = 1402.3, y = 200.2, z = 746.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 498009, gadget_id = 70310001, pos = { x = 1404.4, y = 200.0, z = 752.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 498010, gadget_id = 70310001, pos = { x = 1408.0, y = 199.9, z = 751.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_498003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_498003", action = "action_EVENT_ANY_MONSTER_DIE_498003" }
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
		monsters = { 498001, 498004, 498005 },
		gadgets = { 498002, 498006, 498009, 498010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_498003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_498003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_498003(context, evt)
	-- 将configid为 498002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 498002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

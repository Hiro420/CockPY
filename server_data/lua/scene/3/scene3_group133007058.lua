--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103, monster_id = 21011001, pos = { x = 2599.6, y = 229.5, z = 149.8 }, rot = { x = 0.0, y = 81.6, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 104, monster_id = 21011001, pos = { x = 2602.9, y = 229.5, z = 148.8 }, rot = { x = 0.0, y = 308.2, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 105, monster_id = 21010501, pos = { x = 2602.1, y = 229.6, z = 151.7 }, rot = { x = 0.0, y = 194.7, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 208, gadget_id = 70310004, pos = { x = 2601.5, y = 229.5, z = 149.9 }, rot = { x = 0.0, y = 340.6, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 209, gadget_id = 70220013, pos = { x = 2600.6, y = 229.6, z = 154.5 }, rot = { x = 0.0, y = 184.9, z = 0.0 }, level = 23 },
	{ config_id = 210, gadget_id = 70220013, pos = { x = 2598.3, y = 229.6, z = 155.1 }, rot = { x = 0.0, y = 19.8, z = 0.0 }, level = 23 },
	{ config_id = 211, gadget_id = 70220014, pos = { x = 2604.3, y = 229.5, z = 145.9 }, rot = { x = 0.0, y = 52.4, z = 0.0 }, level = 23 },
	{ config_id = 212, gadget_id = 70220014, pos = { x = 2596.2, y = 229.5, z = 149.3 }, rot = { x = 0.0, y = 65.0, z = 0.0 }, level = 23 },
	{ config_id = 231, gadget_id = 70220005, pos = { x = 2597.4, y = 229.6, z = 152.8 }, rot = { x = 0.0, y = 296.9, z = 0.0 }, level = 23 },
	{ config_id = 232, gadget_id = 70220005, pos = { x = 2604.9, y = 229.6, z = 150.3 }, rot = { x = 0.0, y = 60.8, z = 0.0 }, level = 23 },
	{ config_id = 595, gadget_id = 70211012, pos = { x = 2603.1, y = 229.6, z = 153.5 }, rot = { x = 0.0, y = 205.6, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_282", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_282", action = "action_EVENT_ANY_MONSTER_DIE_282" }
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
		monsters = { 103, 104, 105 },
		gadgets = { 208, 209, 210, 211, 212, 231, 232, 595 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_282" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_282(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_282(context, evt)
	-- 将configid为 595 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

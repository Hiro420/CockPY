--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 255001, monster_id = 21010901, pos = { x = 1082.2, y = 300.3, z = 1226.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 255006, monster_id = 21010901, pos = { x = 1076.1, y = 300.1, z = 1224.7 }, rot = { x = 0.0, y = 293.8, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 255007, monster_id = 21030101, pos = { x = 1073.9, y = 300.3, z = 1224.3 }, rot = { x = 0.0, y = 59.9, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 255002, gadget_id = 70211012, pos = { x = 1082.2, y = 300.4, z = 1228.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 255004, gadget_id = 70220013, pos = { x = 1077.7, y = 300.4, z = 1228.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 255005, gadget_id = 70310001, pos = { x = 1080.1, y = 300.1, z = 1227.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_255003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_255003", action = "action_EVENT_ANY_MONSTER_DIE_255003" }
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
		monsters = { 255001, 255006, 255007 },
		gadgets = { 255002, 255004, 255005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_255003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_255003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_255003(context, evt)
	-- 将configid为 255002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

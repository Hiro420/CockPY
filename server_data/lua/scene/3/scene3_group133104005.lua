--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21011201, pos = { x = 664.6, y = 201.9, z = 473.0 }, rot = { x = 23.5, y = 227.0, z = 10.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 5002, monster_id = 21011201, pos = { x = 657.7, y = 201.5, z = 469.6 }, rot = { x = 3.7, y = 168.4, z = 0.2 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 5003, monster_id = 21030401, pos = { x = 655.0, y = 204.7, z = 480.7 }, rot = { x = 3.4, y = 131.8, z = 4.2 }, level = 19, drop_tag = "丘丘萨满" },
	{ config_id = 5004, monster_id = 21020301, pos = { x = 661.5, y = 205.2, z = 485.2 }, rot = { x = 6.4, y = 178.3, z = 347.1 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70211022, pos = { x = 661.8, y = 205.7, z = 491.0 }, rot = { x = 0.0, y = 148.9, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 5006, gadget_id = 70220013, pos = { x = 667.1, y = 205.6, z = 487.5 }, rot = { x = 5.7, y = 244.9, z = 6.3 }, level = 19 },
	{ config_id = 5007, gadget_id = 70220013, pos = { x = 668.7, y = 205.2, z = 485.6 }, rot = { x = 8.3, y = 245.8, z = 15.5 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" }
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
		monsters = { 5001, 5002, 5003, 5004 },
		gadgets = { 5005, 5006, 5007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

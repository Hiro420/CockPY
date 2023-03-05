--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196, monster_id = 21010501, pos = { x = 489.3, y = 215.1, z = 464.6 }, rot = { x = 356.7, y = 233.5, z = 4.6 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 197, monster_id = 21010501, pos = { x = 488.1, y = 215.2, z = 462.0 }, rot = { x = 355.6, y = 333.5, z = 355.2 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 200, monster_id = 21030301, pos = { x = 486.6, y = 215.2, z = 464.3 }, rot = { x = 358.2, y = 126.3, z = 0.9 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 75006, monster_id = 21010301, pos = { x = 498.9, y = 214.0, z = 468.4 }, rot = { x = 358.2, y = 158.2, z = 0.9 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 75007, monster_id = 21010301, pos = { x = 500.2, y = 213.9, z = 455.0 }, rot = { x = 358.2, y = 39.5, z = 0.9 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 75001, gadget_id = 70310006, pos = { x = 487.9, y = 215.2, z = 463.6 }, rot = { x = 358.3, y = 2.6, z = 357.2 }, level = 19 },
	{ config_id = 75002, gadget_id = 70220013, pos = { x = 490.1, y = 215.2, z = 453.5 }, rot = { x = 0.1, y = 2.3, z = 356.4 }, level = 19 },
	{ config_id = 75003, gadget_id = 70220014, pos = { x = 491.3, y = 214.9, z = 462.1 }, rot = { x = 357.1, y = 319.2, z = 356.6 }, level = 19 },
	{ config_id = 75004, gadget_id = 70220014, pos = { x = 490.5, y = 214.9, z = 467.5 }, rot = { x = 351.5, y = 319.4, z = 355.6 }, level = 19 },
	{ config_id = 75005, gadget_id = 70211112, pos = { x = 485.1, y = 215.3, z = 461.7 }, rot = { x = 358.7, y = 68.5, z = 1.5 }, level = 19, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_75008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75008", action = "action_EVENT_ANY_MONSTER_DIE_75008" }
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
		monsters = { 196, 197, 200, 75006, 75007 },
		gadgets = { 75001, 75002, 75003, 75004, 75005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_75008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_75008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133104075) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75008(context, evt)
	-- 将configid为 75005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75005, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

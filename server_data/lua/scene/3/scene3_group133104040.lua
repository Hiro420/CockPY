--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80, monster_id = 21010201, pos = { x = 657.7, y = 200.7, z = 341.8 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 87, monster_id = 21010601, pos = { x = 665.8, y = 201.5, z = 337.4 }, rot = { x = 0.2, y = 287.0, z = 0.2 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 89, monster_id = 21010301, pos = { x = 659.6, y = 201.0, z = 335.0 }, rot = { x = 0.0, y = 53.4, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 91, monster_id = 21030301, pos = { x = 665.7, y = 201.0, z = 341.1 }, rot = { x = 0.0, y = 165.4, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71, gadget_id = 70211012, pos = { x = 662.9, y = 201.1, z = 345.6 }, rot = { x = 0.0, y = 202.2, z = 0.0 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 40001, gadget_id = 70220005, pos = { x = 662.4, y = 201.1, z = 334.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 17 },
	{ config_id = 40002, gadget_id = 70220005, pos = { x = 661.3, y = 201.1, z = 333.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 17 },
	{ config_id = 40003, gadget_id = 70220013, pos = { x = 669.4, y = 201.1, z = 339.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_54", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54", action = "action_EVENT_ANY_MONSTER_DIE_54" }
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
		monsters = { 80, 87, 89, 91 },
		gadgets = { 71, 40001, 40002, 40003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54(context, evt)
	-- 将configid为 71 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

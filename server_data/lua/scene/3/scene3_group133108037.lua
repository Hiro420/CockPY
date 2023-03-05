--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37004, monster_id = 21011201, pos = { x = -142.7, y = 201.2, z = -884.1 }, rot = { x = 0.0, y = 54.2, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 37005, monster_id = 21030401, pos = { x = -143.1, y = 201.1, z = -888.4 }, rot = { x = 0.0, y = 320.9, z = 0.0 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 37008, monster_id = 21020201, pos = { x = -135.6, y = 200.7, z = -911.7 }, rot = { x = 0.0, y = 1.7, z = 0.0 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 37009, monster_id = 21011001, pos = { x = -152.6, y = 202.9, z = -889.7 }, rot = { x = 0.0, y = 65.7, z = 0.0 }, level = 32, drop_tag = "远程丘丘人", pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37002, gadget_id = 70211022, pos = { x = -145.0, y = 201.6, z = -886.1 }, rot = { x = 3.1, y = 49.7, z = 354.4 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 37006, gadget_id = 70310001, pos = { x = -133.7, y = 200.7, z = -914.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 37007, gadget_id = 70300085, pos = { x = -145.3, y = 201.2, z = -886.3 }, rot = { x = 357.9, y = 0.3, z = 353.8 }, level = 32 },
	{ config_id = 37010, gadget_id = 70310001, pos = { x = -115.1, y = 202.1, z = -910.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 37011, gadget_id = 70310001, pos = { x = -147.5, y = 201.5, z = -884.3 }, rot = { x = 358.2, y = 260.2, z = 0.3 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 37012, gadget_id = 70310001, pos = { x = -80.7, y = 201.1, z = -902.5 }, rot = { x = 358.2, y = 260.2, z = 0.3 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 37013, gadget_id = 70310001, pos = { x = -190.6, y = 204.8, z = -1017.4 }, rot = { x = 359.4, y = 198.3, z = 1.7 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 37014, gadget_id = 70310001, pos = { x = -186.5, y = 204.8, z = -1015.6 }, rot = { x = 359.2, y = 207.7, z = 1.6 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_37003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37003", action = "action_EVENT_ANY_MONSTER_DIE_37003" }
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
		monsters = { 37004, 37005, 37008, 37009 },
		gadgets = { 37002, 37006, 37007, 37010, 37011, 37012, 37013, 37014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5, monster_id = 21020101, pos = { x = -2.5, y = 1.0, z = -39.9 }, rot = { x = 0.0, y = 357.4, z = 0.0 }, level = 1, affix = { 1002 }, isElite = true, pose_id = 401 },
	{ config_id = 6, monster_id = 21020201, pos = { x = -2.5, y = 1.0, z = -32.1 }, rot = { x = 0.0, y = 178.2, z = 0.0 }, level = 1, affix = { 1001 }, isElite = true, pose_id = 401 },
	{ config_id = 3001, monster_id = 21010501, pos = { x = -0.9, y = 1.0, z = -24.9 }, rot = { x = 0.0, y = 168.3, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3002, monster_id = 21011001, pos = { x = 12.9, y = 1.0, z = -26.5 }, rot = { x = 0.0, y = 244.1, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 3003, monster_id = 21011001, pos = { x = -1.6, y = 1.0, z = -49.4 }, rot = { x = 0.0, y = 34.6, z = 0.0 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14, gadget_id = 70350005, pos = { x = 4.0, y = 1.0, z = -20.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 22, gadget_id = 70211001, pos = { x = 13.6, y = 12.0, z = -53.5 }, rot = { x = 0.0, y = 358.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 48, gadget_id = 70211022, pos = { x = -2.3, y = 0.9, z = -36.1 }, rot = { x = 0.0, y = 89.0, z = 0.0 }, level = 1, chest_drop_id = 18000300, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST },
	{ config_id = 50, gadget_id = 70220023, pos = { x = -2.3, y = 1.0, z = -39.6 }, rot = { x = 0.0, y = 246.9, z = 0.0 }, level = 1 },
	{ config_id = 51, gadget_id = 70220023, pos = { x = -2.4, y = 1.1, z = -33.7 }, rot = { x = 0.0, y = 180.1, z = 0.0 }, level = 1 },
	{ config_id = 52, gadget_id = 70220004, pos = { x = 15.3, y = 1.0, z = -44.6 }, rot = { x = 0.0, y = 349.3, z = 0.0 }, level = 1 },
	{ config_id = 53, gadget_id = 70220004, pos = { x = 0.4, y = 1.1, z = -46.6 }, rot = { x = 0.0, y = 69.5, z = 0.0 }, level = 1 },
	{ config_id = 54, gadget_id = 70220004, pos = { x = 4.1, y = 1.0, z = -31.5 }, rot = { x = 0.0, y = 80.2, z = 0.0 }, level = 1 },
	{ config_id = 55, gadget_id = 70220004, pos = { x = -9.0, y = 1.0, z = -43.6 }, rot = { x = 0.0, y = 321.6, z = 0.0 }, level = 1 },
	{ config_id = 56, gadget_id = 70220004, pos = { x = -10.8, y = 1.0, z = -29.3 }, rot = { x = 0.0, y = 130.8, z = 0.0 }, level = 1 },
	{ config_id = 57, gadget_id = 70220004, pos = { x = 8.1, y = 1.0, z = -23.8 }, rot = { x = 0.0, y = 279.4, z = 0.0 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350033, pos = { x = 5.0, y = 1.1, z = -40.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		monsters = { 5, 6, 3001, 3002, 3003 },
		gadgets = { 14, 22, 48, 50, 51, 52, 53, 54, 55, 56, 57, 3004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240007003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 48 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
